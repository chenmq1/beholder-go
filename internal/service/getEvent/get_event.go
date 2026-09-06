package getevent

import (
	"context"
	"errors"
	"fmt"
	"math/big"
	"sync"
	"time"

	"github.com/ethereum/go-ethereum"
	"github.com/ethereum/go-ethereum/core/types"
	"github.com/ethereum/go-ethereum/ethclient"
)

const (
	// DefaultStepLength 默认步长
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
}

// ForwardConcurrent 并发正向获取链上事件：
// 将 [startBlock, endBlock] 按 SegmentSize 切分为多个区块段，每个区块段在独立
// goroutine 中按步长正向拉取日志并交给 process 处理。
// ethFilter 只需提供 Addresses/Topics 等过滤条件，FromBlock/ToBlock 会被忽略。
//
// eventModel 为事件模型结构体（如 &ApprovalEvent{}）：
//   - 非 nil 时使用统一收集逻辑：以模型主键（gorm primary_key，去除 chain_id）为键去重，
//     value 保存未处理的原始事件（types.Log），首见保留，收集结果经返回值给出；
//     同时返回每个 key 的出现次数（含首次），可用于 PostProcess 写入 repeat_count 列。
//     转换与入库由 PostProcess 完成。此时 process 被忽略（传 nil 即可）。
//   - 为 nil 时使用传入的 process（需自行保证并发安全），返回值 map 均为 nil。
//
// ShouldContinue=false 只会停止当前区块段；任一区块段最终失败时返回聚合错误，
// 其他区块段不受影响。
func ForwardConcurrent(ctx context.Context, client *ethclient.Client, startBlock, endBlock int64, ethFilter ethereum.FilterQuery, process ProcessFunc, eventModel interface{}, cfg ConcurrentConfig) (map[string]types.Log, map[string]int, error) {
	collector, err := newCollector(process, eventModel)
	if err != nil {
		return nil, nil, err
	}

	stepLength := cfg.StepLength
	if stepLength <= 0 {
		stepLength = DefaultStepLength
	}
	runSegment := func(from, to int64) error {
		return Forward(ctx, client, from, to, ethFilter, collector.process, stepLength)
	}
	err = runSegmentsConcurrently(startBlock, endBlock, cfg, runSegment)
	return collector.result(), collector.resultCounts(), err
}

// BackwardConcurrent 并发反向获取链上事件：
// 将 [startBlock, endBlock] 按 SegmentSize 切分为多个区块段，每个区块段在独立
// goroutine 中按步长反向拉取日志并交给 process 处理。
// ethFilter 只需提供 Addresses/Topics 等过滤条件，FromBlock/ToBlock 会被忽略。
// 其余语义同 ForwardConcurrent。
func BackwardConcurrent(ctx context.Context, client *ethclient.Client, startBlock, endBlock int64, ethFilter ethereum.FilterQuery, process ProcessFunc, eventModel interface{}, cfg ConcurrentConfig) (map[string]types.Log, map[string]int, error) {
	collector, err := newCollector(process, eventModel)
	if err != nil {
		return nil, nil, err
	}

	stepLength := cfg.StepLength
	if stepLength <= 0 {
		stepLength = DefaultStepLength
	}
	runSegment := func(from, to int64) error {
		return Backward(ctx, client, from, to, ethFilter, collector.process, stepLength)
	}
	err = runSegmentsConcurrently(startBlock, endBlock, cfg, runSegment)
	return collector.result(), collector.resultCounts(), err
}

// runSegmentsConcurrently 将区块范围切分为不重叠的区块段并发执行
func runSegmentsConcurrently(startBlock, endBlock int64, cfg ConcurrentConfig, runSegment func(from, to int64) error) error {
	if startBlock > endBlock {
		return nil
	}

	segmentSize := int64(cfg.SegmentSize)
	if segmentSize <= 0 {
		segmentSize = DefaultStepLength
	}

	// 限制并发数
	var semaphore chan struct{}
	if cfg.MaxWorkers > 0 {
		semaphore = make(chan struct{}, cfg.MaxWorkers)
	}

	var mu sync.Mutex
	var errs []error

	var wg sync.WaitGroup
	for segStart := startBlock; segStart <= endBlock; segStart += segmentSize {
		segEnd := segStart + segmentSize - 1
		if segEnd > endBlock {
			segEnd = endBlock
		}

		if semaphore != nil {
			semaphore <- struct{}{}
		}

		wg.Add(1)
		go func(from, to int64) {
			defer wg.Done()
			if semaphore != nil {
				defer func() { <-semaphore }()
			}
			if err := runSegment(from, to); err != nil {
				mu.Lock()
				errs = append(errs, fmt.Errorf("区块段 [%d, %d] 处理失败: %w", from, to, err))
				mu.Unlock()
			}
		}(segStart, segEnd)
	}

	wg.Wait()
	return errors.Join(errs...)
}
