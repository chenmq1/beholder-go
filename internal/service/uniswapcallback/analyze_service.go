package uniswapcallback

import (
	"fmt"
	"regexp"
	"strings"
	"time"

	"github.com/beholder-daemon/internal/model"
	"github.com/beholder-daemon/internal/model/uniswapcallback"
	"github.com/beholder-daemon/internal/utils"
	"github.com/jinzhu/gorm"
)

// AnalyzeService 分析服务，用于查询符合条件的合约代码并进行安全检查
type AnalyzeService struct {
	db              *gorm.DB
	threeSenderRepo *ThreeSenderRepository
}

// NewAnalyzeService 创建 AnalyzeService 实例
func NewAnalyzeService(db *gorm.DB) *AnalyzeService {
	return &AnalyzeService{
		db:              db,
		threeSenderRepo: NewThreeSenderRepository(db),
	}
}

// SenderWithDecompiledCode 包含反编译代码的 Sender 信息
type SenderWithDecompiledCode struct {
	Address        string
	ChainID        int16
	DecompiledCode string
}

// AnalyzeResult 分析结果
type AnalyzeResult struct {
	Address string
	IsSafe  bool
}

// FindSendersWithPositiveStatus 查询状态为 CHECK_STATE_AUTOCHECKED_POSITIVE 的合约
// 查询条件:
//   - chain_id = chainID
//   - callback_key = callbackKey
//   - status = CHECK_STATE_AUTOCHECKED_POSITIVE (202)
// 关联 contract_code 表获取反编译代码
func (s *AnalyzeService) FindSendersWithPositiveStatus(callbackKey string, chainID int16) ([]*SenderWithDecompiledCode, error) {
	type senderWithCode struct {
		Address        string `gorm:"column:address"`
		ChainID        int16  `gorm:"column:chain_id"`
		DecompiledCode []byte `gorm:"column:decompiled_code"`
	}

	var results []senderWithCode
	err := s.db.Table("three_sender").
		Select("three_sender.address, three_sender.chain_id, contract_code.decompiled_code").
		Joins("INNER JOIN contract_code ON three_sender.address = contract_code.address AND three_sender.chain_id = contract_code.chain_id").
		Where("three_sender.chain_id = ? AND three_sender.callback_key = ? AND three_sender.status = ?",
			chainID, callbackKey, utils.CHECK_STATE_AUTOCHECKED_POSITIVE).
		Find(&results).Error

	if err != nil {
		return nil, err
	}

	var senders []*SenderWithDecompiledCode
	for _, result := range results {
		if len(result.DecompiledCode) == 0 {
			continue
		}

		decompiled, err := decompressCode(result.DecompiledCode)
		if err != nil {
			continue
		}

		senders = append(senders, &SenderWithDecompiledCode{
			Address:        result.Address,
			ChainID:        result.ChainID,
			DecompiledCode: decompiled,
		})
	}

	return senders, nil
}

// IsSafeContract 检查合约是否安全
// 规则：
// - tx.origin 使用了就不安全
// - msg.sender 只有在进行了地址比对时才不安全，作为入参传递算安全
// - 比对形式包括：msg.sender == xxx, msg.sender != xxx, msg.sender - xxx, xxx == msg.sender, xxx != msg.sender
func (s *AnalyzeService) IsSafeContract(source string, sig CallbackSignature) bool {
	return isSafeContractInternal(source, sig)
}

// IsSafeContractForFS 供文件系统分析使用的安全检查函数
func IsSafeContractForFS(source string, sig CallbackSignature) bool {
	return isSafeContractInternal(source, sig)
}

// isSafeContractInternal 内部安全检查函数
func isSafeContractInternal(source string, sig CallbackSignature) bool {
	hasSelector := strings.Contains(source, "0x"+sig.Selector)
	hasFunctionName := strings.Contains(source, sig.FunctionName)

	if !hasSelector && !hasFunctionName {
		return false
	}

	if strings.Contains(source, "tx.origin") {
		return false
	}

	// 地址格式：裸地址/变量名 或 address(...) 包装
	addressPattern := `(?:address\s*\()?(0x[0-9a-fA-F]{40}|[a-zA-Z_][a-zA-Z0-9_]*)(?:\))?`

	senderPatternForward := regexp.MustCompile(`msg\.sender\s*(!=|==|-)\s*` + addressPattern)
	senderPatternReverse := regexp.MustCompile(addressPattern + `\s*(!=|==)\s*msg\.sender`)

	if senderPatternForward.MatchString(source) || senderPatternReverse.MatchString(source) {
		return false
	}

	return true
}

