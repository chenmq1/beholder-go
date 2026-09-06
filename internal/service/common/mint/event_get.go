// Package mint 提供 ERC20 mint/burn Transfer 事件收集服务的配置与构造。
// 收集流程复用 common.EventCollectService，本包只声明事件特有配置。
package mint

import (
	ethcommon "github.com/ethereum/go-ethereum/common"
	"github.com/jinzhu/gorm"

	modelcommon "github.com/beholder-daemon/internal/model/common"
	svccommon "github.com/beholder-daemon/internal/service/common"
	"github.com/beholder-daemon/internal/utils"
)

// TransferEventTopic ERC20 Transfer(address indexed from, address indexed to, uint256 value) 事件 topic
const TransferEventTopic = "0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef"

// mint/burn 事件的 from（topic1）取值：零地址（mint）或 dead 地址（burn）
var (
	zeroAddrTopic = ethcommon.HexToHash("0x0000000000000000000000000000000000000000000000000000000000000000")
	deadAddrTopic = ethcommon.HexToHash("0x000000000000000000000000000000000000000000000000000000000000dead")
)

// NewEventGetService 创建 mint/burn 事件收集服务：
// topic1（from）为 0x0 或 0xdead 的 Transfer 事件，
// 以发出事件的合约地址（log.Address，模型主键）去重，入库 mint_event 表
func NewEventGetService(db *gorm.DB, clients map[string]*utils.Web3Client) *svccommon.EventCollectService {
	return svccommon.NewEventCollectService(db, clients, svccommon.EventCollectConfig{
		TaskType:    "mintGet",
		CallbackKey: "mint",
		EventModel:  &modelcommon.MintEvent{},
		Topics: [][]ethcommon.Hash{
			{ethcommon.HexToHash(TransferEventTopic)},
			{zeroAddrTopic, deadAddrTopic},
		},
	})
}
