package uniswapcallback

import (
	"context"
	"fmt"
	"log"
	"strconv"
	"strings"
	"sync"
	"time"

	"github.com/beholder-daemon/internal/model/uniswapcallback"
	"github.com/beholder-daemon/internal/service/getEvent"
	"github.com/beholder-daemon/internal/utils"
	"github.com/ethereum/go-ethereum"
	"github.com/ethereum/go-ethereum/common"
	"github.com/ethereum/go-ethereum/core/types"
	"github.com/jinzhu/gorm"
)

const MAX_BLOCK_PER_TASK = 200000

type ThreeGetService struct {
	db                   *gorm.DB
	clients              map[string]*utils.Web3Client
	swapCallbackTaskRepo *SwapCallbackTaskRepository
	threeSenderRepo      *ThreeSenderRepository
}

func NewThreeGetService(db *gorm.DB, clients map[string]*utils.Web3Client) *ThreeGetService {
	return &ThreeGetService{
		db:                   db,
		clients:              clients,
		swapCallbackTaskRepo: NewSwapCallbackTaskRepository(db),
		threeSenderRepo:      NewThreeSenderRepository(db),
	}
}

func (s *ThreeGetService) getClientByChainId(chainId int) *utils.Web3Client {
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

func (s *ThreeGetService) ProcessTask(message map[string]interface{}) {
	record := &uniswapcallback.SwapCallbackTask{
		Type: "threeGet",
	}

	chainIdStr, ok := message["chainId"].(string)
	if !ok {
		log.Printf("缺少 chainId 参数或格式错误")
		record.Status = -1
		record.Message = "缺少 chainId 参数或格式错误"
		record.StartTime = time.Now()
		s.swapCallbackTaskRepo.Create(record)
		return
	}
	chainId, err := strconv.Atoi(chainIdStr)
	if err != nil {
		log.Printf("chainId 格式错误: %v", err)
		record.Status = -1
		record.Message = fmt.Sprintf("chainId 格式错误: %v", err)
		record.StartTime = time.Now()
		s.swapCallbackTaskRepo.Create(record)
		return
	}
	record.ChainID = int16(chainId)

	callbackKey := "uniswapV3SwapCallback"
	if keyInterface, ok := message["callbackKey"]; ok && keyInterface != nil {
		callbackKey = fmt.Sprintf("%v", keyInterface)
	}
	record.CallbackKey = callbackKey

	client := s.getClientByChainId(chainId)
	if client == nil {
		log.Printf("找不到 chainId %d 的客户端", chainId)
		record.Status = -1
		record.Message = fmt.Sprintf("找不到 chainId %d 的客户端", chainId)
		s.swapCallbackTaskRepo.Create(record)
		return
	}

	blockNumber, err := client.EthClient.BlockNumber(context.Background())
	if err != nil {
		log.Printf("获取区块号失败: %v", err)
		record.Status = -1
		record.Message = fmt.Sprintf("获取区块号失败: %v", err)
		s.swapCallbackTaskRepo.Create(record)
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

	if startBlock == 0 {
		maxBlock, err := s.swapCallbackTaskRepo.FindMaxProcessedBlock(int16(chainId), callbackKey)
		if err == nil && maxBlock > 0 {
			startBlock = maxBlock
		}
	}

	if endBlock > startBlock+uint64(MAX_BLOCK_PER_TASK) {
		endBlock = startBlock + uint64(MAX_BLOCK_PER_TASK)
	}

	record.StartBlock = startBlock
	record.EndBlock = endBlock
	record.Status = 1
	record.StartTime = time.Now()

	if err := s.swapCallbackTaskRepo.Create(record); err != nil {
		log.Printf("创建任务记录失败: %v", err)
		return
	}

	sig, ok := CallbackSignatures[callbackKey]
	if !ok || sig.Topic == "" {
		log.Printf("找不到有效的 callbackKey: %s 或 topic 为空", callbackKey)
		record.Status = -1
		record.Message = fmt.Sprintf("找不到有效的 callbackKey: %s 或 topic 为空", callbackKey)
		s.swapCallbackTaskRepo.Update(record)
		return
	}

	log.Printf("处理threeGet任务: chainId=%d, callbackKey=%s, startBlock=%d, endBlock=%d", chainId, callbackKey, startBlock, endBlock)

	allSenders := make(map[string]bool)
	var mu sync.Mutex

	// 事件处理函数：提取每个事件 Topics[1] 中的 sender 地址（并发调用，内部已加锁）
	process := func(logs []types.Log, original ethereum.FilterQuery) getevent.Result {
		for _, l := range logs {
			if len(l.Topics) < 2 {
				continue
			}
			sender := common.BytesToAddress(l.Topics[1].Bytes()[12:]).Hex()
			sender = strings.ToLower(strings.TrimPrefix(sender, "0x"))

			mu.Lock()
			allSenders[sender] = true
			mu.Unlock()
		}
		return getevent.DefaultResult()
	}

	filter := ethereum.FilterQuery{
		Topics: [][]common.Hash{{common.HexToHash(sig.Topic)}},
	}

	// 分段并发反向获取事件
	if _, _, err := getevent.BackwardConcurrent(
		context.Background(),
		client.EthClient,
		int64(startBlock),
		int64(endBlock),
		filter,
		process,
		nil,
		getevent.ConcurrentConfig{
			SegmentSize: 999,
			MaxWorkers:  18,
		},
	); err != nil {
		log.Printf("部分区块段处理失败: %v", err)
	}

	sendersLogged := len(allSenders)
	log.Printf("total senders: %d", sendersLogged)

	sendersInserted := s.batchInsertIgnore(allSenders, chainId, callbackKey)

	record.Status = 0
	record.EndTime = time.Now()
	record.Message = fmt.Sprintf("created %d/%d", sendersLogged, sendersInserted)

	if err := s.swapCallbackTaskRepo.Update(record); err != nil {
		log.Printf("更新任务状态失败: %v", err)
	}

	log.Printf("threeGet任务处理完成: %s", record.Message)
}

func (s *ThreeGetService) batchInsertIgnore(senders map[string]bool, chainId int, callbackKey string) int {
	type sender struct {
		address     string
		chainId     int
		callbackKey string
	}

	var toInsert []sender
	for addr := range senders {
		toInsert = append(toInsert, sender{
			address:     "0x" + addr,
			chainId:     chainId,
			callbackKey: callbackKey,
		})
	}

	if len(toInsert) == 0 {
		return 0
	}

	var beforeCount int64
	s.db.Model(&uniswapcallback.ThreeSender{}).Where("chain_id = ? AND callback_key = ?", chainId, callbackKey).Count(&beforeCount)

	for _, t := range toInsert {
		s.db.Exec("INSERT IGNORE INTO three_sender (address, chain_id, callback_key) VALUES (?, ?, ?)", t.address, t.chainId, t.callbackKey)
	}

	var afterCount int64
	s.db.Model(&uniswapcallback.ThreeSender{}).Where("chain_id = ? AND callback_key = ?", chainId, callbackKey).Count(&afterCount)

	return int(afterCount - beforeCount)
}
