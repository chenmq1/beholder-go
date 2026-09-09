// Package external_burn 提供 ERC20 销毁 Transfer 事件收集服务的配置与构造。
// 收集流程复用 common.EventCollectService，本包只声明事件特有配置。
//
// 主 filter 一次拉取 topic2(to) ∈ {0x0,0xdead} 的 Transfer 与 SwapV2（topic2 均为
// to，条件一致；Swap 不入库，仅作关联判定）；每个区块段额外拉取 Sync 日志
// （AuxFilter）。模型 BurnEvent.ShouldCorrelateInSeg 的判定：自销毁 Transfer
// （from == 发出合约）且同块内 I+1 为 from 发出的 Sync、I+2 不是 from 发出的
// SwapV2 才保留——匹配 pair 销毁 LP 后立即 Sync 的事件形态。
package external_burn

import (
	"github.com/ethereum/go-ethereum"
	ethcommon "github.com/ethereum/go-ethereum/common"
	"github.com/jinzhu/gorm"

	modelcommon "github.com/beholder-daemon/internal/model/common"
	svccommon "github.com/beholder-daemon/internal/service/common"
	"github.com/beholder-daemon/internal/service/common/syncevent"
	"github.com/beholder-daemon/internal/service/common/swapv2"
	"github.com/beholder-daemon/internal/utils"
)

// TransferEventTopic ERC20 Transfer(address indexed from, address indexed to, uint256 value) 事件 topic
const TransferEventTopic = "0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef"

// burn 事件的 to（topic2）取值：零地址或 dead 地址
var (
	zeroAddrTopic = ethcommon.HexToHash("0x0000000000000000000000000000000000000000000000000000000000000000")
	deadAddrTopic = ethcommon.HexToHash("0x000000000000000000000000000000000000000000000000000000000000dead")
)

// NewEventGetService 创建销毁事件收集服务：
// 主 filter topic0 = Transfer OR SwapV2（两者 topic2 筛选一致：to ∈ {0x0,0xdead}），
// 一次 eth_getLogs 同时拉取；Swap 由 BurnEvent.ShouldIgnoreLog 忽略不入库，仅用于
// 段内关联判定（I+2 位排除）。每个区块段额外拉取 Sync 日志（AuxFilter），由
// BurnEvent.ShouldCorrelateInSeg 判定：自销毁 Transfer（from == 发出合约）且
// I+1 为 from 发出的 Sync、I+2 不是 from 发出的 Swap 才保留。以 from 去重入库。
func NewEventGetService(db *gorm.DB, clients map[string]*utils.Web3Client) *svccommon.EventCollectService {
	return svccommon.NewEventCollectService(db, clients, svccommon.EventCollectConfig{
		TaskType:    "burnGet",
		CallbackKey: "burn",
		EventModel:  &modelcommon.BurnEvent{},
		Topics: [][]ethcommon.Hash{
			// Transfer 与 SwapV2 的 topic2 均为 to，筛选条件一致，合并到一次拉取
			{ethcommon.HexToHash(TransferEventTopic), ethcommon.HexToHash(swapv2.SwapV2EventTopic)},
			nil, // from/sender 任意；是否有效由段内关联决定
			{zeroAddrTopic, deadAddrTopic},
		},
		// 段内辅助 filter：拉取 Sync 事件（仅 topic0，无 topic1/2）
		AuxFilter: ethereum.FilterQuery{
			Topics: [][]ethcommon.Hash{{ethcommon.HexToHash(syncevent.SyncEventTopic)}},
		},
	})
}
