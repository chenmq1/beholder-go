package utils

import (
	"fmt"
	"time"

	"github.com/ethereum/go-ethereum/common"
)

// Web3Utils Web3工具类
type Web3Utils struct{}

// NewWeb3Utils 创建Web3Utils实例
func NewWeb3Utils() *Web3Utils {
	return &Web3Utils{}
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
