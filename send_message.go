package main

import (
	"encoding/json"
	"fmt"
	"log"

	"github.com/streadway/amqp"
)

func main() {
	// 连接到RabbitMQ服务器
	conn, err := amqp.Dial("amqp://admin:1qaz2wsx@beholder:5672/")
	if err != nil {
		log.Fatalf("无法连接到RabbitMQ: %v", err)
	}
	defer conn.Close()

	// 创建通道
	ch, err := conn.Channel()
	if err != nil {
		log.Fatalf("无法创建通道: %v", err)
	}
	defer ch.Close()

	// 声明队列
	q, err := ch.QueueDeclare(
		"task.queue", // 队列名
		true,         // 持久化
		false,        // 自动删除
		false,        // 独占
		false,        // 非阻塞
		nil,          // 额外参数
	)
	if err != nil {
		log.Fatalf("无法声明队列: %v", err)
	}

	// 准备消息
	message := map[string]interface{}{
		"function":  "burnPair",
		"task":      "createEvent",
		"startBlock": 78200724,
		"endBlock":   78204724,
	}

	// 编码消息为JSON
	body, err := json.Marshal(message)
	if err != nil {
		log.Fatalf("无法编码消息: %v", err)
	}

	// 发送消息
	err = ch.Publish(
		"",     // 交换机
		q.Name, // 队列名
		false,  // 强制
		false,  // 立即
		amqp.Publishing{
			ContentType:  "application/json",
			Body:         body,
			DeliveryMode: amqp.Persistent,
		},
	)
	if err != nil {
		log.Fatalf("无法发送消息: %v", err)
	}

	fmt.Printf("已发送消息: %s\n", body)
}
