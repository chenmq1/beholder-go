package utils

import (
	"context"

	"github.com/ethereum/go-ethereum/ethclient"
)

// Web3Client Web3客户端结构体
type Web3Client struct {
	Ctx        context.Context
	EthClient  *ethclient.Client
	NetworkName string
}

// NewWeb3Client 创建Web3Client实例
func NewWeb3Client(ctx context.Context, ethClient *ethclient.Client, networkName string) *Web3Client {
	return &Web3Client{
		Ctx:        ctx,
		EthClient:  ethClient,
		NetworkName: networkName,
	}
}
