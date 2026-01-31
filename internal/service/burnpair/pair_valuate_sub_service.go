package burnpair

import (
	"context"
	"log"
	"math/big"
	"time"

	"github.com/ethereum/go-ethereum"
	"github.com/ethereum/go-ethereum/common"
	"github.com/ethereum/go-ethereum/core/types"
	"github.com/jinzhu/gorm"

	"github.com/beholder-daemon/internal/model/burnpair"
	"github.com/beholder-daemon/internal/utils"
)

const (
	VALUE_TRESHOLD_USD = 100
	SYNC_EVENT_TOPIC   = "0x1c411e9a96e071241c2f21f7726b17ae89e3cab4c78be50e062b03a9fffbbad1"
)

var (
	currencyValue = map[string]int{
		"0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c": 900, // WBNB
		"0x55d398326f99059ff775485246999027b3197955": 1,   // USDT
	}
)

type PairValuateSubService struct {
	db        *gorm.DB
	bscClient *utils.Web3Client
	web3Utils *utils.Web3Utils
}

func NewPairValuateSubService(db *gorm.DB, bscClient *utils.Web3Client, web3Utils *utils.Web3Utils) *PairValuateSubService {
	return &PairValuateSubService{
		db:        db,
		bscClient: bscClient,
		web3Utils: web3Utils,
	}
}

// ProcessSubTask 使用 BalanceOf 方法评估交易对
func (s *PairValuateSubService) ProcessSubTask(pair *burnpair.UniswapPair) int {
	currencyAddress := pair.CurrencyAddress
	if currencyAddress == "" {
		log.Printf("交易对 %s 货币地址为空", pair.PairAddress)
		return 0
	}

	// 构建 balanceOf 调用
	pairAddr := common.HexToAddress(pair.PairAddress)
	currencyAddr := common.HexToAddress(currencyAddress)

	// balanceOf 函数选择器: 0x70a08231
	// 构建 32 字节对齐的参数
	addrBytes := pairAddr.Bytes()
	paddedAddr := make([]byte, 32)
	copy(paddedAddr[32-len(addrBytes):], addrBytes)
	data := "0x70a08231" + common.Bytes2Hex(paddedAddr)

	var balance *big.Int
	ioExceptionRetried := 0

	for balance == nil {
		// 调用合约
		callMsg := ethereum.CallMsg{
			To:   &currencyAddr,
			Data: common.FromHex(data),
		}

		// 使用 eth_call
		result, err := s.bscClient.EthClient.CallContract(context.Background(), callMsg, nil)
		if err != nil {
			ioExceptionRetried++
			if ioExceptionRetried > 10 {
				log.Printf("处理交易对 %s 失败: %v", pair.PairAddress, err)
				return 0
			}
			log.Printf("调用合约失败，重试: %v", err)
			time.Sleep(1 * time.Second)
			continue
		}

		// 解析结果
		balance = new(big.Int).SetBytes(result)
		break
	}
	
	// 计算价值
	price, ok := currencyValue[currencyAddress]
	if !ok {
		log.Printf("未知货币地址: %s", currencyAddress)
		return 0
	}

	// 安全计算价值，避免int64溢出
	balanceFloat := new(big.Float).SetInt(balance)
	priceFloat := new(big.Float).SetFloat64(float64(price))
	divisor := new(big.Float).SetFloat64(1e18)
	
	// 计算：(balance * price) / 1e18
	currencyAmountFloat := new(big.Float).Mul(balanceFloat, priceFloat)
	currencyAmountFloat.Quo(currencyAmountFloat, divisor)
	
	// 转换为float64
	currencyAmount, _ := currencyAmountFloat.Float64()
	valueState := 0
	if currencyAmount > VALUE_TRESHOLD_USD {
		valueState = 1
	}

	log.Printf("交易对 %s 代币单价: %d, 余额: %d, 价值: %f", pair.PairAddress, currencyValue[currencyAddress], balance, currencyAmount)

	// 更新交易对信息
	pair.ValueState = valueState
	pair.ValueInUsd = int(currencyAmount)
	if valueState == 1 && (pair.CheckState == nil || *pair.CheckState == 0) {
		checkState := CHECK_STATE_WAITING_CHECK
		pair.CheckState = &checkState
	}

	if valueState == 1 {
		return 1
	}
	return 0
}

