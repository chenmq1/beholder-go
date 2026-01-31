package config

import (
	"context"
	"fmt"
	"log"
	"time"

	"github.com/ethereum/go-ethereum/ethclient"
	"github.com/go-redis/redis/v8"
	"github.com/jinzhu/gorm"
	_ "github.com/jinzhu/gorm/dialects/mysql"
	"github.com/spf13/viper"
	"github.com/streadway/amqp"
)

// Config 应用配置结构
type Config struct {
	App      AppConfig      `mapstructure:"app"`
	MySQL    MySQLConfig    `mapstructure:"mysql"`
	Redis    RedisConfig    `mapstructure:"redis"`
	RabbitMQ RabbitMQConfig `mapstructure:"rabbitmq"`
	Web3j    Web3jConfig    `mapstructure:"web3j"`
	Task     TaskConfig     `mapstructure:"task"`
}

// AppConfig 应用基础配置
type AppConfig struct {
	Name     string `mapstructure:"name"`
	Port     int    `mapstructure:"port"`
	Timezone string `mapstructure:"timezone"`
}

// MySQLConfig MySQL数据库配置
type MySQLConfig struct {
	Host     string `mapstructure:"host"`
	Port     int    `mapstructure:"port"`
	Username string `mapstructure:"username"`
	Password string `mapstructure:"password"`
	Database string `mapstructure:"database"`
	SSLMode  string `mapstructure:"ssl_mode"`
}

// RedisConfig Redis配置
type RedisConfig struct {
	Host    string        `mapstructure:"host"`
	Port    int           `mapstructure:"port"`
	DB      int           `mapstructure:"db"`
	Timeout time.Duration `mapstructure:"timeout"`
}

// RabbitMQConfig RabbitMQ配置
type RabbitMQConfig struct {
	Host            string `mapstructure:"host"`
	Port            int    `mapstructure:"port"`
	Username        string `mapstructure:"username"`
	Password        string `mapstructure:"password"`
	Queue           string `mapstructure:"queue"`
	AcknowledgeMode string `mapstructure:"acknowledge_mode"`
}

// Web3jConfig Web3j配置
type Web3jConfig struct {
	Timeout time.Duration         `mapstructure:"timeout"`
	Chains  map[string]string     `mapstructure:"chains"`
}

// TaskConfig 任务配置
type TaskConfig struct {
	Blockchain struct {
		SyncInterval time.Duration `mapstructure:"sync_interval"`
	} `mapstructure:"blockchain"`
	Data struct {
		CleanupInterval time.Duration `mapstructure:"cleanup_interval"`
	} `mapstructure:"data"`
	Health struct {
		CheckInterval time.Duration `mapstructure:"check_interval"`
	} `mapstructure:"health"`
}

// LoadConfig 加载配置文件
func LoadConfig() error {
	viper.SetConfigName("config")
	viper.SetConfigType("yaml")
	viper.AddConfigPath("./configs")
	viper.AddConfigPath(".")

	if err := viper.ReadInConfig(); err != nil {
		return fmt.Errorf("failed to read config file: %w", err)
	}

	return nil
}

// InitDB 初始化数据库连接
func InitDB() (*gorm.DB, error) {
	dsn := fmt.Sprintf("%s:%s@tcp(%s:%d)/%s?charset=utf8mb4&parseTime=True&loc=Local",
		viper.GetString("mysql.username"),
		viper.GetString("mysql.password"),
		viper.GetString("mysql.host"),
		viper.GetInt("mysql.port"),
		viper.GetString("mysql.database"),
	)

	db, err := gorm.Open("mysql", dsn)
	if err != nil {
		return nil, fmt.Errorf("failed to connect to database: %w", err)
	}

	// 设置连接池
	db.DB().SetMaxIdleConns(10)
	db.DB().SetMaxOpenConns(100)
	db.DB().SetConnMaxLifetime(time.Hour)

	log.Println("Database connected successfully")
	return db, nil
}

// InitRedis 初始化Redis客户端
func InitRedis() (*redis.Client, error) {
	redisClient := redis.NewClient(&redis.Options{
		Addr:         fmt.Sprintf("%s:%d", viper.GetString("redis.host"), viper.GetInt("redis.port")),
		Password:     "", // 如果没有密码，留空
		DB:           viper.GetInt("redis.db"),
		DialTimeout:  viper.GetDuration("redis.timeout"),
		ReadTimeout:  viper.GetDuration("redis.timeout"),
		WriteTimeout: viper.GetDuration("redis.timeout"),
	})

	// 测试连接
	ctx := context.Background()
	if _, err := redisClient.Ping(ctx).Result(); err != nil {
		return nil, fmt.Errorf("failed to connect to Redis: %w", err)
	}

	log.Println("Redis connected successfully")
	return redisClient, nil
}

// InitWeb3j 初始化Web3j客户端
func InitWeb3j() (map[string]*ethclient.Client, error) {
	chains := viper.GetStringMapString("web3j.chains")
	clients := make(map[string]*ethclient.Client)

	for chain, url := range chains {
		client, err := ethclient.Dial(url)
		if err != nil {
			return nil, fmt.Errorf("failed to connect to %s: %w", chain, err)
		}
		clients[chain] = client
		log.Printf("Web3j client connected for %s", chain)
	}

	return clients, nil
}

// InitRabbitMQ 初始化RabbitMQ连接
func InitRabbitMQ() (*amqp.Connection, error) {
	addr := fmt.Sprintf("amqp://%s:%s@%s:%d/",
		viper.GetString("rabbitmq.username"),
		viper.GetString("rabbitmq.password"),
		viper.GetString("rabbitmq.host"),
		viper.GetInt("rabbitmq.port"),
	)

	conn, err := amqp.Dial(addr)
	if err != nil {
		return nil, fmt.Errorf("failed to connect to RabbitMQ: %w", err)
	}

	log.Println("RabbitMQ connected successfully")
	return conn, nil
}
