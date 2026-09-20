package instantcommon

import (
	"context"
	"fmt"
	"log"
	"strconv"
	"strings"

	"github.com/ethereum/go-ethereum"
	ethcommon "github.com/ethereum/go-ethereum/common"
	"github.com/ethereum/go-ethereum/core/types"
	"github.com/jinzhu/gorm"

	modelcommon "github.com/beholder-daemon/internal/model/common"
	"github.com/beholder-daemon/internal/service/getEvent"
	"github.com/beholder-daemon/internal/utils"
)

// EventResult 面向前端的通用事件结果（不去重时每条原始 log 一行；去重时每个 key 一行）。
// data 为完整 hex 字符串（不做 ABI 解码，保留通用性），topicN 按事件实际长度填充（不足留空）。
type EventResult struct {
	ChainID     int    `json:"chainId"`
	BlockNumber uint64 `json:"blockNumber"`
	TxHash      string `json:"txHash"`
	Address     string `json:"address"`
	Topic0      string `json:"topic0"`
	Topic1      string `json:"topic1"`
	Topic2      string `json:"topic2"`
	Topic3      string `json:"topic3"`
	Data        string `json:"data"`
	RepeatCount int    `json:"repeatCount"`
	// Status 来自临时表（链上查询结果恒为 nil）：NULL 序列化 null
	Status *int `json:"status"`
}

// EventInstantService 即时通用事件查询服务：复用 getEvent.BackwardConcurrent 的
// 分段并发拉取与合并框架，但去重键由调用方动态指定（不复用 NewCollector 的 model
// 模式——其去重键硬绑 model gorm primary_key）。
//
// db 可空：nil 时不落库；非 nil 时在启动期 AutoMigrate event_query_temp 表，
// 并在 GetEvents 的 persist 参数为 true 时清空并写入本次查询结果。
type EventInstantService struct {
	clients map[string]*utils.Web3Client
	db      *gorm.DB
}

func NewEventInstantService(clients map[string]*utils.Web3Client, db *gorm.DB) *EventInstantService {
	if db != nil {
		// 幂等建表：临时表无历史数据，AutoMigrate 安全
		if err := db.AutoMigrate(&modelcommon.EventQueryTemp{}).Error; err != nil {
			log.Printf("EventInstantService: AutoMigrate event_query_temp 失败: %v", err)
		}
	}
	return &EventInstantService{clients: clients, db: db}
}