// AnalyzeSenders 分析所有符合条件的合约，返回安全合约列表
func (s *AnalyzeService) AnalyzeSenders(callbackKey string, chainID int16) ([]*AnalyzeResult, error) {
	senders, err := s.FindSendersWithPositiveStatus(callbackKey, chainID)
	if err != nil {
		return nil, err
	}

	sig := CallbackSignatures[callbackKey]
	var results []*AnalyzeResult

	for _, sender := range senders {
		isSafe := s.IsSafeContract(sender.DecompiledCode, sig)
		results = append(results, &AnalyzeResult{
			Address: sender.Address,
			IsSafe:  isSafe,
		})
	}

	return results, nil
}

// UpdateSenderStatus 更新 sender 的状态
func (s *AnalyzeService) UpdateSenderStatus(address string, chainID int16, status int) error {
	return s.db.Table("three_sender").
		Where("address = ? AND chain_id = ?", address, chainID).
		Update("status", status).Error
}

// AnalyzeAndUpdateStatus 分析合约并更新安全合约的状态为 210
func (s *AnalyzeService) AnalyzeAndUpdateStatus(callbackKey string, chainID int16) ([]string, error) {
	results, err := s.AnalyzeSenders(callbackKey, chainID)
	if err != nil {
		return nil, err
	}

	var safeAddresses []string
	for _, result := range results {
		if result.IsSafe {
			err := s.UpdateSenderStatus(result.Address, chainID, 210)
			if err != nil {
				return nil, err
			}
			safeAddresses = append(safeAddresses, result.Address)
		}
	}

	return safeAddresses, nil
}

// ProcessTask 处理MQ消息任务
func (s *AnalyzeService) ProcessTask(message map[string]interface{}) error {
	fmt.Printf("处理分析任务消息: %v\n", message)

	if callbackKey, ok := message["callbackKey"].(string); ok {
		// 获取 chainId，默认为 1（以太坊主网）
		chainID := int16(1)
		if chainIdVal, ok := message["chainId"].(float64); ok {
			chainID = int16(chainIdVal)
		}
		return s.AnalyzeAndCreateTask(callbackKey, chainID)
	}

	return fmt.Errorf("缺少 callbackKey 参数")
}

// AnalyzeAndCreateTask 分析合约并创建任务记录
func (s *AnalyzeService) AnalyzeAndCreateTask(callbackKey string, chainID int16) error {
	// 创建任务记录
	task := &uniswapcallback.SwapCallbackTask{
		ChainID:     chainID,
		Type:        "analyze",
		StartTime:   time.Now(),
		Status:      1, // 1: 处理中 (processing)
		Message:     "processing",
		CallbackKey: callbackKey,
	}

	if err := s.db.Create(task).Error; err != nil {
		return fmt.Errorf("创建任务记录失败: %w", err)
	}

	// 执行分析
	safeAddresses, err := s.AnalyzeAndUpdateStatus(callbackKey, chainID)
	
	// 更新任务状态（无论成功或失败，都设置为完成状态）
	task.Status = 0 // 0: 完成
	task.EndTime = time.Now()
	
	if err != nil {
		task.Message = fmt.Sprintf("分析失败: %v", err)
		s.db.Save(task)
		return err
	}

	task.Message = fmt.Sprintf("分析完成，找到 %d 个安全合约", len(safeAddresses))
	if err := s.db.Save(task).Error; err != nil {
		return fmt.Errorf("更新任务记录失败: %w", err)
	}

	fmt.Printf("分析任务完成: callbackKey=%s, chainID=%d, 安全合约数量=%d\n", callbackKey, chainID, len(safeAddresses))
	return nil
}

// decompressCode 解压 gzip 压缩的代码
func decompressCode(data []byte) (string, error) {
	return model.Decompress(data)
}