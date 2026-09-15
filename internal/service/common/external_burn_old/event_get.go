// Package external_burn_old 提供旧版 ERC20 销毁 Transfer 事件收集服务
// （aux-sync 段内关联逻辑上线前的逻辑），与 external_burn（新逻辑，入库 burn_event）
// 并行运行，本服务入库 burn_event_old。
//
// 与 external_burn 的差异：
//   - 主 filter 只拉 topic2(to) ∈ {0x0,0xdead} 的 Transfer，不拉 SwapV2；
//   - 不配 AuxFilter，不额外拉 Sync 日志；
//   - 模型不实现 ShouldCorrelateInSeg，无 Sync/Swap 关联判定；
//   - 唯一过滤为 BurnEventOld.ShouldIgnoreLog：排除 from == 发出合约的自销毁。
package external_burn_old

import (
	ethcommon "github.com/ethereum/go-ethereum/common"
	"github.com/jinzhu/gorm"

	modelcommon "github.com/beholder-daemon/internal/model/common"
	svccommon "github.com/beholder-daemon/internal/service/common"
	"github.com/beholder-daemon/internal/utils"
)

// TransferEventTopic ERC20 Transfer(address indexed from, address indexed to, uint256 value) 事件 topic
const TransferEventTopic = "0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef"

// burn 事件的 to（topic2）取值：零地址或 dead 地址
var (
	zeroAddrTopic = ethcommon.HexToHash("0x0000000000000000000000000000000000000000000000000000000000000000")
	deadAddrTopic = ethcommon.HexToHash("0x000000000000000000000000000000000000000000000000000000000000dead")
)

// NewEventGetService 创建旧版销毁事件收集服务：
// 主 filter 仅 topic0 = Transfer 且 topic2(to) ∈ {0x0,0xdead}，一次 eth_getLogs；
// 无 AuxFilter。BurnEventOld.ShouldIgnoreLog 排除 from == 发出合约的自销毁，
// 其余外部销毁按 from 去重入库 burn_event_old。
func NewEventGetService(db *gorm.DB, clients map[string]*utils.Web3Client) *svccommon.EventCollectService {
	return svccommon.NewEventCollectService(db, clients, svccommon.EventCollectConfig{
		TaskType:    "burnOldGet",
		CallbackKey: "burnOld",
		EventModel:  &modelcommon.BurnEventOld{},
		Topics: [][]ethcommon.Hash{
			{ethcommon.HexToHash(TransferEventTopic)},
			nil, // from 任意；自销毁由模型 ShouldIgnoreLog 排除
			{zeroAddrTopic, deadAddrTopic},
		},
	})
}
