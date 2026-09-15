package common

import (
	ethcommon "github.com/ethereum/go-ethereum/common"
	"github.com/ethereum/go-ethereum/core/types"
)

// BurnEventOld 旧版 ERC20 销毁 Transfer 收集逻辑（aux-sync 关联逻辑上线前）的事件实体，
// 与 BurnEvent（新逻辑，表 burn_event）并行入库到 burn_event_old。
//
// 筛选条件：仅 ERC20 Transfer，topic2（to）∈ {0x0, 0xdead}；
// 主 filter 不拉 SwapV2、不配 AuxFilter、不做 Sync/Swap 段内关联。
// 唯一过滤为 ShouldIgnoreLog：排除合约自销毁（from(topic1) == 事件发出地址），
// 其余外部销毁全部保留。
//
// 字段/主键与 BurnEvent 完全一致：去重键 = (chain_id, from_addr)，
// 同一链上同一 from 只保留首次出现的销毁事件，repeat_count 记录出现次数（含首次），
// 冲突时累加。
type BurnEventOld struct {
	ChainID     int16  `gorm:"primary_key;column:chain_id" json:"chainId"`
	From        string `gorm:"primary_key;column:from_addr;type:varchar(66)" json:"topic1"`
	TxHash      string `gorm:"column:tx_hash;type:varchar(66)" json:"txHash"`
	RepeatCount int    `gorm:"column:repeat_count;type:int" json:"repeatCount"`
}

// TableName 设置表名
func (BurnEventOld) TableName() string {
	return "burn_event_old"
}

// ShouldIgnoreLog 旧逻辑过滤：排除合约自销毁——from（topic1）== 事件发出地址
// l.Address 的 Transfer 直接忽略；外部销毁（from != 发出合约）保留。
func (BurnEventOld) ShouldIgnoreLog(l *types.Log) bool {
	if len(l.Topics) < 2 {
		return false
	}
	return ethcommon.BytesToAddress(l.Topics[1].Bytes()) == l.Address
}

// 建表语句（与 burn_event 同构）：
//
// CREATE TABLE IF NOT EXISTS burn_event_old (
//   chain_id SMALLINT NOT NULL,
//   from_addr VARCHAR(66) NOT NULL,
//   tx_hash VARCHAR(66) NOT NULL,
//   repeat_count INT NOT NULL DEFAULT 0,
//   PRIMARY KEY (chain_id, from_addr)
// ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
