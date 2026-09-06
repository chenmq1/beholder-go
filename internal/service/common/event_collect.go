// Package common 提供通用的链上事件收集服务。
//
// 不同事件（Approval、Transfer 等）的收集流程完全一致：
// 解析 MQ 消息 → 定位区块范围（支持增量续扫）→ 分段并发拉取日志 →
// 按事件模型主键去重（同时计数）→ 转换入库（冲突累加 repeat_count）→
// 写入 swap_callback_task 任务记录。
//
// 各事件的差异仅在于配置：任务类型名、callbackKey、事件模型实例、过滤 topics。
// 具体事件包（如 common/approve、common/mint）只需提供 EventCollectConfig 并调用
// NewEventCollectService 即可，不再重复实现 ProcessTask。
package common

import (
	"context"
	"fmt"
	"log"
	"sort"
	"strconv"
	"strings"
	"time"

	"github.com/ethereum/go-ethereum"
	"github.com/ethereum/go-ethereum/common"
	"github.com/jinzhu/gorm"

	"github.com/beholder-daemon/internal/model/uniswapcallback"
	"github.com/beholder-daemon/internal/service/getEvent"
	"github.com/beholder-daemon/internal/utils"
)

const (
	// MaxBlockPerTask 单次任务的最大区块跨度
	MaxBlockPerTask = 200000
	// defaultWorkers 默认并发 worker 数
	defaultWorkers = 18
)

// EventCollectConfig 事件收集任务配置
type EventCollectConfig struct {
	// TaskType 写入 swap_callback_task.type，如 "approveGet" / "mintGet"
	TaskType string
	// CallbackKey 写入 swap_callback_task.callback_key，同时用于增量续扫定位上次位置
	CallbackKey string
	// EventModel 事件模型实例（如 &approve.ApprovalEvent{}），
	// 决定字段来源映射、去重主键与入库表
	EventModel interface{}
	// Topics eth_getLogs 过滤 topics（FilterQuery.Topics），
	// 如 [[eventSig], [addrA, addrB]] 表示 topic0 为 eventSig 且 topic1 为 addrA 或 addrB
	Topics [][]common.Hash
	// SegmentSize 并发分段大小（每段块数），<=0 时使用 999
	SegmentSize int
	// MaxWorkers 最大并发 worker 数，<=0 时使用 defaultWorkers
	MaxWorkers int
	// EventRegistry 可组合事件注册表：事件名 → 定义。
	// 非空时启用组合模式：按 MQ 消息 events 参数（逗号分隔事件名，必填，
	// 缺省/为空 = 不抓取）选取子集做多模型合并抓取——一次 eth_getLogs（topic0
	// OR 列表），按 topic0 分流去重后各自入库；增量续扫 callbackKey =
	// CallbackKey + ":" + 事件名列表（写全时直接用 CallbackKey）。
	// 此时 EventModel/Topics 不参与。
	EventRegistry map[string]EventDef
}

// EventDef 可组合的事件定义
type EventDef struct {
	Topic0 string      // 事件签名哈希（0x 开头）
	Model  interface{} // 事件模型实例（决定去重键与入库表）
}

// EventCollectService 通用链上事件收集服务
type EventCollectService struct {
	db      *gorm.DB
	clients map[string]*utils.Web3Client
	cfg     EventCollectConfig
}

// NewEventCollectService 按配置创建事件收集服务
func NewEventCollectService(db *gorm.DB, clients map[string]*utils.Web3Client, cfg EventCollectConfig) *EventCollectService {
	if cfg.MaxWorkers <= 0 {
		cfg.MaxWorkers = defaultWorkers
	}
	if cfg.SegmentSize <= 0 {
		cfg.SegmentSize = 999
	}
	return &EventCollectService{db: db, clients: clients, cfg: cfg}
}

func (s *EventCollectService) getClientByChainId(chainId int) *utils.Web3Client {
	chainName := ""
	switch chainId {
	case 1:
		chainName = "ethereum"
	case 2:
		chainName = "bsc"
	case 3:
		chainName = "polygon"
	case 4:
		chainName = "arbitrum"
	case 5:
		chainName = "base"
	case 6:
		chainName = "optimism"
	}

	if client, ok := s.clients[chainName]; ok {
		return client
	}
	return nil
}

