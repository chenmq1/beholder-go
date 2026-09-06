// Package syncevent 提供 Uniswap V2 Sync 事件收集服务的配置与构造。
// 收集流程复用 common.EventCollectService，本包只声明事件特有配置。
package syncevent

import (
	ethcommon "github.com/ethereum/go-ethereum/common"
	"github.com/jinzhu/gorm"

	modelcommon "github.com/beholder-daemon/internal/model/common"
	svccommon "github.com/beholder-daemon/internal/service/common"
	"github.com/beholder-daemon/internal/utils"
)

// SyncEventTopic Uniswap V2 Sync(uint112 reserve0, uint112 reserve1) 事件 topic
const SyncEventTopic = "0x1c411e9a96e071241c2f21f7726b17ae89e3cab4c78be50e062b03a9fffbbad1"

// NewEventGetService 创建 Sync 事件收集服务：
// 以发出事件的合约地址（模型主键）去重，保留 blockNumber 最新的事件，
// 冲突时若新事件较新则覆盖库中 reserve，入库 sync_event 表
func NewEventGetService(db *gorm.DB, clients map[string]*utils.Web3Client) *svccommon.EventCollectService {
	return svccommon.NewEventCollectService(db, clients, svccommon.EventCollectConfig{
		TaskType:    "syncGet",
		CallbackKey: "sync",
		EventModel:  &modelcommon.SyncEvent{},
		Topics:      [][]ethcommon.Hash{{ethcommon.HexToHash(SyncEventTopic)}},
	})
}
