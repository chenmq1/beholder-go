package common

import (
	"sort"

	ethcommon "github.com/ethereum/go-ethereum/common"
	"github.com/ethereum/go-ethereum/core/types"
)

// BurnEvent ERC20 Transfer(address indexed from, address indexed to, uint256 value) 事件实体
// 仅收集 to = 0x0 或 to = 0xdead 的 Transfer（销毁方向，与 mint 的 from 侧互补）。
//
// 筛选条件：topic2（to）∈ {0x0, 0xdead}，主 filter topic0 = Transfer OR SwapV2
// （在 service/common/external_burn 的 Topics 里声明；Swap 仅用于关联判定，不入库）。
// 段内关联过滤（ShouldCorrelateInSeg，aux 为同段 Sync 日志）：
// 仅保留合约自销毁（from == 发出合约）的 Transfer，且同块内 logIndex 恰好 I+1
// 是 from 发出的 Sync、I+2 不是 from 发出的 SwapV2（to ∈ {0x0,0xdead}）——
// 匹配 pair 销毁 LP 后立即 Sync 的事件形态。
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

// 相关事件签名（段内关联用，主 filter 同时拉取 Transfer 与 SwapV2，aux 拉取 Sync）
const (
	// transferSig ERC20 Transfer(address indexed from, address indexed to, uint256 value)
	transferSig = "0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef"
	// swapV2Sig Uniswap V2 Swap(address indexed sender, uint,uint,uint,uint, address indexed to)
	swapV2Sig = "0xd78ad95fa46c994b6551d0da85fc275fe613ce37657fb8d5e3d130840159d822"
	// syncSig Uniswap V2 Sync(uint112 reserve0, uint112 reserve1)
	syncSig = "0x1c411e9a96e071241c2f21f7726b17ae89e3cab4c78be50e062b03a9fffbbad1"
)

// ShouldIgnoreLog 收集阶段过滤：主 filter 同时拉取 Transfer 与 SwapV2（两者 topic2
// 筛选条件一致），Swap 仅用于段内关联判定（I+2 位），不作为 burn 记录入库，
// 因此 topic0 == SwapV2Sig 的日志直接忽略。
func (BurnEvent) ShouldIgnoreLog(l *types.Log) bool {
	return len(l.Topics) > 0 && l.Topics[0] == ethcommon.HexToHash(swapV2Sig)
}

// ShouldCorrelateInSeg 段内跨事件关联过滤。mainIdx 是当前 Transfer 在 main（主 filter
// 日志，正序）中的数组下标；main 为 Transfer+SwapV2（topic2 ∈ {0x0,0xdead}），
// aux 为 Sync 日志。三者均按 (区块号, logIndex) 升序。
//
// 判定（顺序执行）：
//  1. 前置：Transfer 必须是合约自销毁——from（topic1）== 事件发出地址 l.Address；
//  2. 先筛 Swap：main[mainIdx+1] 即 main 中紧接的下一条（Sync 不在 main 内）。
//     形态 Transfer@I → Sync@I+1(aux) → Swap@I+2(main)，故它的 logIndex 应恰好
//     为 I+2；若它同块、Index==I+2、由 from 发出且是 SwapV2，则排除（return false）；
//  3. 再筛 Sync：aux 中二分定位同块 logIndex==I+1，由 from 发出且是 Sync → 保留。
//
// main 用下标 O(1) 定位；aux 为升序切片，二分 O(log n)。
func (BurnEvent) ShouldCorrelateInSeg(l *types.Log, mainIdx int, main, aux []types.Log) bool {
	if len(l.Topics) < 2 {
		return false
	}
	from := ethcommon.BytesToAddress(l.Topics[1].Bytes())
	// 1. 前置：仅处理合约自销毁（from == 发出合约）
	if from != l.Address {
		return false
	}
	swapHash := ethcommon.HexToHash(swapV2Sig)
	syncHash := ethcommon.HexToHash(syncSig)

	// 2. 先筛 Swap：main 中紧接的下一条（mainIdx+1）须不是 from 发出的 SwapV2@I+2
	if mainIdx+1 < len(main) {
		s := &main[mainIdx+1]
		if s.Address == from && len(s.Topics) > 0 && s.Topics[0] == swapHash {
			return false
		}
	}

	// 3. 再筛 Sync：aux 中同块 logIndex == I+1 须为 from 发出的 Sync
	target := l.Index + 1
	pos := sort.Search(len(aux), func(k int) bool {
		a := &aux[k]
		return a.BlockNumber > l.BlockNumber ||
			(a.BlockNumber == l.BlockNumber && a.Index >= target)
	})
	if pos < len(aux) {
		s := &aux[pos]
		if s.BlockNumber == l.BlockNumber && s.Index == target &&
			s.Address == from && len(s.Topics) > 0 && s.Topics[0] == syncHash {
			return true
		}
	}
	return false
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