// fail 记录一条失败的任务记录
func (s *EventCollectService) fail(record *uniswapcallback.SwapCallbackTask, msg string) {
	log.Print(msg)
	record.Status = -1
	record.Message = msg
	if record.StartTime.IsZero() {
		record.StartTime = time.Now()
	}
	s.db.Create(record)
}

// selectEvents 解析 MQ 消息中的 events 参数（逗号分隔事件名），返回排序后的事件名列表。
// events 缺省/为空时不抓取任何事件（报错）；含未注册名时报错；全抓需写全事件名。
func (s *EventCollectService) selectEvents(message map[string]interface{}, registry map[string]EventDef) ([]string, error) {
	requested := ""
	if v, ok := message["events"].(string); ok {
		requested = strings.TrimSpace(v)
	}
	if requested == "" {
		return nil, fmt.Errorf("events 参数未指定")
	}
	nameSet := map[string]bool{}
	for _, part := range strings.Split(requested, ",") {
		name := strings.TrimSpace(part)
		if name == "" {
			continue
		}
		if _, ok := registry[name]; !ok {
			return nil, fmt.Errorf("未注册的事件名: %s", name)
		}
		nameSet[name] = true
	}
	if len(nameSet) == 0 {
		return nil, fmt.Errorf("events 参数未选中任何事件")
	}
	names := make([]string, 0, len(nameSet))
	for name := range nameSet {
		names = append(names, name)
	}
	sort.Strings(names)
	return names, nil
}

