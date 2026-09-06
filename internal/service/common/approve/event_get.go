// Package approve 提供 ERC20 Approval 事件收集服务的配置与构造。
// 收集流程复用 common.EventCollectService，本包只声明事件特有配置。
package approve

import (
	ethcommon "github.com/ethereum/go-ethereum/common"
	"github.com/jinzhu/gorm"

	modelcommon "github.com/beholder-daemon/internal/model/common"
	svccommon "github.com/beholder-daemon/internal/service/common"
	"github.com/beholder-daemon/internal/utils"
)

// ApprovalEventTopic ERC20 Approval(address indexed owner, address indexed spender, uint256 value) 事件 topic
const ApprovalEventTopic = "0x8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925"

// NewEventGetService 创建 Approval 事件收集服务：
// 以 spender（topic2，模型主键）去重，入库 approval_event 表
func NewEventGetService(db *gorm.DB, clients map[string]*utils.Web3Client) *svccommon.EventCollectService {
	return svccommon.NewEventCollectService(db, clients, svccommon.EventCollectConfig{
		TaskType:    "approveGet",
		CallbackKey: "approval",
		EventModel:  &modelcommon.ApprovalEvent{},
		Topics:      [][]ethcommon.Hash{{ethcommon.HexToHash(ApprovalEventTopic)}},
	})
}
