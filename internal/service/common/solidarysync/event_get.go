// Package solidarysync 提供「孤立 Sync」事件收集服务的配置与构造。
// 收集流程复用 common.EventCollectService，本包只声明事件特有配置。
//
// 主 filter 一次拉取 topic0 ∈ {Swap, Sync, Mint, Burn}（无 topic1/2 筛选）。
// Swap/Mint/Burn 不入库（ShouldIgnoreLog 忽略），仅用于段内关联判定：
// SolidarySyncEvent.ShouldCorrelateInSeg 检查 Sync 紧接的下一条主日志
// 是否同块、logIndex +1、同 emitter 且是 Swap/Mint/Burn——是则排除，否则保留。
// 以 address（Sync emitter）去重入库。
package solidarysync

import (
	ethcommon "github.com/ethereum/go-ethereum/common"
	"github.com/jinzhu/gorm"

	modelcommon "github.com/beholder-daemon/internal/model/common"
	svccommon "github.com/beholder-daemon/internal/service/common"
	"github.com/beholder-daemon/internal/utils"
)

// 事件 topic0 常量
const (
	SwapV2EventTopic = "0xd78ad95fa46c994b6551d0da85fc275fe613ce37657fb8d5e3d130840159d822"
	SyncEventTopic   = "0x1c411e9a96e071241c2f21f7726b17ae89e3cab4c78be50e062b03a9fffbbad1"
	MintEventTopic   = "0x4c209b5fc8ad50758f13e2e1088ba56a560dff690a1c6fef26394f4c03821c4f"
	BurnEventTopic   = "0xdccd412f0b1252819cb1fd330b93224ca42612892bb3f4f789976e6d81936496"
)

// NewEventGetService 创建孤立 Sync 事件收集服务：
// 主 filter topic0 = Swap OR Sync OR Mint OR Burn，一次 eth_getLogs 同时拉取。
// Swap/Mint/Burn 由 ShouldIgnoreLog 忽略不入库，仅用于段内关联判定。
// 以 address（Sync emitter）去重入库。
func NewEventGetService(db *gorm.DB, clients map[string]*utils.Web3Client) *svccommon.EventCollectService {
	return svccommon.NewEventCollectService(db, clients, svccommon.EventCollectConfig{
		TaskType:    "solidarySyncGet",
		CallbackKey: "solidarySync",
		EventModel:  &modelcommon.SolidarySyncEvent{},
		Topics: [][]ethcommon.Hash{
			{
				ethcommon.HexToHash(SwapV2EventTopic),
				ethcommon.HexToHash(SyncEventTopic),
				ethcommon.HexToHash(MintEventTopic),
				ethcommon.HexToHash(BurnEventTopic),
			},
		},
	})
}
