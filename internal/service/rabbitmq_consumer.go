package service

import (
	"encoding/json"
	"fmt"
	"log"

	"github.com/streadway/amqp"
)

// RabbitMQConsumer RabbitMQ消费者
type RabbitMQConsumer struct {
	conn               *amqp.Connection
	channel            *amqp.Channel
	queueName          string
	taskProcessingService *TaskProcessingService
}

// NewRabbitMQConsumer 创建RabbitMQConsumer实例
func NewRabbitMQConsumer(conn *amqp.Connection, queueName string) (*RabbitMQConsumer, error) {
	// 创建通道
	channel, err := conn.Channel()
	if err != nil {
		return nil, fmt.Errorf("创建通道失败: %w", err)
	}

	// 声明队列
	_, err = channel.QueueDeclare(
		queueName, // 队列名
		true,      // 持久化
		false,     // 自动删除
		false,     // 独占
		false,     // 非阻塞
		nil,       // 额外参数
	)
	if err != nil {
		return nil, fmt.Errorf("声明队列失败: %w", err)
	}

	// 创建TaskProcessingService实例
	taskProcessingService, err := NewTaskProcessingService()
	if err != nil {
		return nil, fmt.Errorf("创建TaskProcessingService失败: %w", err)
	}

	return &RabbitMQConsumer{
		conn:               conn,
		channel:            channel,
		queueName:          queueName,
		taskProcessingService: taskProcessingService,
	}, nil
}

// Start 启动消费者
func (c *RabbitMQConsumer) Start() error {
	// 消费消息
	messages, err := c.channel.Consume(
		c.queueName, // 队列名
		"",          // 消费者标签
		false,       // 自动确认
		false,       // 独占
		false,       // 非阻塞
		false,       // 非本地
		nil,         // 额外参数
	)
	if err != nil {
		return fmt.Errorf("消费消息失败: %w", err)
	}

	// 处理消息
	go func() {
		for message := range messages {
			fmt.Printf("收到消息: %s\n", message.Body)

			// 解析消息
			var taskMessage map[string]interface{}
			if err := json.Unmarshal(message.Body, &taskMessage); err != nil {
				fmt.Printf("解析消息失败: %v\n", err)
				message.Nack(false, false)
				continue
			}

			// 处理任务
			c.taskProcessingService.ProcessTask(taskMessage)

			// 确认消息
			if err := message.Ack(false); err != nil {
				fmt.Printf("确认消息失败: %v\n", err)
			}
		}
	}()

	log.Printf("消费者已启动，正在监听队列: %s\n", c.queueName)
	return nil
}

// Close 关闭消费者
func (c *RabbitMQConsumer) Close() error {
	if c.channel != nil {
		if err := c.channel.Close(); err != nil {
			return fmt.Errorf("关闭通道失败: %w", err)
		}
	}
	return nil
}
