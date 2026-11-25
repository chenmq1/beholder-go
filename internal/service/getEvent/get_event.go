package getevent

import (
	"context"
	"errors"
	"fmt"
	"math/big"
	"regexp"
	"strconv"
	"strings"
	"sync"
	"time"

	"github.com/ethereum/go-ethereum"
	"github.com/ethereum/go-ethereum/core/types"
	"github.com/ethereum/go-ethereum/ethclient"
)

// maxResultsRangeRe 匹配 provider 错误信息中建议的区块范围「数字-数字」。
var maxResultsRangeRe = regexp.MustCompile(`(\d+)-(\d+)`)

// parseMaxResultsRange 从 RPC 错误中解析 provider 建议的查询范围 [from, to]。
// 仅当错误信息含 "max results"（不区分大小写）且能解析出最后一组「数字-数字」
// 时返回 ok=true。解析不到时返回 ok=false，调用方应将其视为非超限错误，走原有
// IO 重试逻辑，不做本地缩小。
func parseMaxResultsRange(err error) (from, to int64, ok bool) {
	if err == nil {
		return 0, 0, false
	}
	msg := err.Error()
	if !strings.Contains(strings.ToLower(msg), "max results") {
		return 0, 0, false
	}
	matches := maxResultsRangeRe.FindAllStringSubmatch(msg, -1)
	if len(matches) == 0 {
		return 0, 0, false
	}
	last := matches[len(matches)-1]
	a, errA := strconv.ParseInt(last[1], 10, 64)
	b, errB := strconv.ParseInt(last[2], 10, 64)
	if errA != nil || errB != nil || a > b {
		return 0, 0, false
	}
	return a, b, true
}

const (
	// DefaultSegmentSize 默认段长（并发分段每段块数）
	DefaultSegmentSize = 9990
	// DefaultStepLength 默认步长（段内每批查询块数）
	DefaultStepLength = 999
	// IoExceptionRetry IO异常重试次数上限
	IoExceptionRetry = 500
)

// Result 事件处理结果
type Result struct {
	NewFilter      *ethereum.FilterQuery
	ShouldContinue bool
}

// DefaultResult 创建默认的事件处理结果
func DefaultResult() Result {
	return Result{
		NewFilter:      nil,
		ShouldContinue: true,
	}
}

// ProcessFunc 事件处理函数：处理一批日志，返回处理结果
type ProcessFunc func(logs []types.Log, original ethereum.FilterQuery) Result

// Forward 正向（从 startBlock 向 endBlock）分步获取链上事件，每批交给 process 处理。
// ethFilter 只需提供 Addresses/Topics 等过滤条件；FromBlock/ToBlock 由本函数按步长
// 逐步覆盖，调用方设置的值会被忽略。
//
// 当 RPC 返回「结果数超限」错误时（如 "query exceeds max results 10000, retry with
// the range A-B"），本函数将 provider 建议范围 [A, B] 的宽度持久化为本线程的新
// stepLength：校验 A == currentFromBlock（游标起点），相等则令 stepLength = B - A，
// 游标不推进，下一轮自然算出 [A, B]（成功后推进到 B+1，保证不漏块）；后续批次均
// 使用缩小后的步长，密度均匀时不再重复撞限。不相等则视为异常，输出详细信息并返回
// 错误。解析不到建议范围时，不当作超限错误，走原有 IO 重试逻辑。步长缩小仅影响
// 本线程，不共享给其他并发段。
func Forward(ctx context.Context, client *ethclient.Client, startBlock, endBlock int64, ethFilter ethereum.FilterQuery, process ProcessFunc, stepLength int) error {
	currentFromBlock := startBlock
	var currentToBlock int64
	ioExceptionRetried := 0

	for currentFromBlock <= endBlock {
		currentToBlock = currentFromBlock + int64(stepLength)
		if currentToBlock > endBlock {
			currentToBlock = endBlock
		}

		// 直接修改filter的区块范围
		ethFilter.FromBlock = big.NewInt(currentFromBlock)
		ethFilter.ToBlock = big.NewInt(currentToBlock)

		var logs []types.Log
		var err error

		try := func() bool {
			logs, err = client.FilterLogs(ctx, ethFilter)
			if err != nil {
				fmt.Printf("Error in getevent.Forward: %v\n", err)
				return false
			}
			return true
		}

		if !try() {
			// 优先识别「结果数超限」错误：采纳 provider 建议宽度作为本线程新步长，仅影响本线程
			if a, b, ok := parseMaxResultsRange(err); ok {
				if a != currentFromBlock {
					return fmt.Errorf("getevent.Forward 超限端点校验失败: provider建议起点=%d 当前游标=%d 建议终点=%d 段范围=[%d,%d] 原始错误=%w",
						a, currentFromBlock, b, startBlock, endBlock, err)
				}
				stepLength = int(b - a)
				ioExceptionRetried = 0
				fmt.Printf("Max results in getevent.Forward, adopt provider range [%d, %d], stepLength=%d, cursor stays at %d\n", a, b, stepLength, currentFromBlock)
				continue
			}
			// 非超限错误：走原有 IO 重试逻辑
			if ioExceptionRetried > IoExceptionRetry {
				stepLength -= 50
				ioExceptionRetried = 0
				if stepLength <= 0 {
					return err
				}
			} else {
				fmt.Printf("Exception(but retried) in getevent.Forward: %v, stepLength: %d\n", err, stepLength)
				ioExceptionRetried++
				time.Sleep(1 * time.Second)
			}
			continue
		}

		result := process(logs, ethFilter)
		if !result.ShouldContinue {
			break
		}
		if result.NewFilter != nil {
			ethFilter = *result.NewFilter
		}

		currentFromBlock = currentToBlock + 1
		ioExceptionRetried = 0
	}

	return nil
}

