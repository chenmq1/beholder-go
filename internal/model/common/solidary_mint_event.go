package common

import (
	"sort"

	ethcommon "github.com/ethereum/go-ethereum/common"
	"github.com/ethereum/go-ethereum/core/types"
)

// SolidaryMintEvent 收集「孤立 ERC20 mint」Transfer 事件：
// Transfer(from=0x0) 且不紧跟同 emitter 的 Sync——即排除 Uniswap/Pancake 等
// pair 流动性添加（pair.mint() 内先 _mint 发 Transfer(0x0→to)，再 emit Sync，
// 同块同 emitter、logIndex 恰好 +1）。
//
// 主 filter：topic0 = Transfer，topic1(from) = 0x0。ERC721 的 Transfer topic0
// 与 ERC20 相同，但有 indexed tokenId（共 4 个 topic），由 ShouldIgnoreLog 排除
// （仅保留恰好 3 个 topic 的 ERC20 Transfer）。
// AuxFilter：topic0 = Sync，不入库，仅供 ShouldCorrelateInSeg 段内关联。
//
// 字段：chainId、contract_address（发出 Transfer 的合约 = 被 mint 的 token；
// LP mint 场景下是 pair 本身，会被关联排除）、txHash、repeatCount。
// 去重键 = (chain_id, contract_address)，同一合约只保留首见，repeat_count 累加。
type SolidaryMintEvent struct {
	ChainID         int16  `gorm:"primary_key;column:chain_id" json:"chainId"`
	ContractAddress string `gorm:"primary_key;column:contract_address;type:varchar(66)" json:"address"`
	TxHash          string `gorm:"column:tx_hash;type:varchar(66)" json:"txHash"`
	RepeatCount     int    `gorm:"column:repeat_count;type:int" json:"-"`
}

// TableName 设置表名
func (SolidaryMintEvent) TableName() string {
	return "solidary_mint_event"
}

// solidaryMintSyncSig Uniswap V2 Sync(uint112 reserve0, uint112 reserve1) topic0
const solidaryMintSyncSig = "0x1c411e9a96e071241c2f21f7726b17ae89e3cab4c78be50e062b03a9fffbbad1"

// ShouldIgnoreLog 排除 ERC721 Transfer：ERC721 Transfer(address indexed from,
// address indexed to, uint256 indexed tokenId) 有 4 个 topic；ERC20 Transfer
// 只有 3 个（topic0 签名 + topic1 from + topic2 to）。topic0 两者相同，无法在
// RPC filter 区分，故在此按 topic 数量过滤。
func (SolidaryMintEvent) ShouldIgnoreLog(l *types.Log) bool {
	return len(l.Topics) > 3
}

// ShouldCorrelateInSeg 段内关联过滤：若 aux（同段 Sync 日志）中存在与当前 Transfer
// 同块、logIndex 恰好 +1、同 emitter（l.Address）且是 Sync 的日志，说明这是 pair
// 流动性添加产生的 LP mint（Transfer(0x0→to) 紧跟 Sync），排除（return false）；
// 否则保留（return true）——即「孤立 mint」。
//
// mainIdx 为当前日志在正序 main 切片中的下标（本模型主 filter 只拉 Transfer，
// 关联只依赖 aux，不使用 mainIdx）。aux 按 (区块号, logIndex) 升序，二分 O(log n)。
func (SolidaryMintEvent) ShouldCorrelateInSeg(l *types.Log, mainIdx int, main, aux []types.Log) bool {
	syncHash := ethcommon.HexToHash(solidaryMintSyncSig)
	target := l.Index + 1
	pos := sort.Search(len(aux), func(k int) bool {
		a := &aux[k]
		return a.BlockNumber > l.BlockNumber ||
			(a.BlockNumber == l.BlockNumber && a.Index >= target)
	})
	if pos < len(aux) {
		s := &aux[pos]
		if s.BlockNumber == l.BlockNumber && s.Index == target &&
			s.Address == l.Address && len(s.Topics) > 0 && s.Topics[0] == syncHash {
			return false // 命中 pair LP mint→Sync 形态，排除
		}
	}
	return true // 孤立 mint，保留
}

// 建表语句：
//
// CREATE TABLE IF NOT EXISTS solidary_mint_event (
//   chain_id SMALLINT NOT NULL,
//   contract_address VARCHAR(66) NOT NULL,
//   tx_hash VARCHAR(66) NOT NULL,
//   repeat_count INT NOT NULL DEFAULT 0,
//   PRIMARY KEY (chain_id, contract_address)
// ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
