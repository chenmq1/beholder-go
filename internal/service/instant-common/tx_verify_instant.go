package instantcommon

import (
	"context"
	"fmt"
	"strings"
	"sync"

	ethcommon "github.com/ethereum/go-ethereum/common"
	"github.com/ethereum/go-ethereum/core/types"
	"github.com/jinzhu/gorm"

	modelcommon "github.com/beholder-daemon/internal/model/common"
	"github.com/beholder-daemon/internal/utils"
)

// TxVerifyConfig 交易核验配置（比较两侧与回写值均可变，不硬编码 sender/topic1/0/1）。
type TxVerifyConfig struct {
	ChainID int `json:"chainId"`

	// TxField 交易侧参与比较的字段："from"（默认，tx.sender）/ "to"
	TxField string `json:"txField"`
	// EventField 事件侧参与比较的字段："topic1"（默认，owner）/ "topic2" / "address"
	EventField string `json:"eventField"`

	// MatchStatus 地址相等时回写的 status（默认 0）
	MatchStatus int `json:"matchStatus"`
	// MismatchStatus 地址不等时回写的 status（默认 1）
	MismatchStatus int `json:"mismatchStatus"`

	// OnlyNull true：仅处理 status IS NULL 的行（默认语义，避免重复核验）
	OnlyNull bool `json:"onlyNull"`
	// OnlyStatus 非 nil 且 OnlyNull=false：仅处理指定 status 的行；
	// nil 且 OnlyNull=false：处理全部行
	OnlyStatus *int `json:"onlyStatus"`

	// MaxWorkers 并发 web3 查询 worker 数；<=0 取默认 18
	MaxWorkers int `json:"maxWorkers"`
}

// TxVerifyResult 核验结果统计
type TxVerifyResult struct {
	ChainID    int `json:"chainId"`
	Total      int `json:"total"`
	Matched    int `json:"matched"`
	Mismatched int `json:"mismatched"`
	Failed     int `json:"failed"`
	// Failures 失败明细（截断至 50 条）；失败行不回写 status
	Failures []TxVerifyFailure `json:"failures,omitempty"`
}

// TxVerifyFailure 单行核验失败明细
type TxVerifyFailure struct {
	ID     int64  `json:"id"`
	TxHash string `json:"txHash"`
	Reason string `json:"reason"`
}

// TxVerifyService 交易核验即时服务：从 event_query_temp 取 txHash，
// 逐条 web3 查交易，按配置比较两侧地址并回写行级 status。
type TxVerifyService struct {
	clients map[string]*utils.Web3Client
	db      *gorm.DB
}

// NewTxVerifyService 创建交易核验服务
func NewTxVerifyService(clients map[string]*utils.Web3Client, db *gorm.DB) *TxVerifyService {
	return &TxVerifyService{clients: clients, db: db}
}

