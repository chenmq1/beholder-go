package uniswapcallback

import (
	"time"
)

// SwapCallbackTask Uniswap回调任务实体
type SwapCallbackTask struct {
	ID         uint      `gorm:"primary_key" json:"id"`
	ChainID    int16     `gorm:"column:chain_id;not null" json:"chainId"`
	Type       string    `gorm:"type:varchar(50);not null" json:"type"`
	StartTime  time.Time `gorm:"column:start_time" json:"startTime"`
	EndTime    time.Time `gorm:"column:end_time" json:"endTime"`
	StartBlock uint64    `gorm:"column:start_block;default:0" json:"startBlock"`
	EndBlock   uint64    `gorm:"column:end_block;default:0" json:"endBlock"`
	Status     int       `gorm:"not null" json:"status"`
	Message    string    `gorm:"type:LONGTEXT;not null;default:''" json:"message"`
}

// TableName 设置表名
func (SwapCallbackTask) TableName() string {
	return "swap_callback_task"
}
