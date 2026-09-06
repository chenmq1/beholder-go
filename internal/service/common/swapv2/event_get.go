// Package swapv2 提供 Uniswap V2 Swap 事件收集服务的配置与构造。
// 收集流程复用 common.EventCollectService，本包只声明事件特有配置。
package swapv2

import (
	ethcommon "github.com/ethereum/go-ethereum/common"
	"github.com/jinzhu/gorm"

	modelcommon "github.com/beholder-daemon/internal/model/common"
	svccommon "github.com/beholder-daemon/internal/service/common"
	"github.com/beholder-daemon/internal/utils"
)

// SwapV2EventTopic Uniswap V2 Swap(address,address,uint256,uint256,uint256,address) 事件 topic
const SwapV2EventTopic = "0xd78ad95fa46c994b6551d0da85fc275fe613ce37657fb8d5e3d130840159d822"

// NewEventGetService 创建 V2 Swap 事件收集服务：
// 以 sender（topic1，模型主键）去重，入库 swap_v2_event 表
func NewEventGetService(db *gorm.DB, clients map[string]*utils.Web3Client) *svccommon.EventCollectService {
	return svccommon.NewEventCollectService(db, clients, svccommon.EventCollectConfig{
		TaskType:    "swapV2Get",
		CallbackKey: "swapV2",
		EventModel:  &modelcommon.SwapV2Event{},
		Topics:      [][]ethcommon.Hash{{ethcommon.HexToHash(SwapV2EventTopic)}},
	})
}