// VerifyTransactions 按 cfg 核验临时表中的交易并回写 status。
func (s *TxVerifyService) VerifyTransactions(ctx context.Context, cfg TxVerifyConfig) (*TxVerifyResult, error) {
	chain := chainName(cfg.ChainID)
	if chain == "" {
		return nil, fmt.Errorf("不支持的 chainId: %d", cfg.ChainID)
	}
	client, ok := s.clients[chain]
	if !ok || client == nil {
		return nil, fmt.Errorf("找不到 chainId %d 的客户端", cfg.ChainID)
	}

	// 应用默认值
	if cfg.TxField == "" {
		cfg.TxField = "from"
	}
	if cfg.EventField == "" {
		cfg.EventField = "topic1"
	}
	if cfg.TxField != "from" && cfg.TxField != "to" {
		return nil, fmt.Errorf("txField 取值非法: %q（支持 from/to）", cfg.TxField)
	}
	if cfg.EventField != "topic1" && cfg.EventField != "topic2" && cfg.EventField != "address" {
		return nil, fmt.Errorf("eventField 取值非法: %q（支持 topic1/topic2/address）", cfg.EventField)
	}
	workers := cfg.MaxWorkers
	if workers <= 0 {
		workers = defaultMaxWorkers
	}

	// 加载候选行
	q := s.db.Model(&modelcommon.EventQueryTemp{}).Where("chain_id = ?", cfg.ChainID)
	switch {
	case cfg.OnlyNull:
		q = q.Where("status IS NULL")
	case cfg.OnlyStatus != nil:
		q = q.Where("status = ?", *cfg.OnlyStatus)
	}
	var rows []modelcommon.EventQueryTemp
	if err := q.Order("id ASC").Find(&rows).Error; err != nil {
		return nil, fmt.Errorf("加载临时表候选行失败: %w", err)
	}

	result := &TxVerifyResult{ChainID: cfg.ChainID, Total: len(rows)}
	if len(rows) == 0 {
		return result, nil
	}

	// 同 txHash 在"不去重"快照下可能对应多行，缓存链上查询结果避免重复 RPC。
	// in-flight 极小概率重复请求，换取无锁简洁，可接受。
	var txCache sync.Map // txHash(lower) -> *txCacheEntry

	sem := make(chan struct{}, workers)
	var wg sync.WaitGroup
	var mu sync.Mutex
	addFailure := func(r modelcommon.EventQueryTemp, reason string) {
		mu.Lock()
		defer mu.Unlock()
		result.Failed++
		if len(result.Failures) < 50 {
			result.Failures = append(result.Failures, TxVerifyFailure{
				ID: r.ID, TxHash: r.TxHash, Reason: reason,
			})
		}
	}

	for i := range rows {
		row := rows[i]
		wg.Add(1)
		go func() {
			defer wg.Done()
			select {
			case sem <- struct{}{}:
			case <-ctx.Done():
				addFailure(row, ctx.Err().Error())
				return
			}
			defer func() { <-sem }()

			// 事件侧地址（topic1/2 在表中是完整 32 字节 hex，HexToAddress 自动取后 20 字节）
			eventAddr, ok := eventFieldAddress(row, cfg.EventField)
			if !ok {
				addFailure(row, fmt.Sprintf("事件字段 %s 为空或非法", cfg.EventField))
				return
			}

			hashKey := strings.ToLower(row.TxHash)
			entry := loadOrFetchTx(ctx, &txCache, client, hashKey)
			if entry.err != nil {
				addFailure(row, "查询交易失败: "+entry.err.Error())
				return
			}
			txAddr, err := txFieldAddress(entry.tx, cfg.TxField)
			if err != nil {
				addFailure(row, "解析交易地址失败: "+err.Error())
				return
			}

			newStatus := cfg.MismatchStatus
			if txAddr == eventAddr {
				newStatus = cfg.MatchStatus
			}
			if err := s.db.Model(&modelcommon.EventQueryTemp{}).
				Where("id = ?", row.ID).
				Update("status", newStatus).Error; err != nil {
				addFailure(row, "回写 status 失败: "+err.Error())
				return
			}

			mu.Lock()
			if newStatus == cfg.MatchStatus {
				result.Matched++
			} else {
				result.Mismatched++
			}
			mu.Unlock()
		}()
	}
	wg.Wait()
	return result, nil
}

// txCacheEntry 单条交易的链上查询结果缓存
type txCacheEntry struct {
	tx  *types.Transaction
	err error
}

// loadOrFetchTx 取缓存交易；未命中则 web3 查询并写入缓存
func loadOrFetchTx(ctx context.Context, cache *sync.Map, client *utils.Web3Client, hashKey string) *txCacheEntry {
	if v, ok := cache.Load(hashKey); ok {
		return v.(*txCacheEntry)
	}
	tx, _, err := client.EthClient.TransactionByHash(ctx, ethcommon.HexToHash(hashKey))
	entry := &txCacheEntry{tx: tx, err: err}
	cache.Store(hashKey, entry)
	return entry
}

// eventFieldAddress 取临时表行中配置的事件字段地址（小写 0x + 40 hex）；
// 字段缺失/非法返回 false
func eventFieldAddress(row modelcommon.EventQueryTemp, field string) (string, bool) {
	var v string
	switch field {
	case "topic1":
		v = row.Topic1
	case "topic2":
		v = row.Topic2
	case "address":
		v = row.Address
	default:
		return "", false
	}
	if v == "" {
		return "", false
	}
	// 表中 topic1/2 是 0x + 64 hex（32 字节），address 是 0x + 40 hex；
	// 不能用 IsHexAddress（仅接受 40 hex），HexToAddress 对两种形态均取后 20 字节。
	if len(v) != 66 && len(v) != 42 {
		return "", false
	}
	return strings.ToLower(ethcommon.HexToAddress(v).Hex()), true
}

// txFieldAddress 取交易中配置字段的地址（小写）；from 走链上签名恢复，
// to 直接读取（合约创建交易 to=nil，按零地址处理）
func txFieldAddress(tx *types.Transaction, field string) (string, error) {
	if tx == nil {
		return "", fmt.Errorf("交易为空")
	}
	if field == "to" {
		if tx.To() == nil {
			return strings.ToLower(ethcommon.Address{}.Hex()), nil
		}
		return strings.ToLower(tx.To().Hex()), nil
	}
	signer := types.LatestSignerForChainID(tx.ChainId())
	sender, err := types.Sender(signer, tx)
	if err != nil {
		return "", err
	}
	return strings.ToLower(sender.Hex()), nil
}