// ProcessSubTaskWithSyncEvents 使用 Sync 事件监听方法评估交易对
func (s *PairValuateSubService) ProcessSubTaskWithSyncEvents(pairs []burnpair.UniswapPair, fromBlock, toBlock uint64) int {
	if len(pairs) == 0 {
		return 0
	}

	// 构建地址列表
	addresses := make([]common.Address, 0, len(pairs))
	pairMap := make(map[common.Address]*burnpair.UniswapPair)

	for i := range pairs {
		addr := common.HexToAddress(pairs[i].PairAddress)
		addresses = append(addresses, addr)
		pairMap[addr] = &pairs[i]
	}

	// 构建过滤器
	filter := ethereum.FilterQuery{
		FromBlock: big.NewInt(int64(fromBlock)),
		ToBlock:   big.NewInt(int64(toBlock)),
		Addresses: addresses,
		Topics:    [][]common.Hash{{common.HexToHash(SYNC_EVENT_TOPIC)}},
	}

	// 创建事件处理器
	eventProcessor := &SyncEventProcessor{
		pairMap: pairMap,
	}

	// 使用 stepBackwardGetLog 处理事件
	s.web3Utils.StepBackwardGetLogWithDefaultStep(s.bscClient.Ctx, s.bscClient.EthClient, int64(fromBlock), int64(toBlock), filter, eventProcessor)

	// 统计有价值的交易对数量
	valuable := 0
	for _, pair := range pairs {
		if pair.ValueState == 1 {
			valuable++
		}
	}

	return valuable
}

// SyncEventProcessor 处理 Sync 事件
type SyncEventProcessor struct {
	pairMap map[common.Address]*burnpair.UniswapPair
}

// ProcessEvents 处理事件
func (p *SyncEventProcessor) ProcessEvents(logs []types.Log, original ethereum.FilterQuery) utils.EventProcessResult {
	result := utils.EventProcessResult{
		ShouldContinue: true,
	}

	if len(logs) == 0 {
		return result
	}

	// 按倒序处理事件（最新的事件先处理）
	for i := len(logs) - 1; i >= 0; i-- {
		log := logs[i]
		pairAddr := log.Address
		pair := p.pairMap[pairAddr]

		if pair == nil {
			continue // 交易对已处理
		}

		// 解析事件数据
		if len(log.Data) < 64 {
			continue
		}

		// 获取货币数量
		var currencyAmount *big.Int
		if pair.TokenFirst == 1 {
			// token 在前，currency 在后
			currencyAmount = new(big.Int).SetBytes(log.Data[32:64])
		} else {
			// currency 在前，token 在后
			currencyAmount = new(big.Int).SetBytes(log.Data[0:32])
		}

		// 计算价值
		price, ok := currencyValue[pair.CurrencyAddress]
		if !ok {
			continue
		}

		// 安全计算价值，避免int64溢出
		currencyAmountFloat := new(big.Float).SetInt(currencyAmount)
		priceFloat := new(big.Float).SetFloat64(float64(price))
		divisor := new(big.Float).SetFloat64(1e18)
		
		// 计算：(currencyAmount * price) / 1e18
		currencyAmountFloat.Mul(currencyAmountFloat, priceFloat)
		currencyAmountFloat.Quo(currencyAmountFloat, divisor)
		
		// 转换为float64
		currencyAmountFloat64, _ := currencyAmountFloat.Float64()
		valueState := 0
		if currencyAmountFloat64 > VALUE_TRESHOLD_USD {
			valueState = 1
		}

		// 更新交易对信息
		pair.ValueState = valueState
		pair.ValueInUsd = int(currencyAmountFloat64)
		if valueState == 1 && (pair.CheckState == nil || *pair.CheckState == 0) {
			checkState := CHECK_STATE_WAITING_CHECK
			pair.CheckState = &checkState
		}

		// 从 map 中移除已处理的交易对
		delete(p.pairMap, pairAddr)
	}

	// 检查是否所有交易对都已处理
	if len(p.pairMap) == 0 {
		result.ShouldContinue = false
	} else {
		// 更新过滤器，只包含未处理的交易对
		remainingAddresses := make([]common.Address, 0, len(p.pairMap))
		for addr := range p.pairMap {
			remainingAddresses = append(remainingAddresses, addr)
		}
		newFilter := original
		newFilter.Addresses = remainingAddresses
		result.NewFilter = &newFilter
	}

	return result
}
