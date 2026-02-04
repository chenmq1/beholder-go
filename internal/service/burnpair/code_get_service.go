package burnpair

import (
	"fmt"
	"log"
	"time"

	"github.com/beholder-daemon/internal/model/burnpair"
	"github.com/beholder-daemon/internal/service/getcode"
	"github.com/jinzhu/gorm"
)

// CodeGetService 代码获取服务
type CodeGetService struct {
	db                  *gorm.DB
	burnPairTaskRepo    *BurnPairTaskRepository
	uniswapV2PairRepo   *UniswapV2PairRepository
	getCodeService      *getcode.GetCodeService
}

// NewCodeGetService 创建 CodeGetService 实例
func NewCodeGetService(db *gorm.DB, getCodeService *getcode.GetCodeService) *CodeGetService {
	return &CodeGetService{
		db:                  db,
		burnPairTaskRepo:    NewBurnPairTaskRepository(db),
		uniswapV2PairRepo:   NewUniswapV2PairRepository(db),
		getCodeService:      getCodeService,
	}
}

// ProcessTask 处理代码获取任务
func (s *CodeGetService) ProcessTask() error {
	gotCount := 0

	// 创建任务记录
	task := &burnpair.BurnPairTask{
		Type:    "codeGet",
		Status:  1, // 1: 进行中
		Message: "", // 空字符串，避免 MySQL 插入失败
	}

	// 保存任务记录
	if err := s.burnPairTaskRepo.Create(task); err != nil {
		log.Printf("创建任务记录失败: %v", err)
		return err
	}

	// 设置开始时间
	task.StartTime = time.Now()
	if err := s.burnPairTaskRepo.Update(task); err != nil {
		log.Printf("更新任务开始时间失败: %v", err)
	}

	log.Println("处理 codeGet 任务:")

	// 获取待处理的交易对
	pairs, err := s.uniswapV2PairRepo.FindPairToGetCode()
	if err != nil {
		log.Printf("获取待处理交易对失败: %v", err)
		return err
	}

	// 处理每个交易对
	for _, pair := range pairs {
		// 调用 GetCodeService 获取代码（只处理 BSC 链，chainId = 2）
		result, err := s.getCodeService.GetCode(pair.TokenAddress, 2)
		if err != nil {
			log.Printf("获取代码失败，地址: %s, 错误: %v", pair.TokenAddress, err)
			continue
		}

		// 如果成功获取代码
		if result > 0 {
			pair.CodeGot = 1
			// 设置检查状态为代码已获取（假设 CHECK_STATE_CODEGOT = 11）
			checkState := 11
			pair.CheckState = &checkState
			gotCount++
		}
	}

	// 批量更新交易对
	if len(pairs) > 0 {
		if err := s.uniswapV2PairRepo.SaveAll(pairs); err != nil {
			log.Printf("批量更新交易对失败: %v", err)
		}
	}

	// 更新任务状态
	task.Status = 0 // 0: 完成
	task.EndTime = time.Now()
	task.Message = fmt.Sprintf("code got: %d/%d", gotCount, len(pairs))

	if err := s.burnPairTaskRepo.Update(task); err != nil {
		log.Printf("更新任务状态失败: %v", err)
		return err
	}

	log.Printf("codeGet 任务处理完成: %s", task.Message)
	return nil
}

// BurnPairTaskRepository BurnPairTask 仓库
type BurnPairTaskRepository struct {
	db *gorm.DB
}

// NewBurnPairTaskRepository 创建 BurnPairTaskRepository 实例
func NewBurnPairTaskRepository(db *gorm.DB) *BurnPairTaskRepository {
	return &BurnPairTaskRepository{db: db}
}

// Create 创建任务记录
func (r *BurnPairTaskRepository) Create(task *burnpair.BurnPairTask) error {
	// 使用 Omit 方法忽略 message 字段，让 MySQL 使用默认值
	return r.db.Omit("Message").Create(task).Error
}

// Update 更新任务记录
func (r *BurnPairTaskRepository) Update(task *burnpair.BurnPairTask) error {
	return r.db.Save(task).Error
}

// UniswapV2PairRepository UniswapV2Pair 仓库
type UniswapV2PairRepository struct {
	db *gorm.DB
}

// NewUniswapV2PairRepository 创建 UniswapV2PairRepository 实例
func NewUniswapV2PairRepository(db *gorm.DB) *UniswapV2PairRepository {
	return &UniswapV2PairRepository{db: db}
}

// FindPairToGetCode 获取待获取代码的交易对
func (r *UniswapV2PairRepository) FindPairToGetCode() ([]*burnpair.UniswapPair, error) {
	var pairs []*burnpair.UniswapPair
	err := r.db.Where("deleted = ? AND value_state = ? AND code_got = ?", 0, 1, 0).Find(&pairs).Error
	return pairs, err
}

// SaveAll 批量保存交易对
func (r *UniswapV2PairRepository) SaveAll(pairs []*burnpair.UniswapPair) error {
	for _, pair := range pairs {
		if err := r.db.Save(pair).Error; err != nil {
			return err
		}
	}
	return nil
}
