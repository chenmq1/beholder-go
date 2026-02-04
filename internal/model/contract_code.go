package model



// ContractCode 合约代码实体
type ContractCode struct {
	Address                  string    `json:"address" gorm:"primary_key"`
	Binary                   string    `json:"binary" gorm:"column:binary_code"`
	Eoa                      int16     `json:"eoa"`
	SmartEoaAddress          string    `json:"smart_eoa_address" gorm:"column:smart_eoa_address"`
	VerifiedStatus           string    `json:"verified_status" gorm:"column:verified_status"`
	VerifiedCodeCompressed   string    `json:"verified_code_compressed" gorm:"column:verified_code"`
	VerifiedFilename         string    `json:"verified_filename" gorm:"column:verified_filename"`
	VerifiedProxyChain       string    `json:"verified_proxy_chain" gorm:"column:verified_proxy_chain"`
	DecompiledStatus         string    `json:"decompiled_status" gorm:"column:decompiled_status"`
	DecompiledCodeCompressed string    `json:"decompiled_code_compressed" gorm:"column:decompiled_code"`
	DecompiledProxyChain     string    `json:"decompiled_proxy_chain" gorm:"column:decompiled_proxy_chain"`
}

// TableName 指定表名
func (ContractCode) TableName() string {
	return "contract_code"
}
