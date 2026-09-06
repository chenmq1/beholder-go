package common

// SwapV2Event Uniswap V2 Swap(address indexed sender, uint256 amount0In, uint256 amount1In,
// uint256 amount0Out, uint256 amount1Out, address indexed to) 事件实体
//
// json tag 声明字段来自事件的哪个部分（由 getevent 统一 process/PostProcess 使用）：
//   - topicN:  第 N 个 topic；N=0 为完整事件签名，N>=1 按地址处理（小写 0x 开头）
//   - address: 发出事件的合约地址（小写）
//   - txHash:  交易哈希
//
// 去重键 = gorm primary_key 字段（去除 chain_id）= sender（topic1）：
// 同一链上同一 sender 只保留首次出现的 Swap 事件
type SwapV2Event struct {
	ChainID         int16  `gorm:"primary_key;column:chain_id" json:"chainId"`
	Sender          string `gorm:"primary_key;column:sender;type:varchar(66)" json:"topic1"`
	ContractAddress string `gorm:"column:contract_address;type:varchar(66)" json:"address"`
	TxHash          string `gorm:"column:tx_hash;type:varchar(66)" json:"txHash"`
	RepeatCount     int    `gorm:"column:repeat_count;type:int" json:"-"`
}

// TableName 设置表名
func (SwapV2Event) TableName() string {
	return "swap_v2_event"
}

// 建表语句：
//
// CREATE TABLE IF NOT EXISTS swap_v2_event (
//   chain_id SMALLINT NOT NULL,
//   sender VARCHAR(66) NOT NULL,
//   contract_address VARCHAR(66) NOT NULL,
//   tx_hash VARCHAR(66) NOT NULL,
//   repeat_count INT NOT NULL DEFAULT 0,
//   PRIMARY KEY (chain_id, sender)
// ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
