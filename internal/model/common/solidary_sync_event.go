package common

import (
	ethcommon "github.com/ethereum/go-ethereum/common"
	"github.com/ethereum/go-ethereum/core/types"
)

// SolidarySyncEvent 收集「孤立 Sync」事件：Sync 后面紧挨着的不是同地址的 Swap/Mint/Burn。
//
// Uniswap V2 pair 正常交易里事件成对出现：Swap→Sync、Mint→Sync、Burn→Sync。
// 本模型收集的是 Sync 后面没有紧跟着同地址 Swap/Mint/Burn 的「孤立」Sync——
// 可能是异常操作或其他非标准形态。
//
// 主 filter 一次拉取 topic0 ∈ {Swap, Sync, Mint, Burn}（无 topic1/2 筛选）。
// Swap/Mint/Burn 不入库（ShouldIgnoreLog 忽略），仅用于段内关联判定：
// ShouldCorrelateInSeg 检查 main[mainIdx+1]（紧接的下一条主日志）
// 是否同块、logIndex 恰好 +1、同 emitter 且是 Swap/Mint/Burn 之一——
// 是则排除（return false），否则保留（return true）。
//
// 字段：chainId、address（Sync 的发出地址即 pair 地址）、txHash、repeatCount。
// 去重键 = (chain_id, address)，同一 pair 只保留首见，repeat_count 累加。
type SolidarySyncEvent struct {
	ChainID     int16  `gorm:"primary_key;column:chain_id" json:"chainId"`
	Address     string `gorm:"primary_key;column:address;type:varchar(66)" json:"address"`
	TxHash      string `gorm:"column:tx_hash;type:varchar(66)" json:"txHash"`
	RepeatCount int    `gorm:"column:repeat_count;type:int" json:"repeatCount"`
}

// TableName 设置表名
func (SolidarySyncEvent) TableName() string {
	return "solidary_sync_event"
}

// 相关事件签名
const (
	// solidarySwapSig Uniswap V2 Swap(address indexed sender, uint,uint,uint,uint, address indexed to)
	solidarySwapSig = "0xd78ad95fa46c994b6551d0da85fc275fe613ce37657fb8d5e3d130840159d822"
	// solidarySyncSig Uniswap V2 Sync(uint112 reserve0, uint112 reserve1)
	solidarySyncSig = "0x1c411e9a96e071241c2f21f7726b17ae89e3cab4c78be50e062b03a9fffbbad1"
	// solidaryMintSig Uniswap V2 Mint(address indexed sender, uint256, uint256)
	solidaryMintSig = "0x4c209b5fc8ad50758f13e2e1088ba56a560dff690a1c6fef26394f4c03821c4f"
	// solidaryBurnSig Uniswap V2 Burn(address indexed sender, uint256, uint256, address indexed to)
	solidaryBurnSig = "0xdccd412f0b1252819cb1fd330b93224ca42612892bb3f4f789976e6d81936496"
)

// isPairEvent 返回 true 如果该日志的 topic0 是 Swap/Mint/Burn（非 Sync），
// 即需要被 ShouldIgnoreLog 忽略、仅用于关联判定的事件。
func isPairEvent(topic0 ethcommon.Hash) bool {
	return topic0 == ethcommon.HexToHash(solidarySwapSig) ||
		topic0 == ethcommon.HexToHash(solidaryMintSig) ||
		topic0 == ethcommon.HexToHash(solidaryBurnSig)
}

// ShouldIgnoreLog 主 filter 同时拉 Swap/Sync/Mint/Burn；Swap/Mint/Burn 不入库，
// 仅作关联判定。
func (SolidarySyncEvent) ShouldIgnoreLog(l *types.Log) bool {
	return len(l.Topics) > 0 && isPairEvent(l.Topics[0])
}

// ShouldCorrelateInSeg 段内关联过滤：Sync 紧接的下一条主日志（main[mainIdx+1]）
// 若同块、logIndex 恰好 +1、同 emitter 且是 Swap/Mint/Burn 之一 → 排除（return false）。
// 否则保留（return true）——即「孤立 Sync」。
func (SolidarySyncEvent) ShouldCorrelateInSeg(l *types.Log, mainIdx int, main, aux []types.Log) bool {
	if mainIdx+1 < len(main) {
		s := &main[mainIdx+1]
		// 同块、logIndex 恰好 +1、同 emitter、是 Swap/Mint/Burn → 排除
		if s.BlockNumber == l.BlockNumber &&
			s.Index == l.Index+1 &&
			s.Address == l.Address &&
			len(s.Topics) > 0 && isPairEvent(s.Topics[0]) {
			return false
		}
	}
	return true
}

// 建表语句：
//
// CREATE TABLE IF NOT EXISTS solidary_sync_event (
//   chain_id SMALLINT NOT NULL,
//   address VARCHAR(66) NOT NULL,
//   tx_hash VARCHAR(66) NOT NULL,
//   repeat_count INT NOT NULL DEFAULT 0,
//   PRIMARY KEY (chain_id, address)
// ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
