package main

import (
	"context"
	"fmt"
	"log"

	"github.com/beholder-daemon/config"
	"github.com/beholder-daemon/internal/controller"
	"github.com/beholder-daemon/internal/service"
	"github.com/beholder-daemon/internal/utils"
	"github.com/gin-contrib/cors"
	"github.com/gin-gonic/gin"
	"github.com/spf13/viper"
)

func main() {
	// 加载配置
	if err := config.LoadConfig(); err != nil {
		log.Fatalf("Failed to load config: %v", err)
	}

	// 初始化数据库
	_, err := config.InitDB()
	if err != nil {
		log.Fatalf("Failed to initialize database: %v", err)
	}

	// 初始化Web3j客户端
	log.Println("Initializing Web3j clients...")
	ethClients, err := config.InitWeb3j()
	if err != nil {
		log.Fatalf("Failed to initialize Web3j: %v", err)
	}
	log.Println("Web3j clients initialized successfully")

	// 构建 Web3Client 映射，供即时事件查询服务使用
	web3Clients := make(map[string]*utils.Web3Client)
	for name, client := range ethClients {
		web3Clients[name] = utils.NewWeb3Client(context.Background(), client, name)
	}

	// 初始化RabbitMQ连接
	rabbitMQConn, err := config.InitRabbitMQ()
	if err != nil {
		log.Fatalf("Failed to initialize RabbitMQ: %v", err)
	}
	defer rabbitMQConn.Close()

	// 初始化RabbitMQ消费者
	queueName := viper.GetString("rabbitmq.queue")
	if queueName == "" {
		queueName = "task.queue"
	}

	consumer, err := service.NewRabbitMQConsumer(rabbitMQConn, queueName)
	if err != nil {
		log.Fatalf("Failed to initialize RabbitMQ consumer: %v", err)
	}
	defer consumer.Close()

	// 启动消费者
	if err := consumer.Start(); err != nil {
		log.Fatalf("Failed to start RabbitMQ consumer: %v", err)
	}

	// 初始化Gin路由
	r := gin.Default()

	// 配置 CORS 中间件
	r.Use(cors.Default())

	// 初始化数据库连接
	db, _ := config.InitDB()

	// 初始化RabbitMQ发布者
	publisher, err := service.NewRabbitMQPublisher(rabbitMQConn)
	if err != nil {
		log.Fatalf("Failed to initialize RabbitMQ publisher: %v", err)
	}
	defer publisher.Close()

	// 注册控制器路由（含即时事件查询 /api/instant/*，面向前端实时调用，不入库）
	beholderController := controller.NewBeholderController(db, publisher, web3Clients)
	beholderController.RegisterRoutes(r)

	// 前端页面：即时 Approval 查询
	r.StaticFile("/approval", "./web/approval.html")
	// 前端页面：pair ↔ sync ↔ burn 视图
	r.StaticFile("/pair-sync-burn", "./web/pair_sync_burn.html")
	// 前端页面：发送事件收集任务到 MQ
	r.StaticFile("/send-event", "./web/send_event.html")
	// 前端页面：函数调用监控（watchlist）
	r.StaticFile("/watchlist", "./web/watchlist.html")

	// 获取服务端口
	port := viper.GetInt("app.port")
	if port == 0 {
		port = 8090
	}

	// 启动HTTP服务器
	addr := fmt.Sprintf(":%d", port)
	log.Printf("Server starting on %s", addr)
	if err := r.Run(addr); err != nil {
		log.Fatalf("Failed to start server: %v", err)
	}
}
