package service

import (
	"context"
	"fmt"

	"github.com/ethereum/go-ethereum/ethclient"
	"github.com/jinzhu/gorm"

	"github.com/beholder-daemon/config"
	"github.com/beholder-daemon/internal/service/burnpair"
	svccommon "github.com/beholder-daemon/internal/service/common"
	"github.com/beholder-daemon/internal/service/common/approve"
	"github.com/beholder-daemon/internal/service/common/commonevent"
	"github.com/beholder-daemon/internal/service/common/mint"
	"github.com/beholder-daemon/internal/service/common/swapv2"
	"github.com/beholder-daemon/internal/service/common/swapv3"
	"github.com/beholder-daemon/internal/service/common/syncevent"
	"github.com/beholder-daemon/internal/service/getcode"
	"github.com/beholder-daemon/internal/service/uniswapcallback"
	"github.com/beholder-daemon/internal/utils"
)

// TaskProcessingService 任务处理服务
type TaskProcessingService struct {
	db                       *gorm.DB
	clients                  map[string]*ethclient.Client
	pairCreateService        *burnpair.PairCreateService
	pairValuateService       *burnpair.PairValuateService
	codeGetService           *burnpair.CodeGetService
	pairAutocheckService     *burnpair.PairAutocheckService
	senderAutocheckService   *uniswapcallback.SenderAutocheckService
	threeGetService          *uniswapcallback.ThreeGetService
	uniswapCodeGetService    *uniswapcallback.UniswapCodeGetService
	analyzeService           *uniswapcallback.AnalyzeService
	walletNetWorthService    *uniswapcallback.WalletNetWorthService
	approveEventGetService   *svccommon.EventCollectService
	mintEventGetService      *svccommon.EventCollectService
	swapV2EventGetService    *svccommon.EventCollectService
	swapV3EventGetService    *svccommon.EventCollectService
	syncEventGetService      *svccommon.EventCollectService
	commonEventGetService    *svccommon.EventCollectService
}

// NewTaskProcessingService 创建TaskProcessingService实例
func NewTaskProcessingService() (*TaskProcessingService, error) {
	// 初始化数据库
	db, err := config.InitDB()
	if err != nil {
		return nil, fmt.Errorf("初始化数据库失败: %w", err)
	}

	// 初始化Web3j客户端
	clients, err := config.InitWeb3j()
	if err != nil {
		return nil, fmt.Errorf("初始化Web3j客户端失败: %w", err)
	}

	// 创建PairCreateService实例
	bscClient, ok := clients["bsc"]
	if !ok {
		return nil, fmt.Errorf("找不到BSC客户端")
	}

	pairCreateService := burnpair.NewPairCreateService(db, bscClient)
	
	// 创建Web3Client实例
	web3Client := utils.NewWeb3Client(context.Background(), bscClient, "bsc")
	
	// 创建PairValuateService实例
	pairValuateService := burnpair.NewPairValuateService(db, web3Client)

	// 创建Chains实例
	chains := config.NewChains()

	// 创建GetCodeService实例
	getCodeService := getcode.NewGetCodeService(db, chains, clients)

	// 创建CodeGetService实例
	codeGetService := burnpair.NewCodeGetService(db, getCodeService)

	// 创建PairAutocheckService实例
	pairAutocheckService := burnpair.NewPairAutocheckService(db)

	// 创建SenderAutocheckService实例
	senderAutocheckService := uniswapcallback.NewSenderAutocheckService(db)

	// 创建ThreeGetService实例
	web3Clients := make(map[string]*utils.Web3Client)
	for name, client := range clients {
		web3Clients[name] = utils.NewWeb3Client(context.Background(), client, name)
	}
	threeGetService := uniswapcallback.NewThreeGetService(db, web3Clients)

	// 创建UniswapCodeGetService实例
	uniswapCodeGetService := uniswapcallback.NewUniswapCodeGetService(db, getCodeService)

	// 创建AnalyzeService实例
	analyzeService := uniswapcallback.NewAnalyzeService(db)

	// 创建WalletNetWorthService实例
	walletNetWorthService := uniswapcallback.NewWalletNetWorthService(db)

	// 创建Approve事件收集服务实例
	approveEventGetService := approve.NewEventGetService(db, web3Clients)

	// 创建Mint事件收集服务实例
	mintEventGetService := mint.NewEventGetService(db, web3Clients)

	// 创建SwapV2事件收集服务实例
	swapV2EventGetService := swapv2.NewEventGetService(db, web3Clients)

	// 创建SwapV3事件收集服务实例
	swapV3EventGetService := swapv3.NewEventGetService(db, web3Clients)

	// 创建Sync事件收集服务实例
	syncEventGetService := syncevent.NewEventGetService(db, web3Clients)

	// 创建组合事件收集服务实例（events 参数可选 approve/swapV2/swapV3/sync 任意组合）
	commonEventGetService := commonevent.NewEventGetService(db, web3Clients)

	return &TaskProcessingService{
		db:                       db,
		clients:                  clients,
		pairCreateService:        pairCreateService,
		pairValuateService:       pairValuateService,
		codeGetService:           codeGetService,
		pairAutocheckService:     pairAutocheckService,
		senderAutocheckService:   senderAutocheckService,
		threeGetService:          threeGetService,
		uniswapCodeGetService:    uniswapCodeGetService,
		analyzeService:           analyzeService,
		walletNetWorthService:    walletNetWorthService,
		approveEventGetService:   approveEventGetService,
		mintEventGetService:      mintEventGetService,
		swapV2EventGetService:    swapV2EventGetService,
		swapV3EventGetService:    swapV3EventGetService,
		syncEventGetService:      syncEventGetService,
		commonEventGetService:    commonEventGetService,
	}, nil
}

