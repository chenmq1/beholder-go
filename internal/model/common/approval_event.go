package common

import "math/big"

// ApprovalEvent ERC20 Approval(address indexed owner, address indexed spender, uint256 value) 事件实体
//
// json tag 声明字段来自事件的哪个部分（由 getevent 统一 process/PostProcess 使用）：
//   - topicN:  第 N 个 topic；N=0 为完整事件签名，N>=1 按地址处理（小写 0x 开头）
//   - address: 发出事件的合约地址（小写）
//   - txHash:  交易哈希
//   - data[N]: data 按 DataFormat 声明的 ABI 类型解码后的第 N 个字段（数值类型自动转换）
//
// 去重键 = gorm primary_key 字段（去除 chain_id）= spender（topic2）：
// 同一链上同一 spender 只保留首次出现的事件
type ApprovalEvent struct {
	ChainID         int16    `gorm:"primary_key;column:chain_id" json:"chainId"`
	Spender         string   `gorm:"primary_key;column:spender;type:varchar(66)" json:"topic2"`
	Owner           string   `gorm:"column:owner;type:varchar(66)" json:"topic1"`
	ContractAddress string   `gorm:"column:contract_address;type:varchar(66)" json:"address"`
	TxHash          string   `gorm:"column:tx_hash;type:varchar(66)" json:"txHash"`
	ApprovedAmount  *big.Int `gorm:"column:approved_amount;type:varchar(78)" json:"data[0]"`
	RepeatCount     int      `gorm:"column:repeat_count;type:int" json:"-"`
}

// TableName 设置表名
func (ApprovalEvent) TableName() string {
	return "approval_event"
}

// DataFormat data 部分的 ABI 类型序列：Approval 事件的 data 仅为 uint256 授权数额
func (ApprovalEvent) DataFormat() string {
	return "(uint256)"
}

// 建表语句：
//
// CREATE TABLE IF NOT EXISTS approval_event (
//   chain_id SMALLINT NOT NULL,
//   spender VARCHAR(66) NOT NULL,
//   owner VARCHAR(66) NOT NULL,
//   contract_address VARCHAR(66) NOT NULL,
//   tx_hash VARCHAR(66) NOT NULL,
//   approved_amount VARCHAR(78) NOT NULL DEFAULT '0',
//   repeat_count INT NOT NULL DEFAULT 0,
//   PRIMARY KEY (chain_id, spender)
// ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
//
// 已有 approved_amount 列，仅需加 repeat_count 的迁移语句：
//
// ALTER TABLE approval_event
//   ADD COLUMN repeat_count INT NOT NULL DEFAULT 0 AFTER approved_amount;
