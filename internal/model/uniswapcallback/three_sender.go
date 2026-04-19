package uniswapcallback

// ThreeSender ThreeSender实体
type ThreeSender struct {
	ChainID     int16  `gorm:"column:chain_id;not null" json:"chainId"`
	Address     string `gorm:"primary_key;column:address;type:varchar(66)" json:"address"`
	CodeGot     int16  `gorm:"column:code_got" json:"codeGot"`
	HasCallback int16  `gorm:"column:has_callback" json:"hasCallback"`
	Status      int    `gorm:"column:status" json:"status"`
}

// TableName 设置表名
func (ThreeSender) TableName() string {
	return "three_sender"
}
