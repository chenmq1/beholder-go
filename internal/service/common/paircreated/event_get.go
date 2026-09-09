// Package paircreated 提供 Uniswap V2 Factory PairCreated 事件收集服务的配置与构造。
// 收集流程复用 common.EventCollectService，本包只声明事件特有配置。
package paircreated

import (
	ethcommon "github.com/ethereum/go-ethereum/common"
	"github.com/jinzhu/gorm"

	modelcommon "github.com/beholder-daemon/internal/model/common"
	svccommon "github.com/beholder-daemon/internal/service/common"
	"github.com/beholder-daemon/internal/utils"
)

// PairCreatedEventTopic Uniswap V2 Factory
// PairCreated(address indexed token0, address indexed token1, address pair, uint) 事件 topic
const PairCreatedEventTopic = "0x0d3648bd0f6ba80134a33ba9275ac585d9d315f0ad8355cddefde31afa28d0e9"

// NewEventGetService 创建 PairCreated 事件收集服务：
// 仅 topic0 过滤（token0/token1/pair 均来自事件本身），
// 以 pairAddress（data[0]，模型主键）去重，入库 pair_created_event 表
func NewEventGetService(db *gorm.DB, clients map[string]*utils.Web3Client) *svccommon.EventCollectService {
	return svccommon.NewEventCollectService(db, clients, svccommon.EventCollectConfig{
		TaskType:    "pairCreatedGet",
		CallbackKey: "pairCreated",
		EventModel:  &modelcommon.PairCreatedEvent{},
		Topics: [][]ethcommon.Hash{
			{ethcommon.HexToHash(PairCreatedEventTopic)},
		},
	})
}
