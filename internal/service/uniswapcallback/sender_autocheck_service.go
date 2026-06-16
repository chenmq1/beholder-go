package uniswapcallback

import (
	"fmt"
	"log"
	"strconv"
	"strings"
	"time"

	"github.com/beholder-daemon/internal/model"
	"github.com/beholder-daemon/internal/model/uniswapcallback"
	"github.com/beholder-daemon/internal/utils"
	"github.com/jinzhu/gorm"
)

const minDecompileCodeLines = 100

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

	if err := s.swapCallbackTaskRepo.Create(record); err != nil {
		log.Printf("创建任务记录失败: %v", err)
		return
	}

	log.Println("处理senderAutoCheck任务:")

	senders, err := s.threeSenderRepo.FindByCodeGotGreaterThanAndChainIdAndStatusIsNullAndCallbackKey(1, int16(chainId), callbackKey)// 1 means > 1, 既不是未成功下载：0，也不是eoa：1
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
		code, err := s.contractCodeRepo.FindByAddress(sender.Address, record.ChainID)
		if err != nil || code == nil {
			sender.Status = utils.CHECK_STATE_AUTOCHECKED_FAIL
			fail++
			continue
		}

		verifiedCode := code.VerifiedCodeDecompressed
		decompiledCode := code.DecompiledCodeDecompressed

		// 步骤1: 如果 有验证代码，直接根据验证代码来
		if verifiedCode != "" && verifiedCode != "0x" {
			if s.searchCallbackSignature(verifiedCode, "", callbackKey) {
				sender.Status = utils.CHECK_STATE_AUTOCHECKED_POSITIVE
				burn++
			} else {
				sender.Status = utils.CHECK_STATE_AUTOCHECKED_NEGATIVE
				noburn++
			}
			continue
		}

		// 步骤2: verifiedCode 无效，反编译也没有，那就失败了
		if decompiledCode == "" || decompiledCode == "0x" {
			sender.Status = utils.CHECK_STATE_AUTOCHECKED_FAIL
			fail++
			continue
		}

		// 步骤3: 检查 decompiledCode 的行数是否达到最小要求，太少也证明反编译代码失效
		decompileLineCount := strings.Count(decompiledCode, "\n") + 1
		if decompileLineCount < minDecompileCodeLines {
			sender.Status = utils.CHECK_STATE_AUTOCHECKED_FAIL
			fail++
			continue
		}

		// 步骤4: 使用 decompiledCode 进行检查
		if !s.searchCallbackSignature("", decompiledCode, callbackKey) {
			sender.Status = utils.CHECK_STATE_AUTOCHECKED_NEGATIVE
			noburn++
			continue
		}

		// 步骤5: 签名检查通过，进一步验证是否存在实际的函数定义
		sig, ok := CallbackSignatures[callbackKey]
		if !ok {
			sender.Status = utils.CHECK_STATE_AUTOCHECKED_FAIL
			fail++
		} else if !s.hasFunctionDefinition(decompiledCode, sig.FunctionName, sig.Selector) {
			sender.Status = utils.CHECK_STATE_AUTOCHECKED_FAIL
			fail++
		} else {
			sender.Status = utils.CHECK_STATE_AUTOCHECKED_POSITIVE
			burn++
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

func (s *SenderAutocheckService) searchCallbackSignature(verifiedCode, decompiledCode, key string) bool {
	sig, ok := CallbackSignatures[key]
	if !ok {
		return false
	}

	if verifiedCode != "" && verifiedCode != "0x" {
		if s.searchInCode(verifiedCode, sig.FunctionName) {
			return true
		} else{
			return false
		}
	}

	if decompiledCode != "" && decompiledCode != "0x" {
		if s.searchInCode(decompiledCode, sig.FunctionName) || s.searchInCode(decompiledCode, sig.Selector) {
			return true
		}
	}

	return false
}

func (s *SenderAutocheckService) hasFunctionDefinition(code string, functionName string, functionSelector string) bool {
	functionNamePattern := "function " + functionName + "("
	functionSelectorPattern := "function 0x" + functionSelector + "("
	return strings.Contains(code, functionNamePattern) || strings.Contains(code, functionSelectorPattern)
}

type ContractCodeRepositoryForCallback struct {
	db *gorm.DB
}

func NewContractCodeRepositoryForCallback(db *gorm.DB) *ContractCodeRepositoryForCallback {
	return &ContractCodeRepositoryForCallback{db: db}
}

func (r *ContractCodeRepositoryForCallback) FindByAddress(address string, chainId int16) (*model.ContractCode, error) {
	var code model.ContractCode
	err := r.db.First(&code, "address = ? AND chain_id = ?", address, chainId).Error
	if err != nil {
		return nil, err
	}
	return &code, nil
}
