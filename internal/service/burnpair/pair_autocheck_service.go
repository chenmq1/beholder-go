package burnpair

import (
	"fmt"
	"log"
	"strings"
	"time"

	"github.com/beholder-daemon/internal/model"
	"github.com/beholder-daemon/internal/model/burnpair"
	"github.com/jinzhu/gorm"
)

type PairAutocheckService struct {
	db                   *gorm.DB
	burnPairTaskRepo     *BurnPairTaskRepository
	uniswapV2PairRepo    *UniswapV2PairRepository
	contractCodeRepo     *ContractCodeRepository
}

func NewPairAutocheckService(db *gorm.DB) *PairAutocheckService {
	return &PairAutocheckService{
		db:                   db,
		burnPairTaskRepo:     NewBurnPairTaskRepository(db),
		uniswapV2PairRepo:    NewUniswapV2PairRepository(db),
		contractCodeRepo:     NewContractCodeRepository(db),
	}
}

func (s *PairAutocheckService) ProcessTask() {
	record := &burnpair.BurnPairTask{
		Type:      "autoCheck",
		StartTime: time.Now(),
		Status:    1,
		Message:   "",
	}

	if err := s.burnPairTaskRepo.Create(record); err != nil {
		log.Printf("创建任务记录失败: %v", err)
		return
	}

	log.Println("处理pairAutocheck任务:")

	pairs, err := s.uniswapV2PairRepo.FindByCheckState(CHECK_STATE_CODEGOT)
	if err != nil {
		log.Printf("获取待检查交易对失败: %v", err)
		record.Status = -1
		record.Message = fmt.Sprintf("获取待检查交易对失败: %v", err)
		record.EndTime = time.Now()
		s.burnPairTaskRepo.Update(record)
		return
	}

	pairTotalNumber := len(pairs)
	fail := 0
	noburn := 0
	burn := 0

	for _, pair := range pairs {
		code, err := s.contractCodeRepo.FindByAddress(pair.TokenAddress)
		if err != nil || code == nil {
			checkState := CHECK_STATE_AUTOCHECKED_FAIL
			pair.CheckState = &checkState
			fail++
			continue
		}

		verifiedCode := code.VerifiedCodeDecompressed
		decompiledCode := code.DecompiledCodeDecompressed

		if (verifiedCode == "" || verifiedCode == "0x") && (decompiledCode == "" || decompiledCode == "0x") {
			checkState := CHECK_STATE_AUTOCHECKED_FAIL
			pair.CheckState = &checkState
			fail++
		} else if s.searchInCode(verifiedCode, ".sync") || s.searchInCode(decompiledCode, ".sync") {
			checkState := CHECK_STATE_AUTOCHECKED_BURN
			pair.CheckState = &checkState
			burn++
		} else {
			checkState := CHECK_STATE_AUTOCHECKED_NOBURN
			pair.CheckState = &checkState
			noburn++
		}
	}

	if err := s.uniswapV2PairRepo.SaveAll(pairs); err != nil {
		log.Printf("批量保存交易对失败: %v", err)
	}

	record.Status = 0
	record.EndTime = time.Now()
	record.Message = fmt.Sprintf("自动检查pair %d个： 自动有 %d个； 自动无 %d个； 自动白 %d 个", pairTotalNumber, burn, noburn, fail)

	if err := s.burnPairTaskRepo.Update(record); err != nil {
		log.Printf("更新任务状态失败: %v", err)
	}

	log.Printf("pairAutocheck任务处理完成: %s", record.Message)
}

func (s *PairAutocheckService) searchInCode(codeContent string, keyword string) bool {
	if codeContent == "" || keyword == "" {
		return false
	}

	if strings.HasPrefix(codeContent, "{{") && strings.HasSuffix(codeContent, "}}") {
		return false
	}

	return strings.Contains(codeContent, keyword)
}

type ContractCodeRepository struct {
	db *gorm.DB
}

func NewContractCodeRepository(db *gorm.DB) *ContractCodeRepository {
	return &ContractCodeRepository{db: db}
}

func (r *ContractCodeRepository) FindByAddress(address string) (*model.ContractCode, error) {
	var code model.ContractCode
	err := r.db.First(&code, "address = ?", address).Error
	if err != nil {
		return nil, err
	}
	return &code, nil
}

func (r *UniswapV2PairRepository) FindByCheckState(checkState int) ([]*burnpair.UniswapPair, error) {
	var pairs []*burnpair.UniswapPair
	err := r.db.Where("check_state = ? AND deleted = ?", checkState, 0).Find(&pairs).Error
	return pairs, err
}
