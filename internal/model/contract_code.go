package model

import (
	"time"
)

// ContractCode 合约代码实体
type ContractCode struct {
	Address                  string    `json:"address" gorm:"primary_key"`
	Binary                   string    `json:"binary"`
	Eoa                      int16     `json:"eoa"`
	SmartEoaAddress          string    `json:"smart_eoa_address"`
	VerifiedStatus           string    `json:"verified_status"`
	VerifiedCodeCompressed   string    `json:"verified_code_compressed"`
	VerifiedFilename         string    `json:"verified_filename"`
	VerifiedProxyChain       string    `json:"verified_proxy_chain"`
	DecompiledStatus         string    `json:"decompiled_status"`
	DecompiledCodeCompressed string    `json:"decompiled_code_compressed"`
	CreatedAt                time.Time `json:"created_at"`
	UpdatedAt                time.Time `json:"updated_at"`
}

// TableName 指定表名
func (ContractCode) TableName() string {
	return "contract_code"
}
