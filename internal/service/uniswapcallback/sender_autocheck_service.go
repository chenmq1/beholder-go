package uniswapcallback

import (
	"fmt"
	"log"
	"strings"
	"time"

	"github.com/beholder-daemon/internal/model"
	"github.com/beholder-daemon/internal/model/uniswapcallback"
	"github.com/jinzhu/gorm"
)

const (
	CHECK_STATE_AUTOCHECKED_NOBURN = 201
	CHECK_STATE_AUTOCHECKED_BURN   = 202
	CHECK_STATE_AUTOCHECKED_FAIL   = 299
)

type SenderAutocheckService struct {
	db                      *gorm.DB
	swapCallbackTaskRepo    *SwapCallbackTaskRepository
	threeSenderRepo         *ThreeSenderRepository
	contractCodeRepo        *ContractCodeRepositoryForCallback
}

func NewSenderAutocheckService(db *gorm.DB) *SenderAutocheckService {
	return &SenderAutocheckService{
		db:                      db,
		swapCallbackTaskRepo:    NewSwapCallbackTaskRepository(db),
		threeSenderRepo:         NewThreeSenderRepository(db),
		contractCodeRepo:        NewContractCodeRepositoryForCallback(db),
	}
}

func (s *SenderAutocheckService) ProcessTask(message map[string]interface{}) {
	record := &uniswapcallback.SwapCallbackTask{
		Type:    "autoCheck",
		Status:  1,
		Message: "",
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

	if err := s.swapCallbackTaskRepo.Create(record); err != nil {
		log.Printf("创建任务记录失败: %v", err)
		return
	}

	log.Println("处理senderAutoCheck任务:")

	senders, err := s.threeSenderRepo.FindByCodeGotGreaterThanAndChainIdAndStatusIsNull(1, int16(chainId))
	if err != nil {
		log.Printf("获取待检查发送者失败: %v", err)
		record.Status = -1
		record.Message = fmt.Sprintf("获取待检查发送者失败: %v", err)
		record.EndTime = time.Now()
		s.swapCallbackTaskRepo.Update(record)
		return
	}

	pairTotalNumber := len(senders)
	fail := 0
	noburn := 0
	burn := 0

	for _, sender := range senders {
		code, err := s.contractCodeRepo.FindByAddress(sender.Address)
		if err != nil || code == nil {
			sender.Status = CHECK_STATE_AUTOCHECKED_FAIL
			fail++
			continue
		}

		verifiedCode := code.VerifiedCodeDecompressed
		decompiledCode := code.DecompiledCodeDecompressed

		if (verifiedCode == "" || verifiedCode == "0x") && (decompiledCode == "" || decompiledCode == "0x") {
			sender.Status = CHECK_STATE_AUTOCHECKED_FAIL
			fail++
		} else if s.searchInCode(verifiedCode, "uniswapV3SwapCallback") || s.searchInCode(decompiledCode, "uniswapV3SwapCallback") ||
			s.searchInCode(verifiedCode, "fa461e33") || s.searchInCode(decompiledCode, "fa461e33") ||
			(chainId == 2 && (s.searchInCode(verifiedCode, "pancakeV3SwapCallback") || s.searchInCode(decompiledCode, "pancakeV3SwapCallback") ||
				s.searchInCode(verifiedCode, "23a69e75") || s.searchInCode(decompiledCode, "23a69e75"))) {
			sender.Status = CHECK_STATE_AUTOCHECKED_BURN
			burn++
		} else {
			sender.Status = CHECK_STATE_AUTOCHECKED_NOBURN
			noburn++
		}
	}

	if err := s.threeSenderRepo.SaveAll(senders); err != nil {
		log.Printf("批量保存发送者失败: %v", err)
	}

	record.Status = 0
	record.EndTime = time.Now()
	record.Message = fmt.Sprintf("自动检查pair %d个： 自动有 %d个； 自动无 %d个； 自动白 %d 个", pairTotalNumber, burn, noburn, fail)

	if err := s.swapCallbackTaskRepo.Update(record); err != nil {
		log.Printf("更新任务状态失败: %v", err)
	}

	log.Printf("senderAutoCheck任务处理完成: %s", record.Message)
}

func (s *SenderAutocheckService) searchInCode(codeContent string, keyword string) bool {
	if codeContent == "" || keyword == "" {
		return false
	}

	if strings.HasPrefix(codeContent, "{{") && strings.HasSuffix(codeContent, "}}") {
		return false
	}

	return strings.Contains(codeContent, keyword)
}

type ContractCodeRepositoryForCallback struct {
	db *gorm.DB
}

func NewContractCodeRepositoryForCallback(db *gorm.DB) *ContractCodeRepositoryForCallback {
	return &ContractCodeRepositoryForCallback{db: db}
}

func (r *ContractCodeRepositoryForCallback) FindByAddress(address string) (*model.ContractCode, error) {
	var code model.ContractCode
	err := r.db.First(&code, "address = ?", address).Error
	if err != nil {
		return nil, err
	}
	return &code, nil
}
