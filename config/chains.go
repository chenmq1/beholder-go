package config

import (
	"fmt"

	"github.com/spf13/viper"
)

// Chains 区块链配置管理
type Chains struct {
	web3js          map[string]string
	dedaubChainStrs map[int]string
	realIDs         map[int]int
}

// NewChains 创建 Chains 实例
func NewChains() *Chains {
	return &Chains{
		web3js: make(map[string]string),
		dedaubChainStrs: map[int]string{
			1:    "ethereum",
			56:   "binance",
			137:  "polygon",
			42161: "arbitrum",
			8453: "base",
			10:   "optimism",
		},
		realIDs: map[int]int{
			1:    1,
			56:   56,
			137:  137,
			42161: 42161,
			8453: 8453,
			10:   10,
		},
	}
}

// GetScanApiUrl 获取 Etherscan API URL
func (c *Chains) GetScanApiUrl(chainId int) string {
	apiKey := viper.GetString("etherscan.api_key")
	if apiKey == "" {
		apiKey = "UQER5WBE8GYPMHFBW5PTUVMHVVEM95G2E7" // 默认 API Key
	}
	return fmt.Sprintf("https://api.etherscan.io/v2/api?chainid=%d&module=contract&action=getsourcecode&address=%%s&apikey=%s", c.realIDs[chainId], apiKey)
}

// GetDedaubDecompileURL 获取 Dedaub 反编译 URL
func (c *Chains) GetDedaubDecompileURL(chainId int) string {
	chainStr := c.dedaubChainStrs[chainId]
	if chainStr == "" {
		chainStr = "ethereum" // 默认以太坊
	}
	return fmt.Sprintf("https://app.dedaub.com/%s/address/%%s/decompiled", chainStr)
}

// GetWeb3j 获取 Web3j 客户端 URL
func (c *Chains) GetWeb3j(chainId int) string {
	chainMap := map[int]string{
		1:    "ethereum",
		56:   "bsc",
		137:  "polygon",
		42161: "arbitrum",
		8453: "base",
		10:   "optimism",
	}

	chainName := chainMap[chainId]
	if chainName == "" {
		chainName = "ethereum" // 默认以太坊
	}

	url := viper.GetString("web3j.chains." + chainName)
	if url == "" {
		// 默认 URL
		defaultURLs := map[string]string{
			"ethereum": "https://mainnet.infura.io/v3/your-infura-key",
			"bsc":      "https://bsc-dataseed.binance.org/",
			"polygon":  "https://polygon-rpc.com/",
			"arbitrum": "https://arb1.arbitrum.io/rpc",
			"base":     "https://mainnet.base.org",
			"optimism": "https://mainnet.optimism.io",
		}
		url = defaultURLs[chainName]
	}

	return url
}