// Backward 反向（从 endBlock 向 startBlock）分步获取链上事件，每批交给 process 处理。
// ethFilter 只需提供 Addresses/Topics 等过滤条件；FromBlock/ToBlock 由本函数按步长
// 逐步覆盖，调用方设置的值会被忽略。
func Backward(ctx context.Context, client *ethclient.Client, startBlock, endBlock int64, ethFilter ethereum.FilterQuery, process ProcessFunc, stepLength int) error {
	currentFromBlock := startBlock
	currentToBlock := endBlock
	ioExceptionRetried := 0

	for currentToBlock > startBlock {
		currentFromBlock = currentToBlock - int64(stepLength)
		if currentFromBlock < startBlock {
			currentFromBlock = startBlock
		}

		// 直接修改filter的区块范围
		ethFilter.FromBlock = big.NewInt(currentFromBlock)
		ethFilter.ToBlock = big.NewInt(currentToBlock)

		var logs []types.Log
		var err error

		try := func() bool {
			logs, err = client.FilterLogs(ctx, ethFilter)
			if err != nil {
				fmt.Printf("Error in getevent.Backward: %v\n", err)
				return false
			}
			return true
		}

		if !try() {
			if ioExceptionRetried > IoExceptionRetry {
				return err
			} else {
				fmt.Printf("Exception(but retried) in getevent.Backward: %v\n", err)
				ioExceptionRetried++
				time.Sleep(1 * time.Second)
			}
			continue
		}

		result := process(logs, ethFilter)
		if !result.ShouldContinue {
			break
		}
		if result.NewFilter != nil {
			ethFilter = *result.NewFilter
		}

		currentToBlock = currentFromBlock - 1
		ioExceptionRetried = 0
	}

	return nil
}

// ConcurrentConfig 并发获取事件的配置
type ConcurrentConfig struct {
	SegmentSize int // 每个区块段的块数，<=0 时使用 DefaultStepLength
	MaxWorkers  int // 最大并发 goroutine 数，<=0 表示不限制
	StepLength  int // 区块段内的步长，<=0 时使用 DefaultStepLength
	// AuxFilter 可选：每个区块段在主事件之外额外拉取的辅助日志 filter，
	// 用于段内跨事件关联（如 burn 同时拉 sync）。只需提供 Addresses/Topics，
	// FromBlock/ToBlock 由框架按当前段填充；为零值时不启用。
	AuxFilter ethereum.FilterQuery
}

// AuxLogReceiver 可选接口：实现它的 SegmentCollector 可接收当前区块段的辅助日志，
// 在 Process 主事件时基于辅助事件做段内关联判定（由模型的 ShouldCorrelateInSeg 完成）。
type AuxLogReceiver interface {
	SetAuxLogs(logs []types.Log)
}

