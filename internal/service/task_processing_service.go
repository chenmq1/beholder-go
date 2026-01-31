package service

import (
	"context"
	"fmt"

	"github.com/ethereum/go-ethereum/ethclient"
	"github.com/jinzhu/gorm"

	"github.com/beholder-daemon/config"
	"github.com/beholder-daemon/internal/service/burnpair"
	"github.com/beholder-daemon/internal/utils"
)

// TaskProcessingService 任务处理服务
type TaskProcessingService struct {
	db                 *gorm.DB
	clients            map[string]*ethclient.Client
	pairCreateService  *burnpair.PairCreateService
	pairValuateService *burnpair.PairValuateService
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
	pairValuateService := burnpair.NewPairValuateService(db, web3Client, utils.NewWeb3Utils())

	return &TaskProcessingService{
		db:                 db,
		clients:            clients,
		pairCreateService:  pairCreateService,
		pairValuateService: pairValuateService,
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
				default:
					fmt.Printf("未知任务类型: %s\n", task)
				}
			}
		}
	}
}