// GetEvents 即时查询符合条件的事件，按 dedupField 单字段去重（空=不去重）。
//
//   - chainId：链 ID（1=ethereum, 2=bsc, 3=polygon, 4=arbitrum, 5=base, 6=optimism）
//   - address：可选，仅查该合约发出的事件（eth_getLogs Addresses 过滤）
//   - topic0/1/2：可选，对应槽位过滤；空槽位不填（eth_getLogs 通配语义）
//   - dedupField：去重字段，取值 "" / "topic1" / "topic2" / "address" / "txHash" / "blockNumber"
//     空表示不去重（每条 log 用 txHash|logIndex 作 key，结果与原始事件一一对应）
//   - startBlock/endBlock：区块范围；endBlock 缺省取最新，startBlock 缺省回溯 defaultScanBlocks
//   - persist：true 且服务持有 db 时，先 TRUNCATE event_query_temp 再批量插入本次结果；
//     临时表只保留最近一次开启 persist 查询的快照（非累积）。false 或 db 为 nil 时不落库。
//
// 返回结果、实际扫描的起止区块（已应用缺省值后）、错误。
// 方向固定 Backward（与 Approval 即时查询一致，首见保留即最新）。
func (s *EventInstantService) GetEvents(ctx context.Context, chainId int, address, topic0, topic1, topic2, dedupField string, startBlock, endBlock uint64, persist bool) ([]EventResult, uint64, uint64, error) {
	chain := chainName(chainId)
	if chain == "" {
		return nil, 0, 0, fmt.Errorf("不支持的 chainId: %d（支持 1=ethereum,2=bsc,3=polygon,4=arbitrum,5=base,6=optimism）", chainId)
	}
	client, ok := s.clients[chain]
	if !ok || client == nil {
		return nil, 0, 0, fmt.Errorf("找不到 chainId %d 的客户端", chainId)
	}

	// 校验 dedupField
	dedupFn, err := dedupKeyFn(dedupField)
	if err != nil {
		return nil, 0, 0, err
	}

	// 校验 address 与 topicN
	var addrList []ethcommon.Address
	if address != "" {
		if !ethcommon.IsHexAddress(address) {
			return nil, 0, 0, fmt.Errorf("address 不是合法的地址: %s", address)
		}
		addrList = []ethcommon.Address{ethcommon.HexToAddress(address)}
	}
	topics := make([][]ethcommon.Hash, 3)
	for i, t := range []string{topic0, topic1, topic2} {
		if t == "" {
			topics[i] = nil
			continue
		}
		topics[i] = []ethcommon.Hash{ethcommon.HexToHash(t)}
	}

	// endBlock 缺省取最新
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

	filter := ethereum.FilterQuery{
		Addresses: addrList,
		Topics:    topics,
	}

	collector := newGenericCollector(dedupFn)
	_, counts, err := getevent.BackwardConcurrent(
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

	events := collector.Events()
	results := make([]EventResult, 0, len(events))
	for k, l := range events {
		rc := 1
		if counts != nil {
			if c, ok := counts[k]; ok && c > 0 {
				rc = c
			}
		}
		results = append(results, buildEventResult(l, chainId, rc))
	}

	if persist && s.db != nil {
		if err := s.persistToTemp(results); err != nil {
			return results, actualStart, actualEnd, fmt.Errorf("写入临时表失败: %v", err)
		}
	}
	return results, actualStart, actualEnd, nil
}

// persistToTemp 清空 event_query_temp 并写入本次查询结果。
// 临时表语义：表中始终只反映最近一次 persist 查询的快照，故先 TRUNCATE 再写入。
//
// 逐行 Create + 单事务：jinzhu/gorm v1 的 Create 不支持切片批量插入（切片 scope
// 下 Fields 的 reflect.Value 为 zero，Create(&slice) 会 panic），v2 才支持 batch。
func (s *EventInstantService) persistToTemp(results []EventResult) error {
	if err := s.db.Exec("TRUNCATE TABLE event_query_temp").Error; err != nil {
		return fmt.Errorf("清空临时表失败: %w", err)
	}
	if len(results) == 0 {
		return nil
	}
	tx := s.db.Begin()
	for _, r := range results {
		row := modelcommon.EventQueryTemp{
			ChainID:     int16(r.ChainID),
			BlockNumber: r.BlockNumber,
			TxHash:      r.TxHash,
			Address:     r.Address,
			Topic0:      r.Topic0,
			Topic1:      r.Topic1,
			Topic2:      r.Topic2,
			Topic3:      r.Topic3,
			Data:        r.Data,
			RepeatCount: r.RepeatCount,
		}
		if err := tx.Create(&row).Error; err != nil {
			tx.Rollback()
			return fmt.Errorf("插入临时表行失败: %w", err)
		}
	}
	return tx.Commit().Error
}

// ListTemp 查询 event_query_temp 当前快照，可按 chainId/status 筛选：
//   - chainId > 0：过滤链；0 = 不过滤
//   - status 非 nil：status = 精确匹配
//   - statusIsNull true：status IS NULL（显式查未处理）
//   - 两者都不满足：不按状态过滤（返回全部，含 NULL）
//
// 结果按 block_number DESC 排序（查询走切片 Find，gorm v1 正常支持）。
func (s *EventInstantService) ListTemp(chainId int, status *int, statusIsNull bool) ([]EventResult, error) {
	if s.db == nil {
		return nil, fmt.Errorf("服务未配置数据库，无法查询临时表")
	}
	q := s.db.Model(&modelcommon.EventQueryTemp{})
	if chainId > 0 {
		q = q.Where("chain_id = ?", chainId)
	}
	switch {
	case statusIsNull:
		q = q.Where("status IS NULL")
	case status != nil:
		q = q.Where("status = ?", *status)
	}

	var rows []modelcommon.EventQueryTemp
	if err := q.Order("block_number DESC, id DESC").Find(&rows).Error; err != nil {
		return nil, fmt.Errorf("查询临时表失败: %w", err)
	}
	results := make([]EventResult, 0, len(rows))
	for _, r := range rows {
		results = append(results, tempRowToResult(r))
	}
	return results, nil
}

// tempRowToResult 临时表实体 → 前端 DTO（保留 status）
func tempRowToResult(r modelcommon.EventQueryTemp) EventResult {
	return EventResult{
		ChainID:     int(r.ChainID),
		BlockNumber: r.BlockNumber,
		TxHash:      r.TxHash,
		Address:     r.Address,
		Topic0:      r.Topic0,
		Topic1:      r.Topic1,
		Topic2:      r.Topic2,
		Topic3:      r.Topic3,
		Data:        r.Data,
		RepeatCount: r.RepeatCount,
		Status:      r.Status,
	}
}

// buildEventResult 将一条原始 log 映射为前端 DTO（不依赖任何 model）
func buildEventResult(l types.Log, chainId int, rc int) EventResult {
	return EventResult{
		ChainID:     chainId,
		BlockNumber: l.BlockNumber,
		TxHash:      strings.ToLower(l.TxHash.Hex()),
		Address:     strings.ToLower(l.Address.Hex()),
		Topic0:      topicAt(l, 0),
		Topic1:      topicAt(l, 1),
		Topic2:      topicAt(l, 2),
		Topic3:      topicAt(l, 3),
		Data:        "0x" + ethcommon.Bytes2Hex(l.Data),
		RepeatCount: rc,
	}
}

// topicAt 取 log 的第 idx 个 topic，返回完整 32 字节小写 hex（0x + 64 位 hex）；
// topic 不存在返回空。不截断：非地址 topic（bytes32/uint256）不能伪装成地址，
// 前端按"左补 24 字节 0"识别地址形态的 topic1/2 并加浏览器链接。
func topicAt(l types.Log, idx int) string {
	if idx >= len(l.Topics) {
		return ""
	}
	return "0x" + ethcommon.Bytes2Hex(l.Topics[idx].Bytes())
}

// dedupKeyFn 按 dedupField 返回去重键提取函数；空字段返回基于 txHash|logIndex 的唯一键
func dedupKeyFn(dedupField string) (func(*types.Log) (string, bool), error) {
	switch dedupField {
	case "", "none":
		// 不去重：每条 log 用唯一 key，保留所有事件
		return func(l *types.Log) (string, bool) {
			return strings.ToLower(l.TxHash.Hex()) + "|" + strconv.FormatUint(uint64(l.Index), 10), true
		}, nil
	case "topic1":
		return topicDedupKey(1), nil
	case "topic2":
		return topicDedupKey(2), nil
	case "topic3":
		return topicDedupKey(3), nil
	case "address":
		return func(l *types.Log) (string, bool) {
			return strings.ToLower(l.Address.Hex()), true
		}, nil
	case "txHash":
		return func(l *types.Log) (string, bool) {
			return strings.ToLower(l.TxHash.Hex()), true
		}, nil
	case "blockNumber":
		return func(l *types.Log) (string, bool) {
			return strconv.FormatUint(l.BlockNumber, 10), true
		}, nil
	}
	return nil, fmt.Errorf("dedupField 取值非法: %q（支持空/none/topic1/topic2/topic3/address/txHash/blockNumber）", dedupField)
}

// topicDedupKey idx=1/2/3：取 log 第 idx 个 topic 的后 20 字节小写 hex；topic 不存在返回 false（跳过该事件）
func topicDedupKey(idx int) func(*types.Log) (string, bool) {
	return func(l *types.Log) (string, bool) {
		if idx >= len(l.Topics) {
			return "", false
		}
		b := l.Topics[idx].Bytes()
		if len(b) > 20 {
			b = b[len(b)-20:]
		}
		return "0x" + ethcommon.Bytes2Hex(b), true
	}
}

// genericCollector 通用并发收集器：实现 getevent.ConcurrentCollector 接口。
// 与 eventCollector 的差异是：去重键由闭包 dedupKeyFn 决定（而非 model primary_key），
// 且默认 Backward 方向首见保留（保留最新），无 ShouldReplaceInSeg/Merge 可选项。
type genericCollector struct {
	dedupKeyFn func(*types.Log) (string, bool)
	events    map[string]types.Log
	counts    map[string]int
}

func newGenericCollector(dedupKeyFn func(*types.Log) (string, bool)) *genericCollector {
	return &genericCollector{
		dedupKeyFn: dedupKeyFn,
		events:     map[string]types.Log{},
		counts:     map[string]int{},
	}
}

func (c *genericCollector) NewSegment() getevent.SegmentCollector {
	return &genericSegment{
		dedupKeyFn: c.dedupKeyFn,
		events:      map[string]types.Log{},
		counts:      map[string]int{},
	}
}

// Merge 合并区块段本地结果：键冲突首见保留（与 eventCollector 默认语义一致，
// 配合 Backward 拉取下首见即段内最新）；counts 累加
func (c *genericCollector) Merge(seg getevent.SegmentCollector) {
	gs, ok := seg.(*genericSegment)
	if !ok {
		return
	}
	for k, l := range gs.events {
		if _, exists := c.events[k]; !exists {
			c.events[k] = l
		}
	}
	for k, v := range gs.counts {
		c.counts[k] += v
	}
}

func (c *genericCollector) Events() map[string]types.Log { return c.events }
func (c *genericCollector) Counts() map[string]int       { return c.counts }

// genericSegment 区块段本地收集器（无锁）：反向遍历 logs，按 dedupKeyFn 去重，
// value 保存原始事件。counts[key] 记录每键出现次数（含首次）
type genericSegment struct {
	dedupKeyFn func(*types.Log) (string, bool)
	events     map[string]types.Log
	counts     map[string]int
}

func (s *genericSegment) Process() getevent.ProcessFunc {
	return func(logs []types.Log, _ ethereum.FilterQuery) getevent.Result {
		n := len(logs)
		for j := 0; j < n; j++ {
			// 默认反向遍历：Backward 拉取语义下首见即段内最新
			i := n - 1 - j
			l := &logs[i]
			key, ok := s.dedupKeyFn(l)
			if !ok {
				continue
			}
			s.counts[key]++
			if _, exists := s.events[key]; !exists {
				s.events[key] = *l
			}
		}
		return getevent.DefaultResult()
	}
}

// 编译期接口断言：确保 genericCollector 实现 getevent.ConcurrentCollector
var _ getevent.ConcurrentCollector = (*genericCollector)(nil)
var _ getevent.SegmentCollector = (*genericSegment)(nil)
