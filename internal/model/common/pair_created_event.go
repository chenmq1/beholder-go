package common

// PairCreatedEvent Uniswap V2 Factory
// PairCreated(address indexed token0, address indexed token1, address pair, uint) 事件实体
//
// json tag 声明字段来自事件的哪个部分（由 getevent 统一 process/PostProcess 使用）：
//   - topicN:  第 N 个 topic；N=0 为完整事件签名，N>=1 按地址处理（小写 0x 开头）
//   - address: 发出事件的合约地址（小写）= factory
//   - blockNumber: 事件所在区块号
//   - data[N]: data 按 DataFormat 声明的 ABI 类型解码后的第 N 个字段（数值类型自动转换）
//
// data 布局为 (address pair, uint allPairsLength)，仅保留 data[0]（pairAddress），
// data[1] 的计数无业务意义不保留。
//
// 去重键 = gorm primary_key 字段（去除 chain_id）= pair_address：
// 同一链上同一交易对只保留首次出现的创建事件。pairAddress 天然唯一，
// 无需实现 ShouldReplaceInSeg/ShouldReplaceInMerge（默认首见保留即可）。
type PairCreatedEvent struct {
	ChainID     int16  `gorm:"primary_key;column:chain_id" json:"chainId"`
	PairAddress string `gorm:"primary_key;column:pair_address;type:varchar(66)" json:"data[0]"`
	Factory     string `gorm:"column:factory;type:varchar(66)" json:"address"`
	Token0      string `gorm:"column:token0;type:varchar(66)" json:"topic1"`
	Token1      string `gorm:"column:token1;type:varchar(66)" json:"topic2"`
	BlockNumber uint64 `gorm:"column:block_number" json:"blockNumber"`
	RepeatCount int    `gorm:"column:repeat_count;type:int" json:"-"`
}

// TableName 设置表名
func (PairCreatedEvent) TableName() string {
	return "pair_created_event"
}

// DataFormat data 部分的 ABI 类型序列：address pair, uint allPairsLength
func (PairCreatedEvent) DataFormat() string {
	return "(address,uint256)"
}

// 建表语句：
//
// CREATE TABLE IF NOT EXISTS pair_created_event (
//   chain_id SMALLINT NOT NULL,
//   pair_address VARCHAR(66) NOT NULL,
//   factory VARCHAR(66) NOT NULL,
//   token0 VARCHAR(66) NOT NULL,
//   token1 VARCHAR(66) NOT NULL,
//   block_number BIGINT UNSIGNED NOT NULL DEFAULT 0,
//   repeat_count INT NOT NULL DEFAULT 0,
//   PRIMARY KEY (chain_id, pair_address)
// ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
//
// 视图1：交易对创建信息 ↔ 该 pair 最新 Sync 状态。
// join 条件 (chain_id, pair_address = contract_address) 双方均用满主键：
//   p: pair_created_event 主键 (chain_id, pair_address)
//   s: sync_event 主键 (chain_id, contract_address)——Sync 的发出合约即 pair 本身
//
// CREATE OR REPLACE VIEW v_pair AS
// SELECT
//   p.chain_id,
//   p.factory,
//   p.token0,
//   p.token1,
//   p.block_number     AS createdBlock,
//   s.contract_address AS address,
//   s.block_number     AS syncBlock,
//   s.repeat_count     AS syncCount,
//   s.tx_hash          AS syncHash,
//   s.reserve0,
//   s.reserve1
// FROM pair_created_event p
// INNER JOIN sync_event s
//   ON s.chain_id = p.chain_id AND s.contract_address = p.pair_address;
