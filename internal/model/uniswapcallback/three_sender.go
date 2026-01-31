package uniswapcallback// ThreeSender ThreeSender实体
type ThreeSender struct {
	ChainID     int16  `gorm:"column:chain_id;not null" json:"chain_id"`
	Address     string `gorm:"primary_key;column:address;type:varchar(66)" json:"address"`
	CodeGot     int16  `gorm:"column:code_got" json:"code_got"`
	HasCallback int16  `gorm:"column:has_callback" json:"has_callback"`
	Status      int    `gorm:"column:status" json:"status"`
}

// TableName 设置表名
func (ThreeSender) TableName() string {
	return "three_sender"
}
