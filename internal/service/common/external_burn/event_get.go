// Package external_burn 提供 ERC20 外部销毁 Transfer 事件收集服务的配置与构造。
// 收集流程复用 common.EventCollectService，本包只声明事件特有配置。
//
// 与 mint（from ∈ {0x0,0xdead}）互补，本服务筛 to ∈ {0x0,0xdead} 的 Transfer，
// 并由模型 ShouldIgnoreLog 丢弃 from == 发出合约地址的自销毁（LP 销毁、合约自销毁），
// 只保留外部地址发起的销毁。
package external_burn

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

// NewEventGetService 创建外部销毁事件收集服务：
// topic2（to）为 0x0 或 0xdead 的 Transfer 事件（销毁方向，与 mint 的 from 侧互补），
// from == 发出合约的自销毁由模型 ShouldIgnoreLog 过滤；
// 以 from（topic1，模型主键）去重，入库 burn_event 表
func NewEventGetService(db *gorm.DB, clients map[string]*utils.Web3Client) *svccommon.EventCollectService {
	return svccommon.NewEventCollectService(db, clients, svccommon.EventCollectConfig{
		TaskType:    "burnGet",
		CallbackKey: "burn",
		EventModel:  &modelcommon.BurnEvent{},
		Topics: [][]ethcommon.Hash{
			{ethcommon.HexToHash(TransferEventTopic)},
			nil, // from 任意（from == 发出合约的自销毁在模型 ShouldIgnoreLog 中丢弃）
			{zeroAddrTopic, deadAddrTopic},
		},
	})
}
