// Package commonevent 提供可组合的多事件合并抓取服务：
// 通过 MQ 消息的 events 参数（逗号分隔事件名，必填）随时选择组合，
// 如 "swapV2,swapV3"；缺省/为空不抓取。一次 eth_getLogs 合并拉取，
// 按 topic0 分流去重后分别入库各自事件表。
package commonevent

import (
	"github.com/jinzhu/gorm"

	modelcommon "github.com/beholder-daemon/internal/model/common"
	"github.com/beholder-daemon/internal/service/common"
	"github.com/beholder-daemon/internal/service/common/approve"
	"github.com/beholder-daemon/internal/service/common/swapv2"
	"github.com/beholder-daemon/internal/service/common/swapv3"
	"github.com/beholder-daemon/internal/service/common/syncevent"
	"github.com/beholder-daemon/internal/utils"
)

// NewEventGetService 创建组合事件收集服务，注册表当前含 approve / swapV2 / swapV3 / sync。
// 以后新增可组合事件：model/common 加模型（主键即去重键）→ 建表 → 注册表加一行。
func NewEventGetService(db *gorm.DB, clients map[string]*utils.Web3Client) *common.EventCollectService {
	return common.NewEventCollectService(db, clients, common.EventCollectConfig{
		TaskType:    "commonEventGet",
		CallbackKey: "commonEvent",
		EventRegistry: map[string]common.EventDef{
			"approve": {Topic0: approve.ApprovalEventTopic, Model: &modelcommon.ApprovalEvent{}},
			"swapV2":  {Topic0: swapv2.SwapV2EventTopic, Model: &modelcommon.SwapV2Event{}},
			"swapV3":  {Topic0: swapv3.SwapV3EventTopic, Model: &modelcommon.SwapV3Event{}},
			"sync":    {Topic0: syncevent.SyncEventTopic, Model: &modelcommon.SyncEvent{}},
		},
	})
}
