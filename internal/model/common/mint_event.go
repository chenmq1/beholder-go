package common

// MintEvent ERC20 Transfer(address indexed from, address indexed to, uint256 value) 事件实体
// 仅收集 from = 0x0 或 from = 0xdead 的 Transfer（即 mint/burn）。
//
// json tag 声明字段来自事件的哪个部分（由 getevent 统一 process/PostProcess 使用）：
//   - address: 发出事件的合约地址（小写 0x 开头）
//   - txHash:  交易哈希
//
// from/to/amount 对按合约计数的场景无业务意义，不再保留。
//
// 去重键 = gorm primary_key 字段（去除 chain_id）= contract_address（发出事件的合约地址）：
// 同一链上同一合约只保留首次出现的 mint/burn 事件
type MintEvent struct {
	ChainID         int16  `gorm:"primary_key;column:chain_id" json:"chainId"`
	ContractAddress string `gorm:"primary_key;column:contract_address;type:varchar(66)" json:"address"`
	TxHash          string `gorm:"column:tx_hash;type:varchar(66)" json:"txHash"`
	RepeatCount     int    `gorm:"column:repeat_count;type:int" json:"-"`
}

// TableName 设置表名
func (MintEvent) TableName() string {
	return "mint_event"
}

// 建表语句：
//
// CREATE TABLE IF NOT EXISTS mint_event (
//   chain_id SMALLINT NOT NULL,
//   contract_address VARCHAR(66) NOT NULL,
//   tx_hash VARCHAR(66) NOT NULL,
//   repeat_count INT NOT NULL DEFAULT 0,
//   PRIMARY KEY (chain_id, contract_address)
// ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
//
// 已有表的迁移语句（移除 from/to/amount 列）：
//
// ALTER TABLE mint_event
//   DROP COLUMN from_addr,
//   DROP COLUMN to_addr,
//   DROP COLUMN amount;