// ProcessTask 处理任务消息
func (s *TaskProcessingService) ProcessTask(message map[string]interface{}) {
	fmt.Printf("处理任务消息: %v\n", message)

	if function, ok := message["function"].(string); ok {
		if function == "burnPair" {
			if task, ok := message["task"].(string); ok {
				switch task {
				case "createEvent":
					if err := s.pairCreateService.ProcessTask(message); err != nil {
						fmt.Printf("处理createEvent任务失败: %v\n", err)
					}
				case "syncEvent":
					s.pairValuateService.ProcessTask(message)
				case "codeGet":
					if err := s.codeGetService.ProcessTask(); err != nil {
						fmt.Printf("处理codeGet任务失败: %v\n", err)
					}
				case "autoCheck":
					s.pairAutocheckService.ProcessTask()
				default:
					fmt.Printf("未知任务类型: %s\n", task)
				}
			}
		} else if function == "swapCallback" {
			if task, ok := message["task"].(string); ok {
				switch task {
				case "collect3":
					s.threeGetService.ProcessTask(message)
				case "codeGet":
					s.uniswapCodeGetService.ProcessTask(message)
				case "autoCheck":
					s.senderAutocheckService.ProcessTask(message)
				case "analyze":
					if err := s.analyzeService.ProcessTask(message); err != nil {
						fmt.Printf("处理analyze任务失败: %v\n", err)
					}
				case "walletNetWorth":
					if err := s.walletNetWorthService.ProcessTask(message); err != nil {
						fmt.Printf("处理walletNetWorth任务失败: %v\n", err)
					}
				default:
					fmt.Printf("未知任务类型: %s\n", task)
				}
			}
		} else if function == "approve" {
			if task, ok := message["task"].(string); ok {
				switch task {
				case "collect":
					s.approveEventGetService.ProcessTask(message)
				default:
					fmt.Printf("未知任务类型: %s\n", task)
				}
			}
		} else if function == "mint" {
			if task, ok := message["task"].(string); ok {
				switch task {
				case "collect":
					s.mintEventGetService.ProcessTask(message)
				default:
					fmt.Printf("未知任务类型: %s\n", task)
				}
			}
		} else if function == "swapV2" {
			if task, ok := message["task"].(string); ok {
				switch task {
				case "collect":
					s.swapV2EventGetService.ProcessTask(message)
				default:
					fmt.Printf("未知任务类型: %s\n", task)
				}
			}
		} else if function == "swapV3" {
			if task, ok := message["task"].(string); ok {
				switch task {
				case "collect":
					s.swapV3EventGetService.ProcessTask(message)
				default:
					fmt.Printf("未知任务类型: %s\n", task)
				}
			}
		} else if function == "sync" {
			if task, ok := message["task"].(string); ok {
				switch task {
				case "collect":
					s.syncEventGetService.ProcessTask(message)
				default:
					fmt.Printf("未知任务类型: %s\n", task)
				}
			}
		} else if function == "commonEvent" {
			if task, ok := message["task"].(string); ok {
				switch task {
				case "collect":
					s.commonEventGetService.ProcessTask(message)
				default:
					fmt.Printf("未知任务类型: %s\n", task)
				}
			}
		}
	}
}
