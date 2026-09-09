// Package instantcommon 提供"即时"事件查询服务：与 common.EventCollectService 的
// 批量入库流程不同，本包面向前端实时调用——直接拉取链上事件、按模型主键去重后
// 返回结构化结果，不入库、不写任务记录。
//
// 即时 Approval 查询复用 model/common.ApprovalEvent 模型（主键 spender 去重，
// 与入库流程的去重语义完全一致），差异仅在于：
//   - 来源是前端 HTTP 调用，而非 MQ 消息；
//   - 过滤条件除 topic0 外，追加 tokenAddress（FilterQuery.Addresses，只看该 token
//     发出的 Approval 事件）；
//   - 收集完成后不经 PostProcess 入库，而由 getEvent.BuildEvents 转换为结构体后
//     映射成面向前端的 DTO 直接返回。
package instantcommon

import (
	"context"
	"fmt"

	"github.com/ethereum/go-ethereum"
	ethcommon "github.com/ethereum/go-ethereum/common"

	modelcommon "github.com/beholder-daemon/internal/model/common"
	"github.com/beholder-daemon/internal/service/common/approve"
	"github.com/beholder-daemon/internal/service/getEvent"
	"github.com/beholder-daemon/internal/utils"
)

const (
	// defaultScanBlocks startBlock 缺省时从 endBlock 回溯的区块数
	defaultScanBlocks = 10000
	// defaultSegmentSize 并发分段大小（每段块数），与 EventCollectService 默认一致
	defaultSegmentSize = 999
	// defaultMaxWorkers 最大并发 worker 数，与 EventCollectService 默认一致
	defaultMaxWorkers = 18
)

// ApprovalResult 面向前端的 Approval 事件结果（按 spender 去重后）
type ApprovalResult struct {
	ChainID         int    `json:"chainId"`
	Spender         string `json:"spender"`
	Owner           string `json:"owner"`
	ContractAddress string `json:"contractAddress"`
	TxHash          string `json:"txHash"`
	// ApprovedAmount 为 uint256 十进制字符串（前端无法安全承载 big.Int 数值精度）
	ApprovedAmount string `json:"approvedAmount"`
	RepeatCount    int    `json:"repeatCount"`
}

// ApprovalInstantService 即时 Approval 事件查询服务
type ApprovalInstantService struct {
	clients map[string]*utils.Web3Client
}

// NewApprovalInstantService 创建即时 Approval 事件查询服务
func NewApprovalInstantService(clients map[string]*utils.Web3Client) *ApprovalInstantService {
	return &ApprovalInstantService{clients: clients}
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

// GetApprovals 即时查询指定 token 的 Approval 事件并按 spender 去重，返回结构化结果（不入库）。
//   - chainId：链 ID（1=ethereum, 2=bsc, 3=polygon, 4=arbitrum, 5=base, 6=optimism）
//   - tokenAddress：仅查该 token 合约发出的 Approval 事件（eth_getLogs Addresses 过滤）
//   - startBlock/endBlock：区块范围；endBlock 缺省取最新，startBlock 缺省回溯 defaultScanBlocks
//
// 返回结果、实际扫描的起止区块（已应用缺省值后）、错误。
// 复用 ApprovalEvent 模型按 spender 去重（与入库流程去重语义一致），收集器由
// getEvent.NewCollector 创建，转换由 getEvent.BuildEvents 完成，全程不触碰数据库。
func (s *ApprovalInstantService) GetApprovals(ctx context.Context, chainId int, tokenAddress string, startBlock, endBlock uint64) ([]ApprovalResult, uint64, uint64, error) {
	chain := chainName(chainId)
	if chain == "" {
		return nil, 0, 0, fmt.Errorf("不支持的 chainId: %d（支持 1=ethereum,2=bsc,3=polygon,4=arbitrum,5=base,6=optimism）", chainId)
	}
	client, ok := s.clients[chain]
	if !ok || client == nil {
		return nil, 0, 0, fmt.Errorf("找不到 chainId %d 的客户端", chainId)
	}

	if tokenAddress == "" {
		return nil, 0, 0, fmt.Errorf("tokenAddress 不能为空")
	}
	if !ethcommon.IsHexAddress(tokenAddress) {
		return nil, 0, 0, fmt.Errorf("tokenAddress 不是合法的地址: %s", tokenAddress)
	}
	tokenAddr := ethcommon.HexToAddress(tokenAddress)

	// endBlock 缺省取最新区块
	if endBlock == 0 {
		latest, err := client.EthClient.BlockNumber(ctx)
		if err != nil {
			return nil, 0, 0, fmt.Errorf("获取最新区块号失败: %v", err)
		}
		endBlock = uint64(latest)
	}
	// startBlock 缺省回溯 defaultScanBlocks
	if startBlock == 0 {
		if endBlock > defaultScanBlocks {
			startBlock = endBlock - defaultScanBlocks
		}
	}
	if endBlock < startBlock {
		return nil, 0, 0, fmt.Errorf("endBlock(%d) 小于 startBlock(%d)", endBlock, startBlock)
	}
	actualStart, actualEnd := startBlock, endBlock

	// 过滤条件：该 token 发出的 Approval 事件（Addresses + topic0 双重过滤）
	filter := ethereum.FilterQuery{
		Addresses: []ethcommon.Address{tokenAddr},
		Topics:    [][]ethcommon.Hash{{ethcommon.HexToHash(approve.ApprovalEventTopic)}},
	}

	// 复用 ApprovalEvent 模型按 spender（模型主键，去除 chain_id）去重
	collector, err := getevent.NewCollector(nil, &modelcommon.ApprovalEvent{})
	if err != nil {
		return nil, actualStart, actualEnd, fmt.Errorf("构建收集器失败: %v", err)
	}
	events, counts, err := getevent.BackwardConcurrent(
		ctx,
		client.EthClient,
		int64(startBlock),
		int64(endBlock),
		filter,
		collector,
		getevent.ConcurrentConfig{
			SegmentSize: defaultSegmentSize,
			MaxWorkers:  defaultMaxWorkers,
		},
	)
	if err != nil {
		return nil, actualStart, actualEnd, fmt.Errorf("拉取事件失败: %v", err)
	}

	// 不入库：仅按模型 json tag 转换为结构体实例
	built, err := getevent.BuildEvents(events, counts, chainId, &modelcommon.ApprovalEvent{})
	if err != nil {
		return nil, actualStart, actualEnd, fmt.Errorf("转换事件失败: %v", err)
	}

	results := make([]ApprovalResult, 0, len(built))
	for _, e := range built {
		ae, ok := e.(*modelcommon.ApprovalEvent)
		if !ok {
			continue
		}
		amt := "0"
		if ae.ApprovedAmount != nil {
			amt = ae.ApprovedAmount.String()
		}
		results = append(results, ApprovalResult{
			ChainID:         int(ae.ChainID),
			Spender:         ae.Spender,
			Owner:           ae.Owner,
			ContractAddress: ae.ContractAddress,
			TxHash:          ae.TxHash,
			ApprovedAmount:  amt,
			RepeatCount:     ae.RepeatCount,
		})
	}
	return results, actualStart, actualEnd, nil
}
