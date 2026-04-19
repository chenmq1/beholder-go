package burnpair

import (
	"time"
)

// BurnPairTask BurnPair任务实体
type BurnPairTask struct {
	ID         uint      `gorm:"primary_key" json:"id"`
	Type       string    `gorm:"type:varchar(50);not null" json:"type"`
	StartTime  time.Time `gorm:"column:start_time" json:"startTime"`
	EndTime    time.Time `gorm:"column:end_time" json:"endTime"`
	StartBlock uint64    `gorm:"column:start_block;default:0" json:"startBlock"`
	EndBlock   uint64    `gorm:"column:end_block;default:0" json:"endBlock"`
	Status     int       `gorm:"not null" json:"status"`
	Message    string    `gorm:"type:LONGTEXT;default:''" json:"message"`
}

// TableName 设置表名
func (BurnPairTask) TableName() string {
	return "burn_pair_task"
}
