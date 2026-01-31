package burnpair

import (
	"context"
	"fmt"
	"time"

	"github.com/ethereum/go-ethereum"
	"github.com/ethereum/go-ethereum/common"
	"github.com/ethereum/go-ethereum/core/types"
	"github.com/ethereum/go-ethereum/ethclient"
	"github.com/jinzhu/gorm"

	"github.com/beholder-daemon/internal/model/burnpair"
	"github.com/beholder-daemon/internal/utils"
)

// PairCreateService 交易对创建服务
type PairCreateService struct {
	db           *gorm.DB
	client       *ethclient.Client
	web3Utils    *utils.Web3Utils
	createCount  int
}

// NewPairCreateService 创建PairCreateService实例
func NewPairCreateService(db *gorm.DB, client *ethclient.Client) *PairCreateService {
	return &PairCreateService{
		db:          db,
		client:      client,
		web3Utils:   utils.NewWeb3Utils(),
		createCount: 0,
	}
}

// ProcessTask 处理任务消息
func (s *PairCreateService) ProcessTask(message map[string]interface{}) error {
	fmt.Printf("处理pairCreate任务: %v\n", message)
	s.createCount = 0

	// 保存任务记录到数据库
	task := burnpair.BurnPairTask{
		Type:      "createEvent",
		StartTime: time.Now(),
		Status:    1,
		Message:   "processing",
	}

	var startBlock, endBlock uint64

	// 解析消息中的区块范围
	if endBlockVal, ok := message["endBlock"].(float64); ok {
		endBlock = uint64(endBlockVal)
	}

	if startBlockVal, ok := message["startBlock"].(float64); ok {
		startBlock = uint64(startBlockVal)
	}

	// 如果结束区块为0，使用当前最新区块
	if endBlock == 0 {
		blockNumber, err := s.client.BlockNumber(context.Background())
		if err != nil {
			return fmt.Errorf("获取最新区块失败: %w", err)
		}
		endBlock = blockNumber
	}

	// 如果起始区块为0，使用数据库中已处理的最大区块
	if startBlock == 0 {
		var maxBlock uint64
		if err := s.db.Model(&burnpair.BurnPairTask{}).Select("COALESCE(MAX(end_block), 0)").Scan(&maxBlock).Error; err != nil {
			return fmt.Errorf("获取最大已处理区块失败: %w", err)
		}
		startBlock = maxBlock
	}

	// 更新任务记录
	task.StartBlock = startBlock
	task.EndBlock = endBlock
	task.Message = "processing" // 确保Message字段被显式设置

	// 打印task对象信息
	fmt.Printf("Task object: %+v\n", task)

	if err := s.db.Create(&task).Error; err != nil {
		return fmt.Errorf("保存任务记录失败: %w", err)
	}

	// 处理业务逻辑
	filter := ethereum.FilterQuery{
		Topics: [][]common.Hash{
			{common.HexToHash("0x0d3648bd0f6ba80134a33ba9275ac585d9d315f0ad8355cddefde31afa28d0e9")},
		},
	}

	// 调用Web3Utils处理区块链事件
	ctx := context.Background()
	if err := s.web3Utils.StepGetLogWithDefaultStep(ctx, s.client, int64(startBlock), int64(endBlock), filter, s); err != nil {
		return fmt.Errorf("处理区块链事件失败: %w", err)
	}

	// 更新任务状态
	task.Status = 0
	task.EndTime = time.Now()
	task.Message = fmt.Sprintf("created %d", s.createCount)

	if err := s.db.Save(&task).Error; err != nil {
		return fmt.Errorf("更新任务记录失败: %w", err)
	}

	fmt.Printf("pairCreate任务处理完成: %v\n", message)
	return nil
}

// 货币列表
var currencyList = []string{
	"0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c", // BNB
	"0x55d398326f99059ff775485246999027b3197955", // USDT
}

// ProcessEvents 处理区块链事件
func (s *PairCreateService) ProcessEvents(logs []types.Log, original ethereum.FilterQuery) utils.EventProcessResult {
	for _, log := range logs {
		// 解析事件数据
		// 正确获取pair地址：从data的前32字节中取最后20字节（以太坊地址长度）
		pairAddress := common.BytesToAddress(log.Data[:32]).Hex()
		token0 := getShortAddress(log.Topics[1].Hex())
		token1 := getShortAddress(log.Topics[2].Hex())
		factoryAddress := log.Address.Hex()
		blockNumber := log.BlockNumber

		// 确定代币和货币
		var tokenAddress, currencyAddress string
		var tokenFirst int16 = 1

		if containsCurrency(token0) {
			tokenAddress = token1
			currencyAddress = token0
			tokenFirst = 0
		} else if containsCurrency(token1) {
			tokenAddress = token0
			currencyAddress = token1
		} else {
			continue // 不包含指定货币的交易对
		}

		// 创建交易对记录
		pair := burnpair.UniswapPair{
			PairAddress:     pairAddress,
			TokenAddress:    tokenAddress,
			CurrencyAddress: currencyAddress,
			TokenFirst:      tokenFirst,
			FactoryAddress:  factoryAddress,
			PairCreateBlock: blockNumber,
			UpdatedBlock:    blockNumber,
			ValueState:      0,
			ValueInUsd:      0,
			// CheckState 默认为nil
			CodeGot:         0,
			Deleted:         0,
		}

		// 打印pair对象信息
		fmt.Printf("Pair object: %+v\n", pair)

		// 使用原始SQL语句保存交易对记录
		var checkStateValue interface{} = nil
		if pair.CheckState != nil {
			checkStateValue = *pair.CheckState
		}
		result := s.db.Exec(
			"INSERT INTO uniswap_pair (pair_address, token_address, currency_address, token_first, factory_address, pair_create_block, updated_block, value_state, value_in_usd, check_state, code_got, deleted) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)",
			pair.PairAddress, pair.TokenAddress, pair.CurrencyAddress, pair.TokenFirst, pair.FactoryAddress, pair.PairCreateBlock, pair.UpdatedBlock, pair.ValueState, pair.ValueInUsd, checkStateValue, pair.CodeGot, pair.Deleted,
		)
		if result.Error != nil {
			fmt.Printf("保存交易对记录失败: %v\n", result.Error)
			continue
		}

		s.createCount++
	}

	return utils.NewEventProcessResult()
}

// containsCurrency 检查地址是否在货币列表中
func containsCurrency(address string) bool {
	for _, currency := range currencyList {
		if address == currency {
			return true
		}
	}
	return false
}

// getShortAddress 获取简短的地址表示
func getShortAddress(longAddress string) string {
	if len(longAddress) > 26 {
		return "0x" + longAddress[26:]
	}
	return longAddress
}
