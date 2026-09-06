package common

import "math/big"

// MintEvent ERC20 Transfer(address indexed from, address indexed to, uint256 value) 事件实体
// 仅收集 from = 0x0 或 from = 0xdead 的 Transfer（即 mint/burn）。
//
// json tag 声明字段来自事件的哪个部分（由 getevent 统一 process/PostProcess 使用）：
//   - topicN:  第 N 个 topic；N=0 为完整事件签名，N>=1 按地址处理（小写 0x 开头）
//   - address: 发出事件的合约地址（小写）
//   - txHash:  交易哈希
//   - data[N]: data 按 DataFormat 声明的 ABI 类型解码后的第 N 个字段（数值类型自动转换）
//
// 去重键 = gorm primary_key 字段（去除 chain_id）= contract_address（发出事件的合约地址）：
// 同一链上同一合约只保留首次出现的 mint/burn 事件
type MintEvent struct {
	ChainID         int16    `gorm:"primary_key;column:chain_id" json:"chainId"`
	ContractAddress string   `gorm:"primary_key;column:contract_address;type:varchar(66)" json:"address"`
	From            string   `gorm:"column:from_addr;type:varchar(66)" json:"topic1"`
	To              string   `gorm:"column:to_addr;type:varchar(66)" json:"topic2"`
	TxHash          string   `gorm:"column:tx_hash;type:varchar(66)" json:"txHash"`
	Amount          *big.Int `gorm:"column:amount;type:varchar(78)" json:"data[0]"`
	RepeatCount     int      `gorm:"column:repeat_count;type:int" json:"-"`
}

// TableName 设置表名
func (MintEvent) TableName() string {
	return "mint_event"
}

// DataFormat data 部分的 ABI 类型序列：Transfer 事件的 data 仅为 uint256 转账金额
func (MintEvent) DataFormat() string {
	return "(uint256)"
}

// 建表语句：
//
// CREATE TABLE IF NOT EXISTS mint_event (
//   chain_id SMALLINT NOT NULL,
//   contract_address VARCHAR(66) NOT NULL,
//   from_addr VARCHAR(66) NOT NULL,
//   to_addr VARCHAR(66) NOT NULL,
//   tx_hash VARCHAR(66) NOT NULL,
//   amount VARCHAR(78) NOT NULL DEFAULT '0',
//   repeat_count INT NOT NULL DEFAULT 0,
//   PRIMARY KEY (chain_id, contract_address)
// ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
