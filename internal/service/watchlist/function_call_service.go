// Package watchlist 提供链上函数调用监控服务：
// 从 function_call 表读取监控清单，逐一调用合约方法，比对期望值，
// 回写 last_value / last_block。
package watchlist

import (
	"context"
	"errors"
	"fmt"
	"math/big"
	"strings"

	"github.com/ethereum/go-ethereum"
	"github.com/ethereum/go-ethereum/accounts/abi"
	"github.com/ethereum/go-ethereum/common"
	"github.com/ethereum/go-ethereum/common/hexutil"
	"github.com/jinzhu/gorm"

	modelwl "github.com/beholder-daemon/internal/model/watchlist"
	"github.com/beholder-daemon/internal/utils"
)

// Service 函数调用监控服务
type Service struct {
	db      *gorm.DB
	clients map[string]*utils.Web3Client
}

// NewService 创建函数调用监控服务
func NewService(db *gorm.DB, clients map[string]*utils.Web3Client) *Service {
	return &Service{db: db, clients: clients}
}

// RefreshResult 单条监控调用的结果
type RefreshResult struct {
	ID        int    `json:"id"`
	ChainID   int    `json:"chainId"`
	Address   string `json:"address"`
	Function  string `json:"functionName"`
	LastValue string `json:"lastValue"`
	LastBlock uint64 `json:"lastBlock"`
	OK        bool   `json:"ok"`
	Error     string `json:"error,omitempty"`
	Matched   bool   `json:"matched"` // lastValue == expect（仅 OK 时有意义）
}

// chainName 内部 chainId → clients map 的 key（与 EventCollectService.getClientByChainId 一致）
func chainName(chainId int) string {
	switch chainId {
	case 1:
		return "ethereum"
	case 2:
		return "bsc"
	case 3:
		return "polygon"
	case 4:
		return "arbitrum"
	case 5:
		return "base"
	case 6:
		return "optimism"
	}
	return ""
}

// Refresh 读取 function_call 表全部行，逐条调用合约方法，回写 last_value / last_block。
// 返回每条的刷新结果（即使某条失败也继续下一条，不中断整体）。
//
// 调用流程：
//  1. 取该链最新区块号（作为 last_block 写入）
//  2. 按 function_name + arg_types 构造 ABI method 签名，abi.Pack 编码 calldata
//  3. ethereum.CallContract 发起 eth_call（from=0x0、最新区块）
//  4. 用返回值类型解包出结果，转字符串写入 last_value
//  5. UPDATE function_call SET last_value=?, last_block=? WHERE id=?
func (s *Service) Refresh(ctx context.Context) ([]RefreshResult, error) {
	var rows []modelwl.FunctionCall
	if err := s.db.Find(&rows).Error; err != nil {
		return nil, fmt.Errorf("读取 function_call 失败: %v", err)
	}
	if len(rows) == 0 {
		return nil, errors.New("function_call 表为空")
	}

	results := make([]RefreshResult, 0, len(rows))
	// 按链缓存最新区块号，避免每行都查一次
	blockCache := map[int]uint64{}

	for _, row := range rows {
		res := RefreshResult{ID: row.ID, ChainID: row.ChainID, Address: row.Address, Function: row.FunctionName}

		chain := chainName(row.ChainID)
		client, ok := s.clients[chain]
		if !ok || client == nil {
			res.Error = fmt.Sprintf("找不到 chainId %d 的客户端", row.ChainID)
			results = append(results, res)
			continue
		}

		// 取该链最新区块号（缓存）
		latest, ok := blockCache[row.ChainID]
		if !ok {
			l, err := client.EthClient.BlockNumber(ctx)
			if err != nil {
				res.Error = fmt.Sprintf("获取最新区块号失败: %v", err)
				results = append(results, res)
				continue
			}
			latest = uint64(l)
			blockCache[row.ChainID] = latest
		}
		res.LastBlock = latest

		// 构造 calldata
		calldata, err := packCall(row.FunctionName, row.ArgTypes, row.ArgumentStr)
		if err != nil {
			res.Error = fmt.Sprintf("编码 calldata 失败: %v", err)
			results = append(results, res)
			continue
		}

		// eth_call
		to := common.HexToAddress(row.Address)
		from := common.Address{}
		msg := ethereum.CallMsg{From: from, To: &to, Data: calldata}
		out, err := client.EthClient.CallContract(ctx, msg, new(big.Int).SetUint64(latest))
		if err != nil {
			res.Error = fmt.Sprintf("eth_call 失败: %v", err)
			results = append(results, res)
			continue
		}

		// 解包返回值
		valueStr, err := unpackReturn(row.ReturnValueType, out)
		if err != nil {
			// 解包失败也存原始 hex，避免阻塞后续行
			valueStr = hexutil.Encode(out)
		}
		res.LastValue = valueStr
		res.OK = true
		res.Matched = row.ExpectReturnValue == "" || row.ExpectReturnValue == valueStr

		// 回写 DB
		s.db.Model(&modelwl.FunctionCall{}).
			Where("id = ?", row.ID).
			Updates(map[string]interface{}{
				"last_value": valueStr,
				"last_block": latest,
			})

		results = append(results, res)
	}

	return results, nil
}

