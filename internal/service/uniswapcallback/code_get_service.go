package uniswapcallback

import (
	"fmt"
	"log"
	"time"

	"github.com/beholder-daemon/internal/model/uniswapcallback"
	"github.com/beholder-daemon/internal/service/getcode"
	"github.com/jinzhu/gorm"
)

type UniswapCodeGetService struct {
	db                   *gorm.DB
	swapCallbackTaskRepo *SwapCallbackTaskRepository
	threeSenderRepo      *ThreeSenderRepository
	codeGetService       *getcode.GetCodeService
}

func NewUniswapCodeGetService(db *gorm.DB, getCodeService *getcode.GetCodeService) *UniswapCodeGetService {
	return &UniswapCodeGetService{
		db:                   db,
		swapCallbackTaskRepo: NewSwapCallbackTaskRepository(db),
		threeSenderRepo:      NewThreeSenderRepository(db),
		codeGetService:       getCodeService,
	}
}

func (s *UniswapCodeGetService) ProcessTask(message map[string]interface{}) {
	record := &uniswapcallback.SwapCallbackTask{
		Type: "codeGet",
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
	record.Status = 1
	record.StartTime = time.Now()

	if err := s.swapCallbackTaskRepo.Create(record); err != nil {
		log.Printf("创建任务记录失败: %v", err)
		return
	}

	log.Println("处理codeGet任务:")

	senders, err := s.threeSenderRepo.FindSenderToGetCode(int16(chainId))
	if err != nil {
		log.Printf("获取待获取代码的发送者失败: %v", err)
		record.Status = -1
		record.Message = fmt.Sprintf("获取待获取代码的发送者失败: %v", err)
		record.EndTime = time.Now()
		s.swapCallbackTaskRepo.Update(record)
		return
	}

	gotCount := 0
	for _, sender := range senders {
		log.Printf("获取代码: %s", sender.Address)
		result, err := s.codeGetService.GetCode(sender.Address, chainId)
		if err != nil {
			log.Printf("获取代码失败，地址: %s, 错误: %v", sender.Address, err)
			continue
		}
		if result > 1 {
			gotCount++
		}
		sender.CodeGot = result
	}

	if err := s.threeSenderRepo.SaveAll(senders); err != nil {
		log.Printf("批量保存发送者失败: %v", err)
	}

	record.Status = 0
	record.EndTime = time.Now()
	record.Message = fmt.Sprintf("code got: %d/%d", gotCount, len(senders))

	if err := s.swapCallbackTaskRepo.Update(record); err != nil {
		log.Printf("更新任务状态失败: %v", err)
	}

	log.Printf("codeGet任务处理完成: %s", record.Message)
}