// ProcessTask 处理 MQ 消息并执行事件收集
func (s *EventCollectService) ProcessTask(message map[string]interface{}) {
	cfg := s.cfg
	record := &uniswapcallback.SwapCallbackTask{
		Type: cfg.TaskType,
	}

	chainIdStr, ok := message["chainId"].(string)
	if !ok {
		s.fail(record, "缺少 chainId 参数或格式错误")
		return
	}
	chainId, err := strconv.Atoi(chainIdStr)
	if err != nil {
		s.fail(record, fmt.Sprintf("chainId 格式错误: %v", err))
		return
	}
	record.ChainID = int16(chainId)

	// 组合模式：解析 events 参数，确定本次抓取的事件子集与续扫 callbackKey
	callbackKey := cfg.CallbackKey
	var topicModels map[string]interface{}
	if len(cfg.EventRegistry) > 0 {
		names, err := s.selectEvents(message, cfg.EventRegistry)
		if err != nil {
			s.fail(record, err.Error())
			return
		}
		topicModels = make(map[string]interface{}, len(names))
		for _, name := range names {
			topicModels[cfg.EventRegistry[name].Topic0] = cfg.EventRegistry[name].Model
		}
		if len(names) < len(cfg.EventRegistry) {
			callbackKey = cfg.CallbackKey + ":" + strings.Join(names, "+")
		}
	}
	record.CallbackKey = callbackKey

	client := s.getClientByChainId(chainId)
	if client == nil {
		s.fail(record, fmt.Sprintf("找不到 chainId %d 的客户端", chainId))
		return
	}

	blockNumber, err := client.EthClient.BlockNumber(context.Background())
	if err != nil {
		s.fail(record, fmt.Sprintf("获取区块号失败: %v", err))
		return
	}

	endBlock := uint64(blockNumber)
	startBlock := uint64(0)

	if ebStr, ok := message["endBlock"].(string); ok && ebStr != "" {
		if eb, err := strconv.ParseUint(ebStr, 10, 64); err == nil && eb != 0 {
			endBlock = eb
		}
	}
	if sbStr, ok := message["startBlock"].(string); ok && sbStr != "" {
		if sb, err := strconv.ParseUint(sbStr, 10, 64); err == nil {
			startBlock = sb
		}
	}

	// startBlock 为空时，从该链 + callbackKey 的最近成功任务续扫
	if startBlock == 0 {
		var task uniswapcallback.SwapCallbackTask
		if err := s.db.Where("chain_id = ? AND status = 0 AND callback_key = ?", chainId, callbackKey).
			Order("end_block DESC").First(&task).Error; err == nil && task.EndBlock > 0 {
			startBlock = task.EndBlock
		}
	}

	if endBlock > startBlock+uint64(MaxBlockPerTask) {
		endBlock = startBlock + uint64(MaxBlockPerTask)
	}

	record.StartBlock = startBlock
	record.EndBlock = endBlock
	record.Status = 1
	record.StartTime = time.Now()

	if err := s.db.Create(record).Error; err != nil {
		log.Printf("创建任务记录失败: %v", err)
		return
	}

	log.Printf("处理%s任务: chainId=%d, startBlock=%d, endBlock=%d", cfg.TaskType, chainId, startBlock, endBlock)

	filter := ethereum.FilterQuery{Topics: cfg.Topics}
	if topicModels != nil {
		// 组合模式：topic0 OR 列表 = 所选事件的签名
		hashes := make([]common.Hash, 0, len(topicModels))
		for topicHex := range topicModels {
			hashes = append(hashes, common.HexToHash(topicHex))
		}
		filter.Topics = [][]common.Hash{hashes}
	}

	eventsLogged := 0
	eventsInserted := 0

	if topicModels != nil {
		// 多模型合并抓取：一次 eth_getLogs，按 topic0 分流去重，各自入库
		mc, err := getevent.NewMultiCollector(topicModels)
		if err != nil {
			log.Printf("构建多模型收集器失败: %v", err)
			record.Status = -1
			record.EndTime = time.Now()
			record.Message = fmt.Sprintf("构建多模型收集器失败: %v", err)
			s.db.Save(record)
			return
		}
		if _, _, err := getevent.BackwardConcurrent(
			context.Background(),
			client.EthClient,
			int64(startBlock),
			int64(endBlock),
			filter,
			mc,
			getevent.ConcurrentConfig{
				SegmentSize: cfg.SegmentSize,
				MaxWorkers:  cfg.MaxWorkers,
			},
		); err != nil {
			log.Printf("部分区块段处理失败: %v", err)
		}
		for _, r := range mc.Results() {
			inserted, err := getevent.PostProcess(s.db, r.Events, r.Counts, chainId, r.Model)
			if err != nil {
				log.Printf("事件入库失败: %v", err)
			}
			eventsLogged += len(r.Events)
			eventsInserted += inserted
		}
	} else {
		// 单模型收集：以模型主键（去除 chain_id）为键去重，value 为未处理的原始事件
		collector, err := getevent.NewCollector(nil, cfg.EventModel)
		if err != nil {
			log.Printf("构建收集器失败: %v", err)
			record.Status = -1
			record.EndTime = time.Now()
			record.Message = fmt.Sprintf("构建收集器失败: %v", err)
			s.db.Save(record)
			return
		}
		events, counts, err := getevent.BackwardConcurrent(
			context.Background(),
			client.EthClient,
			int64(startBlock),
			int64(endBlock),
			filter,
			collector,
			getevent.ConcurrentConfig{
				SegmentSize: cfg.SegmentSize,
				MaxWorkers:  cfg.MaxWorkers,
			},
		)
		if err != nil {
			log.Printf("部分区块段处理失败: %v", err)
		}
		eventsLogged = len(events)
		inserted, err := getevent.PostProcess(s.db, events, counts, chainId, cfg.EventModel)
		if err != nil {
			log.Printf("事件入库失败: %v", err)
		}
		eventsInserted = inserted
	}

	log.Printf("total %s events: %d", cfg.TaskType, eventsLogged)

	record.Status = 0
	record.EndTime = time.Now()
	record.Message = fmt.Sprintf("created %d/%d", eventsLogged, eventsInserted)

	if err := s.db.Save(record).Error; err != nil {
		log.Printf("更新任务状态失败: %v", err)
	}

	log.Printf("%s任务处理完成: %s", cfg.TaskType, record.Message)
}