// ForwardConcurrent 并发正向获取链上事件：
// 将 [startBlock, endBlock] 按 SegmentSize 切分为多个区块段，每个区块段在独立
// goroutine 中按步长正向拉取日志并交给收集器处理。
// ethFilter 只需提供 Addresses/Topics 等过滤条件，FromBlock/ToBlock 会被忽略。
//
// collector 经 NewCollector 创建：
//   - 模型模式（eventModel != nil）：每个区块段持有独立的本地收集器（无锁），
//     以模型主键（gorm primary_key，去除 chain_id）为键去重，value 保存未处理的
//     原始事件（types.Log）；全部区块段完成后合并（键冲突按模型 ShouldReplaceInMerge
//     保留，无则首见保留），合并结果经返回值给出，同时返回每个 key 的出现次数
//     （含首次），可用于 PostProcess 写入 repeat_count 列。
//   - 自定义 process 模式（eventModel == nil）：所有区块段共享传入的 process
//     （需自行保证并发安全），返回值 map 均为 nil。
//
// ShouldContinue=false 只会停止当前区块段；任一区块段最终失败时返回聚合错误，
// 其他区块段不受影响。
func ForwardConcurrent(ctx context.Context, client *ethclient.Client, startBlock, endBlock int64, ethFilter ethereum.FilterQuery, collector ConcurrentCollector, cfg ConcurrentConfig) (map[string]types.Log, map[string]int, error) {
	if collector == nil {
		return nil, nil, fmt.Errorf("collector 不能为空")
	}

	stepLength := cfg.StepLength
	if stepLength <= 0 {
		stepLength = DefaultStepLength
	}
	segs, err := runSegmentsConcurrently(startBlock, endBlock, cfg, collector.NewSegment,
		func(sc SegmentCollector, from, to int64) error {
			if err := feedAuxLogs(ctx, client, cfg.AuxFilter, sc, from, to); err != nil {
				return err
			}
			return Forward(ctx, client, from, to, ethFilter, sc.Process(), stepLength)
		})
	for _, sc := range segs {
		collector.Merge(sc)
	}
	return collector.Events(), collector.Counts(), err
}

// BackwardConcurrent 并发反向获取链上事件：
// 将 [startBlock, endBlock] 按 SegmentSize 切分为多个区块段，每个区块段在独立
// goroutine 中按步长反向拉取日志并交给收集器处理。
// ethFilter 只需提供 Addresses/Topics 等过滤条件，FromBlock/ToBlock 会被忽略。
// 其余语义同 ForwardConcurrent。
func BackwardConcurrent(ctx context.Context, client *ethclient.Client, startBlock, endBlock int64, ethFilter ethereum.FilterQuery, collector ConcurrentCollector, cfg ConcurrentConfig) (map[string]types.Log, map[string]int, error) {
	if collector == nil {
		return nil, nil, fmt.Errorf("collector 不能为空")
	}

	stepLength := cfg.StepLength
	if stepLength <= 0 {
		stepLength = DefaultStepLength
	}
	segs, err := runSegmentsConcurrently(startBlock, endBlock, cfg, collector.NewSegment,
		func(sc SegmentCollector, from, to int64) error {
			if err := feedAuxLogs(ctx, client, cfg.AuxFilter, sc, from, to); err != nil {
				return err
			}
			return Backward(ctx, client, from, to, ethFilter, sc.Process(), stepLength)
		})
	for _, sc := range segs {
		collector.Merge(sc)
	}
	return collector.Events(), collector.Counts(), err
}

