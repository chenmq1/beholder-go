package utils

import (
	"context"
	"fmt"
	"math/big"
	"time"

	"github.com/ethereum/go-ethereum"
	"github.com/ethereum/go-ethereum/common"
	"github.com/ethereum/go-ethereum/core/types"
	"github.com/ethereum/go-ethereum/ethclient"
)

const (
	StepLength      = 999
	IoExceptionRetry = 4
)

// SolidityEventProcesser 事件处理器接口
type SolidityEventProcesser interface {
	ProcessEvents(logs []types.Log, original ethereum.FilterQuery) EventProcessResult
}

// EventProcessResult 事件处理结果
type EventProcessResult struct {
	NewFilter     *ethereum.FilterQuery
	ShouldContinue bool
}

// NewEventProcessResult 创建默认的事件处理结果
func NewEventProcessResult() EventProcessResult {
	return EventProcessResult{
		NewFilter:     nil,
		ShouldContinue: true,
	}
}

// Web3Utils Web3工具类
type Web3Utils struct {}

// NewWeb3Utils 创建Web3Utils实例
func NewWeb3Utils() *Web3Utils {
	return &Web3Utils{}
}

// StepGetLog 正向获取链上事件
func (w *Web3Utils) StepGetLog(ctx context.Context, client *ethclient.Client, startBlock, endBlock int64, ethFilter ethereum.FilterQuery, solidityEventProcesser SolidityEventProcesser, stepLength int) error {
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
				fmt.Printf("Error in StepGetLog: %v\n", err)
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
				fmt.Printf("Exception(but retried) in StepGetLog: %v, stepLength: %d\n", err, stepLength)
				ioExceptionRetried++
				time.Sleep(1 * time.Second)
			}
			continue
		}

		result := solidityEventProcesser.ProcessEvents(logs, ethFilter)
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

// StepBackwardGetLog 反向获取链上事件
func (w *Web3Utils) StepBackwardGetLog(ctx context.Context, client *ethclient.Client, startBlock, endBlock int64, ethFilter ethereum.FilterQuery, solidityEventProcesser SolidityEventProcesser, stepLength int) error {
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
				fmt.Printf("Error in StepBackwardGetLog: %v\n", err)
				return false
			}
			return true
		}

		if !try() {
			if ioExceptionRetried > IoExceptionRetry {
				return err
			} else {
				fmt.Printf("Exception(but retried) in StepBackwardGetLog: %v\n", err)
				ioExceptionRetried++
				time.Sleep(1 * time.Second)
			}
			continue
		}

		result := solidityEventProcesser.ProcessEvents(logs, ethFilter)
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

// StepGetLogWithDefaultStep 使用默认步长正向获取链上事件
func (w *Web3Utils) StepGetLogWithDefaultStep(ctx context.Context, client *ethclient.Client, startBlock, endBlock int64, ethFilter ethereum.FilterQuery, solidityEventProcesser SolidityEventProcesser) error {
	return w.StepGetLog(ctx, client, startBlock, endBlock, ethFilter, solidityEventProcesser, StepLength)
}

// StepBackwardGetLogWithDefaultStep 使用默认步长反向获取链上事件
func (w *Web3Utils) StepBackwardGetLogWithDefaultStep(ctx context.Context, client *ethclient.Client, startBlock, endBlock int64, ethFilter ethereum.FilterQuery, solidityEventProcesser SolidityEventProcesser) error {
	return w.StepBackwardGetLog(ctx, client, startBlock, endBlock, ethFilter, solidityEventProcesser, StepLength)
}

// GetShortAddress 获取简短的地址表示
func GetShortAddress(longAddress common.Address) string {
	return "0x" + longAddress.Hex()[26:]
}

// GetShortAddressNeat 获取更简洁的地址表示
func GetShortAddressNeat(longAddress common.Address) string {
	return longAddress.Hex()[26:]
}

// RetryWithIoException 带IO异常重试的通用方法
func RetryWithIoException(task func() (bool, error), maxRetry int) error {
	retryCount := 0

	for {
		success, err := task()
		if success {
			return nil
		}

		if retryCount >= maxRetry {
			return err
		}

		fmt.Printf("retry: %v\n", err)
		time.Sleep(1 * time.Second)
		retryCount++
	}
}
