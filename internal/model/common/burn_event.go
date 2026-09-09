package common

import (
	ethcommon "github.com/ethereum/go-ethereum/common"
	"github.com/ethereum/go-ethereum/core/types"
)

// BurnEvent ERC20 Transfer(address indexed from, address indexed to, uint256 value) 事件实体
// 仅收集 to = 0x0 或 to = 0xdead 的 Transfer（即销毁方向，与 mint 的 from 侧互补）。
//
// 筛选条件：topic2（to）∈ {0x0, 0xdead}（在 service/common/external_burn 的 Topics 里声明）；
// 另通过 ShouldIgnoreLog 丢弃 from == 发出合约地址的自销毁（如 pair 销毁 LP、
// 代币合约销毁自身持仓），只保留外部地址发起的销毁（external burn）。
// 保存字段：from（topic1，销毁发起方）、txHash、repeatCount。
// 不保存 contract_address、不保存 to（to 仅作筛选，固定两个值无业务意义）。
//
// 去重键 = gorm primary_key 字段（去除 chain_id）= from_addr：
// 同一链上同一 from 只保留首次出现的销毁事件，repeat_count 记录出现次数（含首次），
// 冲突时累加。
type BurnEvent struct {
	ChainID     int16  `gorm:"primary_key;column:chain_id" json:"chainId"`
	From        string `gorm:"primary_key;column:from_addr;type:varchar(66)" json:"topic1"`
	TxHash      string `gorm:"column:tx_hash;type:varchar(66)" json:"txHash"`
	RepeatCount int    `gorm:"column:repeat_count;type:int" json:"-"`
}

// TableName 设置表名
func (BurnEvent) TableName() string {
	return "burn_event"
}

// ShouldIgnoreLog 收集阶段过滤：from（topic1）== 事件发出合约地址（log.Address）时
// 返回 true 忽略该事件。这类是合约自销毁（LP 销毁、代币合约销毁自身），
// 不属于 external burn。topic1 为 32 字节左填充地址，BytesToAddress 取后 20 字节比较。
func (BurnEvent) ShouldIgnoreLog(l *types.Log) bool {
	if len(l.Topics) < 2 {
		return false
	}
	return ethcommon.BytesToAddress(l.Topics[1].Bytes()) == l.Address
}

// 建表语句：
//
// CREATE TABLE IF NOT EXISTS burn_event (
//   chain_id SMALLINT NOT NULL,
//   from_addr VARCHAR(66) NOT NULL,
//   tx_hash VARCHAR(66) NOT NULL,
//   repeat_count INT NOT NULL DEFAULT 0,
//   PRIMARY KEY (chain_id, from_addr)
// ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
//
// 视图2：在视图1（v_pair_sync，见 pair_created_event.go）基础上再 join burn。
// join 条件 burn.from_addr = pair_address（pair 自己作为 from 的销毁：
// pair 合约主动把 token 转入 0x0/0xdead），burn 主键 (chain_id, from_addr) 用满。
// burn 侧每个 (chain_id, from_addr) 至多一行（首见保留 + repeat_count 计数），
// join 不会放大行数。
//
// CREATE OR REPLACE VIEW v_pair_sync_burn AS
// SELECT
//   v.chain_id,
//   v.factory,
//   v.token0,
//   v.token1,
//   v.createdBlock,
//   v.address,
//   v.syncBlock,
//   v.syncCount,
//   v.syncHash,
//   v.reserve0,
//   v.reserve1,
//   b.tx_hash      AS burnHash,
//   b.repeat_count AS burnCount
// FROM v_pair v
// INNER JOIN burn_event b
//   ON b.chain_id = v.chain_id AND b.from_addr = v.address;
