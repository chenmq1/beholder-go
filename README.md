# beholder-go

Uniswap 合约监控与分析服务（Go 版本），基于 Gin + GORM + RabbitMQ 实现。

主要功能：

- 监控 Uniswap 交易对（burnPair）与 Swap 回调合约（uniswapCallback），自动抓取合约代码并做安全分析
- 提供 HTTP API 供前端查询交易对、发送者、任务列表，并可手动触发任务
- 通过 RabbitMQ 消费者异步处理任务消息

## 环境要求

- Go 1.25+
- MySQL 5.7+（数据库名：`beholder`）
- RabbitMQ 3.x
- 可访问的 EVM 节点 RPC（Ethereum / BSC / Polygon / Arbitrum / Base / Optimism）

## 配置

配置文件位于 [configs/config.yaml](configs/config.yaml)，启动时按 `./configs` → `./` 顺序查找。

需要重点检查以下配置项（默认指向主机名 `beholder`，本地运行时请改为 `127.0.0.1` 等）：

```yaml
mysql:
  host: 127.0.0.1
  port: 3306
  username: ryo
  password: sdsau
  database: beholder

rabbitmq:
  host: 127.0.0.1
  port: 5672
  username: admin
  password: 1qaz2wsx
  queue: task.queue

web3j:
  chains:
    ethereum: https://...
```

## 运行

```bash
# 1. 拉取依赖
go mod tidy

# 2. 直接运行
go run ./cmd

# 或者编译后运行
go build -o beholder-go.exe ./cmd
./beholder-go.exe
```

启动流程（见 [cmd/main.go](cmd/main.go)）：

1. 加载 `configs/config.yaml`
2. 连接 MySQL
3. 初始化各链 Web3 客户端
4. 连接 RabbitMQ，并启动消费者（默认队列 `task.queue`）
5. 启动 HTTP 服务，默认端口 `8090`

看到 `Server starting on :8090` 即启动成功。

## HTTP API

默认前缀 `/api`，示例如下：

| 方法 | 路径 | 说明 |
|------|------|------|
| GET | `/api/code/:tokenAddress?chainId=1` | 按 token 地址查询合约代码 |
| GET | `/api/pairs/paged?page=0&size=200&checkState=-1` | 分页查询交易对 |
| GET | `/api/pairs/tasks/paged?page=0&size=20&status=-100` | 分页查询交易对任务 |
| POST | `/api/pairs/tasks/send/:taskId` | 将交易对任务发送到 RabbitMQ |
| GET | `/api/senders/paged?chainId=1&callbackKey=&status=-1` | 分页查询发送者 |
| GET | `/api/senders/tasks/paged?chainId=1&status=-100` | 分页查询发送者任务 |
| POST | `/api/senders/tasks/send/:taskId?callbackKey=xxx` | 将发送者任务发送到 RabbitMQ |
| PATCH | `/api/senders/:address/status?status=210&chainId=1` | 修改发送者状态 |

示例：

```bash
curl http://localhost:8090/api/senders/paged?chainId=1&page=0&size=10
```

## 项目结构

```
beholder-go/
├── cmd/main.go              # 程序入口
├── config/                  # 配置加载与初始化（MySQL / RabbitMQ / Web3）
├── configs/config.yaml      # 运行配置
├── internal/
│   ├── controller/          # HTTP API 路由
│   ├── service/             # RabbitMQ 收发、burnPair / uniswapCallback 业务
│   ├── model/               # 数据库模型
│   └── utils/               # Web3、Solidity 解析、gzip 等工具
└── decompiled/              # 反编译合约源码缓存目录
```

## 测试

```bash
go test ./...
```
