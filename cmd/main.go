package main

import (
	"fmt"
	"log"

	"github.com/beholder-daemon/config"
	"github.com/beholder-daemon/internal/service"
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

	// 初始化Redis
	_, err = config.InitRedis()
	if err != nil {
		log.Fatalf("Failed to initialize Redis: %v", err)
	}

	// 初始化Web3j客户端
	_, err = config.InitWeb3j()
	if err != nil {
		log.Fatalf("Failed to initialize Web3j clients: %v", err)
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
