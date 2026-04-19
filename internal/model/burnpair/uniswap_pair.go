package burnpair

// UniswapPair Uniswap交易对实体
type UniswapPair struct {
	PairAddress     string `gorm:"primary_key;column:pair_address;type:varchar(66)" json:"pairAddress"`
	TokenAddress    string `gorm:"column:token_address;type:varchar(66)" json:"tokenAddress"`
	CurrencyAddress string `gorm:"column:currency_address;type:varchar(66)" json:"currencyAddress"`
	TokenFirst      int16  `gorm:"column:token_first;default:0" json:"tokenFirst"`
	FactoryAddress  string `gorm:"column:factory_address;type:varchar(66)" json:"factoryAddress"`
	PairCreateBlock uint64 `gorm:"column:pair_create_block;default:0" json:"pairCreateBlock"`
	UpdatedBlock    uint64 `gorm:"column:updated_block" json:"updatedBlock"`
	ValueState      int    `gorm:"column:value_state" json:"valueState"`
	ValueInUsd      int    `gorm:"column:value_in_usd" json:"valueInUsd"`
	CheckState      *int   `gorm:"column:check_state" json:"checkState"`
	CodeGot         int16  `gorm:"column:code_got;default:0" json:"codeGot"`
	Deleted         int    `gorm:"column:deleted;default:0" json:"deleted"`
}

// TableName 设置表名
func (UniswapPair) TableName() string {
	return "uniswap_pair"
}
