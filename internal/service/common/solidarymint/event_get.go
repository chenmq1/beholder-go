// Package solidarymint 提供「孤立 ERC20 mint」Transfer 事件收集服务的配置与构造。
// 收集流程复用 common.EventCollectService，本包只声明事件特有配置。
//
// 主 filter：topic0 = Transfer 且 topic1(from) = 0x0（mint 形态）；ERC721 Transfer
// （4 个 topic）由模型 ShouldIgnoreLog 在代码层排除。每个区块段额外拉取 Sync 日志
// （AuxFilter），由 SolidaryMintEvent.ShouldCorrelateInSeg 判定：同块同 emitter、
// logIndex 恰好 +1 的 Sync → 排除（pair 流动性添加的 LP mint），否则保留。
// 以 contract_address（发出 Transfer 的合约）去重入库。
package solidarymint

import (
	"github.com/ethereum/go-ethereum"
	ethcommon "github.com/ethereum/go-ethereum/common"
	"github.com/jinzhu/gorm"

	modelcommon "github.com/beholder-daemon/internal/model/common"
	svccommon "github.com/beholder-daemon/internal/service/common"
	"github.com/beholder-daemon/internal/service/common/syncevent"
	"github.com/beholder-daemon/internal/utils"
)

// transferEventTopic ERC20 Transfer(address indexed from, address indexed to, uint256 value) topic0
const transferEventTopic = "0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef"

// mint 形态的 from（topic1）：零地址
var zeroAddrTopic = ethcommon.HexToHash("0x0000000000000000000000000000000000000000000000000000000000000000")

// NewEventGetService 创建孤立 mint 事件收集服务：
// 主 filter topic0 = Transfer、topic1 = 0x0，一次 eth_getLogs 拉取；
// ERC721（4 topic）由模型 ShouldIgnoreLog 排除。每个区块段额外拉取 Sync 日志
// （AuxFilter），由 ShouldCorrelateInSeg 排除紧跟 Sync 的 LP mint 形态。
// 以 contract_address（发出 Transfer 的合约）去重入库。
func NewEventGetService(db *gorm.DB, clients map[string]*utils.Web3Client) *svccommon.EventCollectService {
	return svccommon.NewEventCollectService(db, clients, svccommon.EventCollectConfig{
		TaskType:    "solidaryMintGet",
		CallbackKey: "solidaryMint",
		EventModel:  &modelcommon.SolidaryMintEvent{},
		Direction:   "forward", // 正向拉取，享受与 solidarySync 相同的超限端点自适应处理
		StepLength:  499,       // 段内步长：每批查 499 块，避免首批发起即撞 10000 上限
		Topics: [][]ethcommon.Hash{
			{ethcommon.HexToHash(transferEventTopic)},
			{zeroAddrTopic}, // from = 0x0 → mint 形态
		},
		// 段内辅助 filter：拉取 Sync 事件（仅 topic0，无 topic1/2）
		AuxFilter: ethereum.FilterQuery{
			Topics: [][]ethcommon.Hash{{ethcommon.HexToHash(syncevent.SyncEventTopic)}},
		},
	})
}
