package service

import (
	"encoding/json"
	"fmt"

	"github.com/spf13/viper"
	"github.com/streadway/amqp"
)

var taskMessages = map[int]map[string]interface{}{
	1: {"function": "burnPair", "task": "createEvent", "startBlock": 0, "endBlock": 0},
	2: {"function": "burnPair", "task": "syncEvent"},
	3: {"function": "burnPair", "task": "codeGet"},
	4: {"function": "burnPair", "task": "autoCheck"},
	5: {"function": "burnPair", "task": "flow", "startBlock": 0, "endBlock": 0},
	11: {"function": "swapCallback", "task": "collect3", "startBlock": 0, "endBlock": 0},
	12: {"function": "swapCallback", "task": "codeGet"},
	13: {"function": "swapCallback", "task": "autoCheck"},
	14: {"function": "swapCallback", "task": "flow"},
}

type RabbitMQPublisher struct {
	conn    *amqp.Connection
	channel *amqp.Channel
	queue   amqp.Queue
}

func NewRabbitMQPublisher(conn *amqp.Connection) (*RabbitMQPublisher, error) {
	ch, err := conn.Channel()
	if err != nil {
		return nil, fmt.Errorf("failed to open channel: %w", err)
	}

	queueName := viper.GetString("rabbitmq.queue")
	if queueName == "" {
		queueName = "task.queue"
	}

	q, err := ch.QueueDeclare(
		queueName,
		true,
		false,
		false,
		false,
		nil,
	)
	if err != nil {
		return nil, fmt.Errorf("failed to declare queue: %w", err)
	}

	return &RabbitMQPublisher{
		conn:    conn,
		channel: ch,
		queue:   q,
	}, nil
}

func (p *RabbitMQPublisher) Publish(message map[string]interface{}) error {
	body, err := json.Marshal(message)
	if err != nil {
		return fmt.Errorf("failed to marshal message: %w", err)
	}

	err = p.channel.Publish(
		"",
		p.queue.Name,
		false,
		false,
		amqp.Publishing{
			ContentType:  "application/json",
			Body:         body,
			DeliveryMode: amqp.Persistent,
		},
	)
	if err != nil {
		return fmt.Errorf("failed to publish message: %w", err)
	}

	return nil
}

func (p *RabbitMQPublisher) SendTaskMessage(taskId int) error {
	message, ok := taskMessages[taskId]
	if !ok {
		return fmt.Errorf("无效的任务ID: %d", taskId)
	}
	return p.Publish(message)
}

func (p *RabbitMQPublisher) SendTaskMessageWithChainId(taskId int, chainId int) error {
	message, ok := taskMessages[taskId]
	if !ok {
		return fmt.Errorf("无效的任务ID: %d", taskId)
	}

	msgCopy := make(map[string]interface{})
	for k, v := range message {
		msgCopy[k] = v
	}
	msgCopy["chainId"] = chainId

	return p.Publish(msgCopy)
}

func (p *RabbitMQPublisher) Close() error {
	if p.channel != nil {
		return p.channel.Close()
	}
	return nil
}