// feedAuxLogs 若 cfg.AuxFilter 非空，按步长分步拉取当前区块段的辅助日志并注入段收集器。
// 只在段收集器实现了 AuxLogReceiver 接口时注入；拉取失败返回错误，由调用方决定处理。
//
// 辅助日志（如 Sync）在繁忙链上密度极高，若整段一次 FilterLogs（段长默认 9990 块）
// 极易触发 provider「query exceeds max results 10000」错误。因此本函数与主查询
// Forward 保持一致：按步长分步覆盖 [from, to]；遇到超限时解析 provider 建议范围
// [A,B]（校验 A==当前游标起点），采纳 B-A 作为本线程新步长并重试当前批（游标不
// 推进，成功后推进到 B+1，保证不漏块）；非超限错误走 IO 重试，多次失败后缩小步长。
// 全段日志合并后一次性注入收集器，段内关联语义不变（aux 仍是完整段数据）。
func feedAuxLogs(ctx context.Context, client *ethclient.Client, aux ethereum.FilterQuery, sc SegmentCollector, from, to int64) error {
	if len(aux.Addresses) == 0 && len(aux.Topics) == 0 {
		return nil
	}
	receiver, ok := sc.(AuxLogReceiver)
	if !ok {
		return nil
	}
	if from > to {
		return nil
	}

	stepLength := DefaultStepLength
	ioExceptionRetried := 0
	var all []types.Log

	cur := from
	for cur <= to {
		curTo := cur + int64(stepLength)
		if curTo > to {
			curTo = to
		}

		f := aux
		f.FromBlock = big.NewInt(cur)
		f.ToBlock = big.NewInt(curTo)

		logs, err := client.FilterLogs(ctx, f)
		if err != nil {
			// 超限：采纳 provider 建议宽度作为本线程新步长，游标不推进
			if a, b, ok := parseMaxResultsRange(err); ok {
				if a != cur {
					return fmt.Errorf("feedAuxLogs 超限端点校验失败: provider建议起点=%d 当前游标=%d 建议终点=%d 段范围=[%d,%d] 原始错误=%w",
						a, cur, b, from, to, err)
				}
				stepLength = int(b - a)
				ioExceptionRetried = 0
				fmt.Printf("Max results in feedAuxLogs, adopt provider range [%d, %d], stepLength=%d, cursor stays at %d\n", a, b, stepLength, cur)
				continue
			}
			// 非超限错误：走 IO 重试，多次失败后缩小步长
			if ioExceptionRetried > IoExceptionRetry {
				stepLength -= 50
				ioExceptionRetried = 0
				if stepLength <= 0 {
					return fmt.Errorf("拉取辅助日志失败(步长已归零): %w", err)
				}
			} else {
				fmt.Printf("Exception(but retried) in feedAuxLogs: %v, stepLength: %d\n", err, stepLength)
				ioExceptionRetried++
				time.Sleep(1 * time.Second)
			}
			continue
		}

		all = append(all, logs...)
		cur = curTo + 1
		ioExceptionRetried = 0
	}

	receiver.SetAuxLogs(all)
	return nil
}

// runSegmentsConcurrently 将区块范围切分为不重叠的区块段并发执行。
// 每个区块段先调用 newSeg 创建本地收集器（写入 segs[i]，每槽仅写一次无竞争），
// 全部完成后由调用方按序合并。
func runSegmentsConcurrently(startBlock, endBlock int64, cfg ConcurrentConfig, newSeg func() SegmentCollector, runSegment func(sc SegmentCollector, from, to int64) error) ([]SegmentCollector, error) {
	if startBlock > endBlock {
		return nil, nil
	}

	segmentSize := int64(cfg.SegmentSize)
	if segmentSize <= 0 {
		segmentSize = DefaultSegmentSize
	}

	// 枚举不重叠区块段
	type segment struct{ from, to int64 }
	var segments []segment
	for segStart := startBlock; segStart <= endBlock; segStart += segmentSize {
		segEnd := segStart + segmentSize - 1
		if segEnd > endBlock {
			segEnd = endBlock
		}
		segments = append(segments, segment{segStart, segEnd})
	}

	// 限制并发数
	var semaphore chan struct{}
	if cfg.MaxWorkers > 0 {
		semaphore = make(chan struct{}, cfg.MaxWorkers)
	}

	segs := make([]SegmentCollector, len(segments))
	var mu sync.Mutex
	var errs []error

	var wg sync.WaitGroup
	for i, seg := range segments {
		if semaphore != nil {
			semaphore <- struct{}{}
		}

		wg.Add(1)
		go func(idx int, from, to int64) {
			defer wg.Done()
			if semaphore != nil {
				defer func() { <-semaphore }()
			}
			sc := newSeg()
			segs[idx] = sc // 每槽仅写一次，无竞争
			if err := runSegment(sc, from, to); err != nil {
				mu.Lock()
				errs = append(errs, fmt.Errorf("区块段 [%d, %d] 处理失败: %w", from, to, err))
				mu.Unlock()
			}
		}(i, seg.from, seg.to)
	}

	wg.Wait()
	return segs, errors.Join(errs...)
}
