package uniswapcallback

import (
	"time"

	"github.com/beholder-daemon/internal/model/uniswapcallback"
	"github.com/jinzhu/gorm"
)

type SwapCallbackTaskRepository struct {
	db *gorm.DB
}

func NewSwapCallbackTaskRepository(db *gorm.DB) *SwapCallbackTaskRepository {
	return &SwapCallbackTaskRepository{db: db}
}

func (r *SwapCallbackTaskRepository) Create(task *uniswapcallback.SwapCallbackTask) error {
	return r.db.Select("ChainID", "Type", "StartTime", "EndTime", "StartBlock", "EndBlock", "Status").Create(task).Error
}

func (r *SwapCallbackTaskRepository) Update(task *uniswapcallback.SwapCallbackTask) error {
	return r.db.Save(task).Error
}

func (r *SwapCallbackTaskRepository) FindById(id uint) (*uniswapcallback.SwapCallbackTask, error) {
	var task uniswapcallback.SwapCallbackTask
	err := r.db.First(&task, id).Error
	if err != nil {
		return nil, err
	}
	return &task, nil
}

func (r *SwapCallbackTaskRepository) FindMaxProcessedBlock(chainId int16) (uint64, error) {
	var task uniswapcallback.SwapCallbackTask
	err := r.db.Where("chain_id = ? AND status = 0", chainId).Order("end_block DESC").First(&task).Error
	if err != nil {
		return 0, err
	}
	return task.EndBlock, nil
}

type ThreeSenderRepository struct {
	db *gorm.DB
}

func NewThreeSenderRepository(db *gorm.DB) *ThreeSenderRepository {
	return &ThreeSenderRepository{db: db}
}

func (r *ThreeSenderRepository) FindByCodeGotGreaterThanAndChainIdAndStatusIsNull(codeGot int16, chainId int16) ([]*uniswapcallback.ThreeSender, error) {
	var senders []*uniswapcallback.ThreeSender
	err := r.db.Where("code_got > ? AND chain_id = ? AND status IS NULL", codeGot, chainId).Find(&senders).Error
	return senders, err
}

func (r *ThreeSenderRepository) FindSenderToGetCode(chainId int16) ([]*uniswapcallback.ThreeSender, error) {
	var senders []*uniswapcallback.ThreeSender
	err := r.db.Where("code_got IS NULL AND chain_id = ?", chainId).Find(&senders).Error
	return senders, err
}

func (r *ThreeSenderRepository) SaveAll(senders []*uniswapcallback.ThreeSender) error {
	for _, sender := range senders {
		if err := r.db.Model(sender).Update("code_got", sender.CodeGot).Error; err != nil {
			return err
		}
	}
	return nil
}

func (r *ThreeSenderRepository) Create(task *uniswapcallback.SwapCallbackTask) error {
	task.StartTime = time.Now()
	return r.db.Create(task).Error
}