// packCall 把函数名 + 参数类型串 + 参数值串 编码为 calldata
//
//	argTypes 形如 "address,uint256"；为空表示无参
//	argumentStr 形如 "0x..,1000000000000000000"；为空表示无参
//	参数按逗号拆分；值里的逗号不支持（保留位扩展：如需多字节数组参数可后续扩展）
func packCall(funcName, argTypes, argumentStr string) ([]byte, error) {
	types := splitNonEmpty(argTypes)
	args := splitNonEmpty(argumentStr)
	if len(types) != len(args) {
		return nil, fmt.Errorf("参数类型数 %d 与参数值数 %d 不一致", len(types), len(args))
	}
	// 构造 method ID：functionName(arg1,arg2,...)
	method := funcName
	if len(types) > 0 {
		method = funcName + "(" + strings.Join(types, ",") + ")"
	} else {
		method = funcName + "()"
	}
	parsed, err := abi.JSON(strings.NewReader(`[{"type":"function","name":"` + funcName + `","inputs":` + buildInputsJSON(types) + `,"outputs":[]}]`))
	if err != nil {
		return nil, fmt.Errorf("ABI 解析失败 (%s): %v", method, err)
	}

	// 把字符串参数值按类型转换为 go-ethereum 类型值
	values := make([]interface{}, len(types))
	for i, t := range types {
		v, err := castArg(t, args[i])
		if err != nil {
			return nil, fmt.Errorf("第 %d 个参数（类型 %s, 值 %s）转换失败: %v", i+1, t, args[i], err)
		}
		values[i] = v
	}

	calldata, err := parsed.Pack(funcName, values...)
	if err != nil {
		return nil, fmt.Errorf("abi.Pack 失败 (%s): %v", method, err)
	}

	return calldata, nil
}

// splitNonEmpty 按逗号拆分，去空格、过滤空串
func splitNonEmpty(s string) []string {
	if s == "" {
		return nil
	}
	parts := strings.Split(s, ",")
	out := make([]string, 0, len(parts))
	for _, p := range parts {
		p = strings.TrimSpace(p)
		if p != "" {
			out = append(out, p)
		}
	}
	return out
}

// buildInputsJSON 生成 ABI inputs JSON：[{"type":"address"},{"type":"uint256"}]
func buildInputsJSON(types []string) string {
	if len(types) == 0 {
		return "[]"
	}
	parts := make([]string, len(types))
	for i, t := range types {
		parts[i] = `{"type":"` + t + `"}`
	}
	return "[" + strings.Join(parts, ",") + "]"
}

// castArg 把字符串值按 ABI 类型转成 go-ethereum 对应 Go 值
func castArg(typ, val string) (interface{}, error) {
	t := strings.TrimSpace(typ)
	v := strings.TrimSpace(val)
	switch {
	case t == "address":
		if !common.IsHexAddress(v) {
			return nil, fmt.Errorf("invalid address: %s", v)
		}
		return common.HexToAddress(v), nil
	case strings.HasPrefix(t, "uint") || strings.HasPrefix(t, "int"):
		// uint8/uint256/int256 等；Go 侧统一用 *big.Int
		b, ok := new(big.Int).SetString(v, 0)
		if !ok {
			return nil, fmt.Errorf("invalid number: %s", v)
		}
		return b, nil
	case t == "bool":
		switch strings.ToLower(v) {
		case "true", "1":
			return true, nil
		case "false", "0":
			return false, nil
		}
		return nil, fmt.Errorf("invalid bool: %s", v)
	case t == "string":
		return v, nil
	case strings.HasPrefix(t, "bytes"):
		// bytesN / bytes；前端用 0x 前缀 hex 串
		return hexutil.Decode(v)
	default:
		return nil, fmt.Errorf("unsupported arg type: %s", t)
	}
}

// unpackReturn 按返回值类型解包 output（eth_call 返回的字节流）成字符串
func unpackReturn(returnType string, output []byte) (string, error) {
	rt := strings.TrimSpace(returnType)
	if rt == "" {
		// 未指定返回类型：返回原始 hex
		return hexutil.Encode(output), nil
	}
	// 构造一个 outputs ABI，调用 Unpack
	types := splitNonEmpty(strings.TrimPrefix(strings.TrimSuffix(rt, ")"), "("))
	if len(types) == 0 {
		return hexutil.Encode(output), nil
	}
	parts := make([]string, len(types))
	for i, t := range types {
		parts[i] = `{"type":"` + t + `"}`
	}
	jsonABI := `[{"type":"function","name":"f","inputs":[],"outputs":[` + strings.Join(parts, ",") + `]}]`
	parsed, err := abi.JSON(strings.NewReader(jsonABI))
	if err != nil {
		return "", fmt.Errorf("返回值 ABI 解析失败 (%s): %v", rt, err)
	}
	out, err := parsed.Unpack("f", output)
	if err != nil {
		return "", fmt.Errorf("Unpack 失败: %v", err)
	}
	// 把 outputs 的 interface{} 序列化成字符串
	if len(out) == 0 {
		return "", nil
	}
	if len(out) == 1 {
		return valueToString(out[0]), nil
	}
	// 多返回值：逗号分隔，与期望值比较时也是逗号分隔
	strs := make([]string, len(out))
	for i, v := range out {
		strs[i] = valueToString(v)
	}
	return strings.Join(strs, ","), nil
}

// valueToString 把 abi 解包后的值转成稳定字符串
func valueToString(v interface{}) string {
	switch x := v.(type) {
	case common.Address:
		return strings.ToLower(x.Hex())
	case *big.Int:
		return x.String()
	case big.Int:
		return x.String()
	case bool:
		if x {
			return "true"
		}
		return "false"
	case string:
		return x
	case []byte:
		return hexutil.Encode(x)
	case [32]byte:
		return hexutil.Encode(x[:])
	default:
		return fmt.Sprintf("%v", v)
	}
}
