// Package swapv3 提供 Uniswap V3 Swap 事件收集服务的配置与构造。
// 收集流程复用 common.EventCollectService，本包只声明事件特有配置。
package swapv3

import (
	ethcommon "github.com/ethereum/go-ethereum/common"
	"github.com/jinzhu/gorm"

	modelcommon "github.com/beholder-daemon/internal/model/common"
	svccommon "github.com/beholder-daemon/internal/service/common"
	"github.com/beholder-daemon/internal/utils"
)

// SwapV3EventTopic Uniswap V3 Swap(address,address,int256,int256,uint160,uint128,int24) 事件 topic
const SwapV3EventTopic = "0xc42079f94a6350d7e6235f29174924f928cc2ac818eb64fed8004e115fbcca67"

// NewEventGetService 创建 V3 Swap 事件收集服务：
// 以 sender（topic1，模型主键）去重，入库 swap_v3_event 表
func NewEventGetService(db *gorm.DB, clients map[string]*utils.Web3Client) *svccommon.EventCollectService {
	return svccommon.NewEventCollectService(db, clients, svccommon.EventCollectConfig{
		TaskType:    "swapV3Get",
		CallbackKey: "swapV3",
		EventModel:  &modelcommon.SwapV3Event{},
		Topics:      [][]ethcommon.Hash{{ethcommon.HexToHash(SwapV3EventTopic)}},
	})
}
