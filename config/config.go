package config

import (
	"bytes"
	"context"
	"crypto/tls"
	"fmt"
	"io"
	"log"
	"net/http"
	"strings"
	"time"

	"github.com/ethereum/go-ethereum/ethclient"
	"github.com/ethereum/go-ethereum/rpc"
	"github.com/jinzhu/gorm"
	_ "github.com/jinzhu/gorm/dialects/mysql"
	"github.com/spf13/viper"
	"github.com/streadway/amqp"
)

// Config 应用配置结构
type Config struct {
	App      AppConfig      `mapstructure:"app"`
	MySQL    MySQLConfig    `mapstructure:"mysql"`
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

// InitWeb3j 初始化Web3j客户端
//
// web3j.insecure_skip_verify 为 true 时跳过 RPC 端点 TLS 证书校验，
// 用于本机代理/防火墙拦截 HTTPS 导致 "certificate is not valid for any names" 的环境。
// 同时对代理/网关偶发返回 HTML 拦截页（"invalid character '<'"）做重试加固。
func InitWeb3j() (map[string]*ethclient.Client, error) {
	chains := viper.GetStringMapString("web3j.chains")
	clients := make(map[string]*ethclient.Client)

	// 自定义传输层：跳过证书校验（可选）+ 非 JSON 响应重试
	transport := http.DefaultTransport.(*http.Transport).Clone()
	if viper.GetBool("web3j.insecure_skip_verify") {
		transport.TLSClientConfig = &tls.Config{InsecureSkipVerify: true}
	}
	httpClient := &http.Client{
		Transport: &rpcRetryTransport{base: transport},
		// JSON-RPC 端点不应有重定向；拒绝跟随，避免被代理 302 带到 HTML 页面
		CheckRedirect: func(req *http.Request, via []*http.Request) error {
			return fmt.Errorf("rpc 端点返回重定向至 %s，已拒绝（疑似代理拦截）", req.URL)
		},
	}

	for chain, url := range chains {
		rpcClient, err := rpc.DialOptions(context.Background(), url, rpc.WithHTTPClient(httpClient))
		if err != nil {
			return nil, fmt.Errorf("failed to connect to %s: %w", chain, err)
		}
		clients[chain] = ethclient.NewClient(rpcClient)
		log.Printf("Web3j client connected for %s", chain)
	}

	return clients, nil
}

// rpcRetryTransport 包装底层 Transport：代理/网关偶发返回非 JSON（HTML 拦截页、
// 502 维护页等）时自动重试，避免上层把 HTML 当 JSON 解析报 "invalid character '<'"。
type rpcRetryTransport struct {
	base http.RoundTripper
}

// 重试间隔：立即、300ms、800ms（共 3 次）
var rpcRetryDelays = []time.Duration{0, 300 * time.Millisecond, 800 * time.Millisecond}

func (t *rpcRetryTransport) RoundTrip(req *http.Request) (*http.Response, error) {
	var lastErr error
	for attempt, delay := range rpcRetryDelays {
		if delay > 0 {
			time.Sleep(delay)
		}

		// 重试需要可重复读取的请求体（JSON-RPC 请求均由 bytes.Reader 构造，GetBody 可用）
		if req.GetBody != nil {
			if body, err := req.GetBody(); err == nil {
				req.Body = body
			}
		}

		resp, err := t.base.RoundTrip(req)
		if err != nil {
			lastErr = err
			continue
		}

		// 预读开头 256 字节判断是否 JSON-RPC 响应（响应通常很短）
		peek := make([]byte, 256)
		n, _ := io.ReadFull(resp.Body, peek)
		peek = peek[:n]
		head := bytes.TrimSpace(peek)
		isJSON := resp.StatusCode == http.StatusOK &&
			strings.Contains(resp.Header.Get("Content-Type"), "json") &&
			len(head) > 0 && (head[0] == '{' || head[0] == '[')

		if isJSON {
			// 回放已读字节，响应体保持完整交给上层
			resp.Body = io.NopCloser(io.MultiReader(bytes.NewReader(peek), resp.Body))
			return resp, nil
		}

		resp.Body.Close()
		lastErr = fmt.Errorf("rpc 返回非 JSON（status=%d, content-type=%q, 片段=%s）",
			resp.StatusCode, resp.Header.Get("Content-Type"), string(head))
		log.Printf("RPC 请求 %s 第 %d 次未拿到 JSON 响应，重试中: %v", req.URL.Host, attempt+1, lastErr)
	}
	return nil, lastErr
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
