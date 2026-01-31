package burnpair// UniswapPair Uniswap交易对实体
type UniswapPair struct {
	PairAddress     string `gorm:"primary_key;column:pair_address;type:varchar(66)" json:"pair_address"`
	TokenAddress    string `gorm:"column:token_address;type:varchar(66)" json:"token_address"`
	CurrencyAddress string `gorm:"column:currency_address;type:varchar(66)" json:"currency_address"`
	TokenFirst      int16  `gorm:"column:token_first;default:0" json:"token_first"`
	FactoryAddress  string `gorm:"column:factory_address;type:varchar(66)" json:"factory_address"`
	PairCreateBlock uint64 `gorm:"column:pair_create_block;default:0" json:"pair_create_block"`
	UpdatedBlock    uint64 `gorm:"column:updated_block" json:"updated_block"`
	ValueState      int    `gorm:"column:value_state" json:"value_state"`
	ValueInUsd      int    `gorm:"column:value_in_usd" json:"value_in_usd"`
	CheckState      *int   `gorm:"column:check_state" json:"check_state"`
	CodeGot         int16  `gorm:"column:code_got;default:0" json:"code_got"`
	Deleted         int    `gorm:"column:deleted;default:0" json:"deleted"`
}

// TableName 设置表名
func (UniswapPair) TableName() string {
	return "uniswap_pair"
}
