package common

import (
	"math/big"

	"github.com/ethereum/go-ethereum/core/types"
)

// SyncEvent Uniswap V2 Sync(uint112 reserve0, uint112 reserve1) 事件实体。
// 每笔交易都会改变交易对 reserve，同一合约会产生大量事件，因此：
//   - 去重键 = 发出事件的合约地址（模型主键）
//   - 收集时保留 blockNumber 最新的那条（ShouldReplace）
//   - 入库时若新事件 block_number 比库中大，覆盖库中 reserve（条件更新）
//
// token1/token2 不来自事件，插入时为 NULL，由后续流程回填。
//
// json tag 声明字段来自事件的哪个部分（由 getevent 统一 process/PostProcess 使用）：
//   - topicN:  第 N 个 topic；N=0 为完整事件签名，N>=1 按地址处理（小写 0x 开头）
//   - address: 发出事件的合约地址（小写）
//   - txHash:  交易哈希
//   - blockNumber: 事件所在区块号
//   - data[N]: data 按 DataFormat 声明的 ABI 类型解码后的第 N 个字段（数值类型自动转换）
type SyncEvent struct {
	ChainID         int16    `gorm:"primary_key;column:chain_id" json:"chainId"`
	ContractAddress string   `gorm:"primary_key;column:contract_address;type:varchar(66)" json:"address"`
	Token1          *string  `gorm:"column:token1;type:varchar(66)" json:"-"`
	Token2          *string  `gorm:"column:token2;type:varchar(66)" json:"-"`
	Reserve0        *big.Int `gorm:"column:reserve0;type:varchar(78)" json:"data[0]"`
	Reserve1        *big.Int `gorm:"column:reserve1;type:varchar(78)" json:"data[1]"`
	BlockNumber     uint64   `gorm:"column:block_number" json:"blockNumber"`
	TxHash          string   `gorm:"column:tx_hash;type:varchar(66)" json:"txHash"`
}

// TableName 设置表名
func (SyncEvent) TableName() string {
	return "sync_event"
}

// DataFormat data 部分的 ABI 类型序列：uint112 reserve0, uint112 reserve1
func (SyncEvent) DataFormat() string {
	return "(uint112,uint112)"
}

// ShouldReplace 收集去重时保留 blockNumber 最新的事件；同一区块内保留序号靠后的
func (SyncEvent) ShouldReplace(existing *types.Log, incoming *types.Log) bool {
	if incoming.BlockNumber != existing.BlockNumber {
		return incoming.BlockNumber > existing.BlockNumber
	}
	return incoming.Index > existing.Index
}

// 建表语句：
//
// CREATE TABLE IF NOT EXISTS sync_event (
//   chain_id SMALLINT NOT NULL,
//   contract_address VARCHAR(66) NOT NULL,
//   token1 VARCHAR(66) DEFAULT NULL,
//   token2 VARCHAR(66) DEFAULT NULL,
//   reserve0 VARCHAR(78) NOT NULL DEFAULT '0',
//   reserve1 VARCHAR(78) NOT NULL DEFAULT '0',
//   block_number BIGINT UNSIGNED NOT NULL DEFAULT 0,
//   tx_hash VARCHAR(66) NOT NULL,
//   PRIMARY KEY (chain_id, contract_address)
// ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
