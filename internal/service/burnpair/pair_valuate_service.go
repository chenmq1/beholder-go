package burnpair

import (
	"fmt"
	"log"
	"sync"
	"time"

	"github.com/jinzhu/gorm"

	"github.com/beholder-daemon/internal/model/burnpair"
	"github.com/beholder-daemon/internal/utils"
)

const (
	CHECK_STATE_NOBURN             = 0
	CHECK_STATE_SAFEBURN           = 1
	CHECK_STATE_REBASE             = 2
	CHECK_STATE_DEPENDBURN_1       = 11
	CHECK_STATE_DEPENDBURN_2       = 12
	CHECK_STATE_DEPENDBURN_3       = 13
	CHECK_STATE_UNSAFEBURN         = 99
	CHECK_STATE_WAITING_CHECK      = 100
	CHECK_STATE_CODEGOT            = 101
	CHECK_STATE_AUTOCHECKED_NOBURN = 201
	CHECK_STATE_AUTOCHECKED_BURN   = 202
	CHECK_STATE_AUTOCHECKED_FAIL   = 299

	EXPIRE_INACTIVE_BLOCK = 1344000 // 7 days
	MAX_CONTRACT_QUERY    = 49
)

type PairValuateService struct {
	db                 *gorm.DB
	bscClient          *utils.Web3Client
	web3Utils          *utils.Web3Utils
	pairValuateSubService *PairValuateSubService
}

func NewPairValuateService(db *gorm.DB, bscClient *utils.Web3Client, web3Utils *utils.Web3Utils) *PairValuateService {
	return &PairValuateService{
		db:                 db,
		bscClient:          bscClient,
		web3Utils:          web3Utils,
		pairValuateSubService: NewPairValuateSubService(db, bscClient, web3Utils),
	}
}

func (s *PairValuateService) ProcessTask(message map[string]interface{}) {
	record := &burnpair.BurnPairTask{
		Type:      "syncEvent",
		StartTime: time.Now(),
		Status:    1,
		Message:   "processing",
	}

	if err := s.db.Create(record).Error; err != nil {
		log.Printf("保存任务记录失败: %v", err)
		return
	}

	defer func() {
		if err := recover(); err != nil {
			log.Printf("处理任务时发生恐慌: %v", err)
			record.Status = -1
			record.Message = "处理任务时发生恐慌"
			record.EndTime = time.Now()
			s.db.Save(record)
		}
	}()

	log.Printf("处理pairValuate任务: %v", message)

	// 获取最新区块
	latestBlock, err := s.bscClient.EthClient.BlockNumber(s.bscClient.Ctx)
	if err != nil {
		log.Printf("获取最新区块失败: %v", err)
		record.Status = -1
		record.Message = "获取最新区块失败"
		record.EndTime = time.Now()
		s.db.Save(record)
		return
	}

	// 过期不活跃的交易对
	inactiveBlock := latestBlock - EXPIRE_INACTIVE_BLOCK
	result := s.db.Model(&burnpair.UniswapPair{}).Where("deleted=0 AND ((pair_create_block<? AND check_state IS NULL) OR check_state < ?)", inactiveBlock, CHECK_STATE_DEPENDBURN_1).Update("deleted", 1)
	deactivated := int(result.RowsAffected)
	log.Printf("过期不活跃交易对数量: %d", deactivated)

	// 从数据库中获取需要评估的交易对
	var pairs []burnpair.UniswapPair
	if err := s.db.Where("deleted=0").Order("updated_block").Find(&pairs).Error; err != nil {
		log.Printf("获取需要评估的交易对失败: %v", err)
		record.Status = -1
		record.Message = "获取需要评估的交易对失败"
		record.EndTime = time.Now()
		s.db.Save(record)
		return
	}

	valuated := len(pairs)
	log.Printf("需要评估的交易对数量: %d", valuated)

	if valuated == 0 {
		record.Status = 0
		record.EndTime = time.Now()
		record.Message = "没有需要评估的交易对"
		s.db.Save(record)
		return
	}

	// 根据区块差异选择评估方法
	blockDiff := latestBlock - pairs[0].UpdatedBlock
	var valuable int

	if blockDiff > 50000 {
		// 使用 BalanceOf 方法
		log.Printf("blockDiff:%d,使用 BalanceOf 方法评估交易对数量: %d", blockDiff, valuated)
		var wg sync.WaitGroup
		var mu sync.Mutex

		// 限制协程数目：最多20个协程同时运行
		semaphore := make(chan struct{}, 20)

		for _, pair := range pairs {
			wg.Add(1)
			go func(p burnpair.UniswapPair) {
				defer wg.Done()
				// 获取信号量
				semaphore <- struct{}{}
				defer func() { <-semaphore }() // 释放信号量
				
				valued := s.pairValuateSubService.ProcessSubTask(&p)
				mu.Lock()
				valuable += valued
				mu.Unlock()
				// 更新交易对
				p.UpdatedBlock = latestBlock
				s.db.Save(&p)
			}(pair)
		}

		wg.Wait()
	} else {
		log.Printf("blockDiff:%d,使用监控历史 sync 事件的方法评估交易对数量: %d", blockDiff, valuated)
		// 使用监控历史 sync 事件的方法
		fromBlock := pairs[0].UpdatedBlock
		if fromBlock < inactiveBlock {
			fromBlock = inactiveBlock
		}

		// 分组处理
		var wg sync.WaitGroup
		var mu sync.Mutex

		// 限制协程数目：最多20个协程同时运行
		semaphore := make(chan struct{}, 20)

		for i := 0; i < len(pairs); i += MAX_CONTRACT_QUERY {
			wg.Add(1)
			end := i + MAX_CONTRACT_QUERY
			if end > len(pairs) {
				end = len(pairs)
			}
			group := pairs[i:end]

			go func(pairGroup []burnpair.UniswapPair) {
				defer wg.Done()
				// 获取信号量
				semaphore <- struct{}{}
				defer func() { <-semaphore }() // 释放信号量
				
				valued := s.pairValuateSubService.ProcessSubTaskWithSyncEvents(pairGroup, fromBlock, latestBlock)
				mu.Lock()
				valuable += valued
				mu.Unlock()
				// 更新交易对
				for j := range pairGroup {
					pairGroup[j].UpdatedBlock = latestBlock
					s.db.Save(&pairGroup[j])
				}
			}(group)
		}

		wg.Wait()
	}

	// 更新任务状态
	record.Status = 0
	record.EndTime = time.Now()
	record.Message = fmt.Sprintf("deactivate %d; evaluate %d/%d", deactivated, valuable, valuated)
	if err := s.db.Save(record).Error; err != nil {
		log.Printf("更新任务状态失败: %v", err)
	}

	log.Printf("处理pairValuate任务完成，blockNumber: %d", latestBlock)
}
