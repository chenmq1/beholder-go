package uniswapcallback

import (
	"context"
	"fmt"
	"log"
	"math/big"
	"strings"
	"sync"
	"time"

	"github.com/beholder-daemon/internal/model/uniswapcallback"
	"github.com/beholder-daemon/internal/utils"
	"github.com/ethereum/go-ethereum"
	"github.com/ethereum/go-ethereum/common"
	"github.com/ethereum/go-ethereum/core/types"
	"github.com/jinzhu/gorm"
)

const (
	MAX_BLOCK_PER_TASK = 120000
	SYNC_EVENT_TOPIC    = "0x19b47279256b2a23a1665c810c8d55a1758940ee09377d4f8d26497a3577dc83"
)

type ThreeGetSubService struct {
	db        *gorm.DB
	clients   map[string]*utils.Web3Client
	web3Utils *utils.Web3Utils
}

func NewThreeGetSubService(db *gorm.DB, clients map[string]*utils.Web3Client, web3Utils *utils.Web3Utils) *ThreeGetSubService {
	return &ThreeGetSubService{
		db:        db,
		clients:   clients,
		web3Utils: web3Utils,
	}
}

func (s *ThreeGetSubService) processSubTask(chainId int, fromBlock, toBlock int64) (map[string]bool, error) {
	client := s.getClientByChainId(chainId)
	if client == nil {
		return nil, fmt.Errorf("找不到 chainId %d 的客户端", chainId)
	}

	result := make(map[string]bool)
	var mu sync.Mutex

	filter := ethereum.FilterQuery{
		FromBlock: big.NewInt(fromBlock),
		ToBlock:   big.NewInt(toBlock),
		Topics:    [][]common.Hash{{common.HexToHash(SYNC_EVENT_TOPIC)}},
	}

	err := s.web3Utils.StepBackwardGetLogWithDefaultStep(
		context.Background(),
		client.EthClient,
		int64(fromBlock),
		int64(toBlock),
		filter,
		&syncEventProcessor{result: &result, mu: &mu},
	)

	return result, err
}

func (s *ThreeGetSubService) getClientByChainId(chainId int) *utils.Web3Client {
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

type syncEventProcessor struct {
	result *map[string]bool
	mu     *sync.Mutex
}

func (p *syncEventProcessor) ProcessEvents(logs []types.Log, original ethereum.FilterQuery) utils.EventProcessResult {
	for _, l := range logs {
		if len(l.Topics) < 2 {
			continue
		}
		sender := common.BytesToAddress(l.Topics[1].Bytes()[12:]).Hex()
		sender = strings.ToLower(strings.TrimPrefix(sender, "0x"))

		p.mu.Lock()
		(*p.result)[sender] = true
		p.mu.Unlock()
	}
	return utils.EventProcessResult{ShouldContinue: true}
}

type ThreeGetService struct {
	db                    *gorm.DB
	threeGetSubService    *ThreeGetSubService
	swapCallbackTaskRepo  *SwapCallbackTaskRepository
	threeSenderRepo       *ThreeSenderRepository
	clients               map[string]*utils.Web3Client
	web3Utils             *utils.Web3Utils
}

func NewThreeGetService(db *gorm.DB, clients map[string]*utils.Web3Client, web3Utils *utils.Web3Utils) *ThreeGetService {
	return &ThreeGetService{
		db:                   db,
		threeGetSubService:   NewThreeGetSubService(db, clients, web3Utils),
		swapCallbackTaskRepo: NewSwapCallbackTaskRepository(db),
		threeSenderRepo:      NewThreeSenderRepository(db),
		clients:              clients,
		web3Utils:            web3Utils,
	}
}

func (s *ThreeGetService) ProcessTask(message map[string]interface{}) {
	record := &uniswapcallback.SwapCallbackTask{
		Type: "threeGet",
	}

	chainIdInterface, ok := message["chainId"]
	if !ok {
		log.Printf("缺少 chainId 参数")
		record.Status = -1
		record.Message = "缺少 chainId 参数"
		record.StartTime = time.Now()
		s.swapCallbackTaskRepo.Create(record)
		return
	}
	chainId := int(chainIdInterface.(float64))
	record.ChainID = int16(chainId)

	client := s.threeGetSubService.getClientByChainId(chainId)
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

	if eb, ok := message["endBlock"].(float64); ok {
		endBlock = uint64(eb)
	}
	if sb, ok := message["startBlock"].(float64); ok {
		startBlock = uint64(sb)
	}

	if startBlock == 0 {
		maxBlock, err := s.swapCallbackTaskRepo.FindMaxProcessedBlock(int16(chainId))
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

	log.Printf("处理threeGet任务: chainId=%d, startBlock=%d, endBlock=%d", chainId, startBlock, endBlock)

	segmentSize := uint64(MAX_BLOCK_PER_TASK / 18)
	var wg sync.WaitGroup
	var mu sync.Mutex
	allSenders := make(map[string]bool)

	for segStart := startBlock; segStart < endBlock; segStart += segmentSize {
		segEnd := segStart + segmentSize
		if segEnd > endBlock {
			segEnd = endBlock
		}

		wg.Add(1)
		go func(segStart, segEnd uint64) {
			defer wg.Done()
			result, err := s.threeGetSubService.processSubTask(chainId, int64(segStart), int64(segEnd))
			if err != nil {
				log.Printf("处理子任务失败: %v", err)
				return
			}
			mu.Lock()
			for sender := range result {
				allSenders[sender] = true
			}
			mu.Unlock()
		}(segStart, segEnd)
	}

	wg.Wait()

	sendersLogged := len(allSenders)
	log.Printf("total: %d, uniqued: %d", 0, sendersLogged)

	sendersInserted := s.batchInsertIgnore(allSenders, chainId)

	record.Status = 0
	record.EndTime = time.Now()
	record.Message = fmt.Sprintf("created %d/%d/%d", 0, sendersLogged, sendersInserted)

	if err := s.swapCallbackTaskRepo.Update(record); err != nil {
		log.Printf("更新任务状态失败: %v", err)
	}

	log.Printf("threeGet任务处理完成: %s", record.Message)
}

func (s *ThreeGetService) batchInsertIgnore(senders map[string]bool, chainId int) int {
	type sender struct {
		address string
		chainId int
	}

	var toInsert []sender
	for addr := range senders {
		toInsert = append(toInsert, sender{
			address: "0x" + addr,
			chainId: chainId,
		})
	}

	if len(toInsert) == 0 {
		return 0
	}

	inserted := 0
	for _, t := range toInsert {
		err := s.db.Exec("INSERT IGNORE INTO three_sender (address, chain_id) VALUES (?, ?)", t.address, t.chainId).Error
		if err == nil {
			inserted++
		}
	}

	return inserted
}
