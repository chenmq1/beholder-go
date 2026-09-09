package controller

import (
	"fmt"
	"net/http"
	"strconv"

	instantcommon "github.com/beholder-daemon/internal/service/instant-common"
	"github.com/beholder-daemon/internal/model"
	"github.com/beholder-daemon/internal/model/burnpair"
	"github.com/beholder-daemon/internal/model/uniswapcallback"
	modelwl "github.com/beholder-daemon/internal/model/watchlist"
	"github.com/beholder-daemon/internal/service"
	"github.com/beholder-daemon/internal/utils"
	"github.com/beholder-daemon/internal/service/watchlist"
	"github.com/gin-gonic/gin"
	"github.com/jinzhu/gorm"
)

// BeholderController 处理 API 请求
type BeholderController struct {
	db               *gorm.DB
	publisher        *service.RabbitMQPublisher
	approvalInstant  *instantcommon.ApprovalInstantService
	watchlistSvc     *watchlist.Service
}

// NewBeholderController 创建 BeholderController 实例
func NewBeholderController(db *gorm.DB, publisher *service.RabbitMQPublisher, clients map[string]*utils.Web3Client) *BeholderController {
	return &BeholderController{
		db:              db,
		publisher:       publisher,
		approvalInstant: instantcommon.NewApprovalInstantService(clients),
		watchlistSvc:    watchlist.NewService(db, clients),
	}
}

// RegisterRoutes 注册路由
func (c *BeholderController) RegisterRoutes(router *gin.Engine) {
	api := router.Group("/api")
	{
		// 合约代码相关路由
		api.GET("/code/:tokenAddress", c.getCodeByToken)

		// 交易对相关路由
		pairs := api.Group("/pairs")
		{
			pairs.GET("/paged", c.getPairsPaged)
			pairs.GET("/tasks/paged", c.getPairsTasksPaged)
			pairs.POST("/tasks/send/:taskId", c.sendPairsTask)
			pairs.GET("/sync-burn/paged", c.getPairSyncBurnPaged)
			pairs.PATCH("/sync-burn/input", c.updatePairSyncBurnInput)
		}

		// 发送者相关路由
		senders := api.Group("/senders")
		{
			senders.GET("/paged", c.getSendersPaged)
			senders.GET("/tasks/paged", c.getSendersTasksPaged)
			senders.POST("/tasks/send/:taskId", c.sendSendersTask)
			senders.PATCH("/:address/status", c.updateSenderStatus)
		}

		// 即时事件查询（面向前端实时调用，不入库）
		instant := api.Group("/instant")
		{
			instant.GET("/approvals", c.getApprovals)
		}

		// 通用任务发送：直接把前端组装的 JSON 投递到 MQ，不依赖预设的 taskMessages
		api.POST("/tasks/send", c.sendTaskMessage)

		// 函数调用监控（watchlist）
		wl := api.Group("/watchlist")
		{
			wl.GET("/function-calls", c.listFunctionCalls)
			wl.POST("/function-calls/refresh", c.refreshFunctionCalls)
		}
	}
}

// sendTaskMessage 直接发送事件收集任务到 RabbitMQ（自由组装消息体，无需预设 taskId）
//
//	Body: {"function":"commonEvent","task":"collect","chainId":"2",
//	       "events":"approve,sync","startBlock":"120330184","endBlock":"120407424"}
//	function 必填（commonEvent/burn/pairCreated/...）；task 缺省 "collect"；
//	events 仅 commonEvent 需要（逗号分隔，从注册表选）；chainId 必填；
//	startBlock/endBlock 可选（缺省走增量续扫/最新区块）。
func (c *BeholderController) sendTaskMessage(ctx *gin.Context) {
	var msg map[string]interface{}
	if err := ctx.ShouldBindJSON(&msg); err != nil {
		ctx.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	// 基本校验：function / chainId 必填，且值为字符串（消费端按 string 断言）
	if msg["function"] == nil || msg["chainId"] == nil {
		ctx.JSON(http.StatusBadRequest, gin.H{"error": "function 和 chainId 必填"})
		return
	}
	if msg["task"] == nil {
		msg["task"] = "collect"
	}
	// 强制 chainId 为 string（消费端 strconv 读 string，传 number 会失败）
	msg["chainId"] = fmt.Sprintf("%v", msg["chainId"])
	if fn, _ := msg["function"].(string); fn == "commonEvent" {
		if msg["events"] == nil || msg["events"] == "" {
			ctx.JSON(http.StatusBadRequest, gin.H{"error": "commonEvent 必须提供 events（多选，逗号分隔）"})
			return
		}
	}

	if err := c.publisher.Publish(msg); err != nil {
		ctx.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	ctx.JSON(http.StatusOK, gin.H{"message": "任务已发送", "payload": msg})
}

// getApprovals 即时查询指定 token 的 Approval 事件（按 spender 去重，不入库，直接返回前端）
//
//	Query: chainId（默认 1）、tokenAddress（必填）、startBlock（可选）、endBlock（可选）
func (c *BeholderController) getApprovals(ctx *gin.Context) {
	chainId, err := strconv.Atoi(ctx.DefaultQuery("chainId", "1"))
	if err != nil {
		ctx.JSON(http.StatusBadRequest, gin.H{"error": "chainId 参数无效"})
		return
	}
	tokenAddress := ctx.Query("tokenAddress")
	if tokenAddress == "" {
		ctx.JSON(http.StatusBadRequest, gin.H{"error": "tokenAddress 参数必填"})
		return
	}

	var startBlock, endBlock uint64
	if sb := ctx.Query("startBlock"); sb != "" {
		if startBlock, err = strconv.ParseUint(sb, 10, 64); err != nil {
			ctx.JSON(http.StatusBadRequest, gin.H{"error": "startBlock 参数无效"})
			return
		}
	}
	if eb := ctx.Query("endBlock"); eb != "" {
		if endBlock, err = strconv.ParseUint(eb, 10, 64); err != nil {
			ctx.JSON(http.StatusBadRequest, gin.H{"error": "endBlock 参数无效"})
			return
		}
	}

	results, scannedStart, scannedEnd, err := c.approvalInstant.GetApprovals(ctx.Request.Context(), chainId, tokenAddress, startBlock, endBlock)
	if err != nil {
		ctx.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}

	ctx.JSON(http.StatusOK, gin.H{
		"chainId":       chainId,
		"tokenAddress":  tokenAddress,
		"count":         len(results),
		"scannedStart":  scannedStart,
		"scannedEnd":    scannedEnd,
		"content":       results,
	})
}

// getPairsTasksPaged 获取交易对任务列表
func (c *BeholderController) getPairsTasksPaged(ctx *gin.Context) {
	// 解析请求参数
	page, _ := strconv.Atoi(ctx.DefaultQuery("page", "0"))
	size, _ := strconv.Atoi(ctx.DefaultQuery("size", "20"))
	status, _ := strconv.Atoi(ctx.DefaultQuery("status", "-100"))
	sortBy := ctx.DefaultQuery("sortBy", "startTime")
	direction := ctx.DefaultQuery("direction", "desc")

	// 构建分页查询
	offset := page * size

	var tasks []burnpair.BurnPairTask
	var total int64

	// 映射前端字段名到数据库列名
	sortField := sortBy
	switch sortBy {
	case "startTime":
		sortField = "start_time"
	case "endTime":
		sortField = "end_time"
	}

	// 根据状态查询任务
	query := c.db.Model(&burnpair.BurnPairTask{})

	if status != -100 {
		query = query.Where("status = ?", status)
	}

	// 计算总数
	query.Count(&total)

	// 执行分页查询
	if direction == "desc" {
		query = query.Order(sortField + " DESC")
	} else {
		query = query.Order(sortField + " ASC")
	}

	err := query.Offset(offset).Limit(size).Find(&tasks).Error
	if err != nil {
		return
	}

	// 构建响应
	response := gin.H{
		"content":          tasks,
		"totalElements":    total,
		"totalPages":       (total + int64(size) - 1) / int64(size),
		"number":           page,
		"size":             size,
		"first":            page == 0,
		"last":             (page+1)*size >= int(total),
		"numberOfElements": len(tasks),
		"empty":            len(tasks) == 0,
	}

	ctx.JSON(http.StatusOK, response)
}

// getPairsPaged 获取交易对分页列表
func (c *BeholderController) getPairsPaged(ctx *gin.Context) {
	page, _ := strconv.Atoi(ctx.DefaultQuery("page", "0"))
	size, _ := strconv.Atoi(ctx.DefaultQuery("size", "200"))
	checkState, _ := strconv.Atoi(ctx.DefaultQuery("checkState", "-1"))
	sortBy := ctx.DefaultQuery("sortBy", "valueInUsd")
	direction := ctx.DefaultQuery("direction", "desc")

	offset := page * size

	var pairs []burnpair.UniswapPair
	var total int64

	sortField := utils.ToSnake(sortBy)

	query := c.db.Model(&burnpair.UniswapPair{}).Where("code_got = ? AND deleted = ?", 1, 0)

	if checkState != -1 {
		query = query.Where("check_state = ?", checkState)
	}

	query.Count(&total)

	if direction == "desc" {
		query = query.Order(sortField + " DESC")
	} else {
		query = query.Order(sortField + " ASC")
	}

	err := query.Debug().Offset(offset).Limit(size).Find(&pairs).Error
	if err != nil {
		return
	}

	response := gin.H{
		"content":           pairs,
		"totalElements":     total,
		"totalPages":        (total + int64(size) - 1) / int64(size),
		"number":            page,
		"size":              size,
		"first":             page == 0,
		"last":              (page+1)*size >= int(total),
		"numberOfElements":  len(pairs),
		"empty":             len(pairs) == 0,
	}

	ctx.JSON(http.StatusOK, response)
}

// getSendersPaged 获取发送者分页列表
func (c *BeholderController) getSendersPaged(ctx *gin.Context) {
	page, _ := strconv.Atoi(ctx.DefaultQuery("page", "0"))
	size, _ := strconv.Atoi(ctx.DefaultQuery("size", "200"))
	status, _ := strconv.Atoi(ctx.DefaultQuery("status", "-1"))
	chainId, _ := strconv.Atoi(ctx.DefaultQuery("chainId", "1"))
	callbackKey := ctx.DefaultQuery("callbackKey", "")

	offset := page * size

	var senders []uniswapcallback.ThreeSender
	var total int64

	query := c.db.Model(&uniswapcallback.ThreeSender{}).Where("code_got > ? AND chain_id = ?", 1, chainId)

	if callbackKey != "" {
		query = query.Where("callback_key = ?", callbackKey)
	}

	if status != -1 {
		query = query.Where("status = ?", status)
	}

	query.Count(&total)

	err := query.Offset(offset).Limit(size).Find(&senders).Error
	if err != nil {
		return
	}

	response := gin.H{
		"content":           senders,
		"totalElements":     total,
		"totalPages":        (total + int64(size) - 1) / int64(size),
		"number":            page,
		"size":              size,
		"first":             page == 0,
		"last":              (page+1)*size >= int(total),
		"numberOfElements":  len(senders),
		"empty":             len(senders) == 0,
	}

	ctx.JSON(http.StatusOK, response)
}

// getSendersTasksPaged 获取发送者任务列表
func (c *BeholderController) getSendersTasksPaged(ctx *gin.Context) {
	// 解析请求参数
	page, _ := strconv.Atoi(ctx.DefaultQuery("page", "0"))
	size, _ := strconv.Atoi(ctx.DefaultQuery("size", "20"))
	status, _ := strconv.Atoi(ctx.DefaultQuery("status", "-100"))
	chainId, _ := strconv.Atoi(ctx.DefaultQuery("chainId", "1"))
	callbackKey := ctx.DefaultQuery("callbackKey", "")
	sortBy := ctx.DefaultQuery("sortBy", "startTime")
	direction := ctx.DefaultQuery("direction", "desc")

	// 构建分页查询
	offset := page * size

	var tasks []uniswapcallback.SwapCallbackTask
	var total int64

	// 映射前端字段名到数据库列名
	sortField := sortBy
	switch sortBy {
	case "startTime":
		sortField = "start_time"
	case "endTime":
		sortField = "end_time"
	}

	// 根据状态和链 ID 查询任务
	query := c.db.Model(&uniswapcallback.SwapCallbackTask{}).Where("chain_id = ?", chainId)

	if callbackKey != "" {
		query = query.Where("callback_key = ?", callbackKey)
	}

	if status != -100 {
		query = query.Where("status = ?", status)
	}

	// 计算总数
	query.Count(&total)

	// 执行分页查询
	if direction == "desc" {
		query = query.Order(sortField + " DESC")
	} else {
		query = query.Order(sortField + " ASC")
	}

	err := query.Offset(offset).Limit(size).Find(&tasks).Error
	if err != nil {
		return
	}

	// 构建响应
	response := gin.H{
		"content":         tasks,
		"totalElements":   total,
		"totalPages":      (total + int64(size) - 1) / int64(size),
		"number":          page,
		"size":            size,
		"first":           page == 0,
		"last":            (page+1)*size >= int(total),
		"numberOfElements": len(tasks),
		"empty":           len(tasks) == 0,
	}

	ctx.JSON(http.StatusOK, response)
}

// pairSyncBurnRow v_pair_sync_burn 视图行（pair 创建 ↔ 最新 Sync ↔ 该 pair 发起的外部销毁）
// 视图列名：chain_id, factory, token0, token1, createdBlock, address（pair 地址）,
// syncBlock, syncCount, syncHash, burnHash, burnCount, reserve0, reserve1
// LEFT JOIN input 表（键：chain_id + address=pair 地址）带出 status/input，可能为 NULL。
// LEFT JOIN token_alias 两次带出 alias 与 decimals，用于前端计算 reserve / 10^decimals。
// Reserve0 对应 token0 的储备，Reserve1 对应 token1 的储备。
type pairSyncBurnRow struct {
	ChainID      int    `json:"chainId"      gorm:"column:chain_id"`
	Factory      string `json:"factory"      gorm:"column:factory"`
	Token0       string `json:"token0"       gorm:"column:token0"`
	Token1       string `json:"token1"       gorm:"column:token1"`
	CreatedBlock uint64 `json:"createdBlock" gorm:"column:createdBlock"`
	PairAddress  string `json:"pairAddress"  gorm:"column:address"`
	SyncBlock    uint64 `json:"syncBlock"    gorm:"column:syncBlock"`
	SyncCount    int    `json:"syncCount"    gorm:"column:syncCount"`
	SyncHash     string `json:"syncHash"     gorm:"column:syncHash"`
	BurnHash     string `json:"burnHash"     gorm:"column:burnHash"`
	BurnCount    int    `json:"burnCount"    gorm:"column:burnCount"`
	Status       *int   `json:"status"       gorm:"column:status"`
	Input        *string `json:"input"       gorm:"column:input"`
	// token0/token1 在 token_alias 表中命中时的别名与精度（LEFT JOIN，未命中为 null）
	Token0Alias   *string `json:"token0Alias"   gorm:"column:token0_alias"`
	Token1Alias   *string `json:"token1Alias"   gorm:"column:token1_alias"`
	Token0Decimal *int    `json:"token0Decimal" gorm:"column:token0_decimal"`
	Token1Decimal *int    `json:"token1Decimal" gorm:"column:token1_decimal"`
	// reserve0/reserve1 来自 v_pair（sync_event 的储备），varchar(78) 存大整数字符串
	Reserve0 *string `json:"reserve0" gorm:"column:reserve0"`
	Reserve1 *string `json:"reserve1" gorm:"column:reserve1"`
}

// getPairSyncBurnPaged 分页查询 v_pair_sync_burn 视图（pair ↔ sync ↔ 外部销毁）
//
//	Query: chainId（默认 2=BSC）、page（默认 0）、size（默认 100）、
//	       sortBy（默认 createdBlock，可选 syncBlock/syncCount/burnCount，均倒序）
func (c *BeholderController) getPairSyncBurnPaged(ctx *gin.Context) {
	chainId, _ := strconv.Atoi(ctx.DefaultQuery("chainId", "2"))
	page, _ := strconv.Atoi(ctx.DefaultQuery("page", "0"))
	size, _ := strconv.Atoi(ctx.DefaultQuery("size", "100"))
	if size <= 0 || size > 1000 {
		size = 100
	}
	if page < 0 {
		page = 0
	}

	sortWhitelist := map[string]string{
		"createdBlock": "createdBlock",
		"syncBlock":    "syncBlock",
		"syncCount":    "syncCount",
		"burnCount":    "burnCount",
	}
	sortBy := ctx.DefaultQuery("sortBy", "createdBlock")
	sortField, ok := sortWhitelist[sortBy]
	if !ok {
		sortField = "createdBlock"
	}

	offset := page * size

	var rows []pairSyncBurnRow
	var total int64

	// LEFT JOIN input：status/input 按 (chain_id, address=pair 地址) 关联，无记录时为 NULL
	// LEFT JOIN token_alias 两次：token0/token1 命中别名表时带出 alias
	countQ := c.db.Table("v_pair_sync_burn v").
		Joins("LEFT JOIN input i ON i.chain_id = v.chain_id AND i.address = v.address").
		Joins("LEFT JOIN token_alias ta0 ON ta0.chain_id = v.chain_id AND ta0.address = v.token0").
		Joins("LEFT JOIN token_alias ta1 ON ta1.chain_id = v.chain_id AND ta1.address = v.token1").
		Where("v.chain_id = ?", chainId)
	countQ.Count(&total)

	err := c.db.Table("v_pair_sync_burn v").
		Select("v.*, i.status AS status, i.input AS input, ta0.alias AS token0_alias, ta1.alias AS token1_alias, ta0.decimals AS token0_decimal, ta1.decimals AS token1_decimal").
		Joins("LEFT JOIN input i ON i.chain_id = v.chain_id AND i.address = v.address").
		Joins("LEFT JOIN token_alias ta0 ON ta0.chain_id = v.chain_id AND ta0.address = v.token0").
		Joins("LEFT JOIN token_alias ta1 ON ta1.chain_id = v.chain_id AND ta1.address = v.token1").
		Where("v.chain_id = ?", chainId).
		Order("v." + sortField + " DESC").
		Offset(offset).Limit(size).
		Find(&rows).Error
	if err != nil {
		ctx.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}

	response := gin.H{
		"content":          rows,
		"totalElements":    total,
		"totalPages":       (total + int64(size) - 1) / int64(size),
		"number":           page,
		"size":             size,
		"first":            page == 0,
		"last":             (page+1)*size >= int(total),
		"numberOfElements": len(rows),
		"empty":            len(rows) == 0,
	}
	ctx.JSON(http.StatusOK, response)
}

// updatePairSyncBurnInput 编辑 pair 的 status/input（upsert 到 input 表）
//
// Body: {"chainId": 2, "address": "0x..", "status": 1, "input": "0x..."}
// status/input 可缺省（status→0，input→""）；键 (chain_id, address) 冲突时覆盖。
func (c *BeholderController) updatePairSyncBurnInput(ctx *gin.Context) {
	var req struct {
		ChainId int     `json:"chainId"`
		Address string  `json:"address"`
		Status  *int    `json:"status"`
		Input   *string `json:"input"`
	}
	if err := ctx.ShouldBindJSON(&req); err != nil {
		ctx.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	if req.Address == "" {
		ctx.JSON(http.StatusBadRequest, gin.H{"error": "address is required"})
		return
	}

	status := 0
	if req.Status != nil {
		status = *req.Status
	}
	input := ""
	if req.Input != nil {
		input = *req.Input
	}

	err := c.db.Exec(
		"INSERT INTO input (chain_id, address, status, input) VALUES (?, ?, ?, ?) "+
			"ON DUPLICATE KEY UPDATE status = VALUES(status), input = VALUES(input)",
		req.ChainId, req.Address, status, input).Error
	if err != nil {
		ctx.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	ctx.JSON(http.StatusOK, gin.H{"success": true})
}

// listFunctionCalls 列出所有 function_call 监控行
func (c *BeholderController) listFunctionCalls(ctx *gin.Context) {
	var rows []modelwl.FunctionCall
	if err := c.db.Order("chain_id ASC, address ASC, function_name ASC").Find(&rows).Error; err != nil {
		ctx.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	ctx.JSON(http.StatusOK, gin.H{"content": rows, "total": len(rows)})
}

// refreshFunctionCalls 触发 watchlist 服务逐条 eth_call，刷新 lastValue/lastBlock
func (c *BeholderController) refreshFunctionCalls(ctx *gin.Context) {
	results, err := c.watchlistSvc.Refresh(ctx.Request.Context())
	if err != nil {
		ctx.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	ctx.JSON(http.StatusOK, gin.H{"results": results, "total": len(results)})
}

// getCodeByToken 根据token_address查询Code
func (c *BeholderController) getCodeByToken(ctx *gin.Context) {
	tokenAddress := ctx.Param("tokenAddress")
	chainIdStr := ctx.DefaultQuery("chainId", "1")
	chainId, err := strconv.Atoi(chainIdStr)
	if err != nil {
		ctx.JSON(http.StatusBadRequest, gin.H{"error": "无效的 chainId"})
		return
	}

	var code model.ContractCode
	err = c.db.Where("address = ? AND chain_id = ?", tokenAddress, chainId).First(&code).Error
	if err != nil {
		ctx.Status(http.StatusNotFound)
		return
	}

	ctx.JSON(http.StatusOK, code)
}

// sendPairsTask 发送交易对任务到RabbitMQ
func (c *BeholderController) sendPairsTask(ctx *gin.Context) {
	taskId, err := strconv.Atoi(ctx.Param("taskId"))
	if err != nil {
		ctx.JSON(http.StatusBadRequest, gin.H{"error": fmt.Sprintf("无效的任务ID: %s", ctx.Param("taskId"))})
		return
	}

	err = c.publisher.SendTaskMessage(taskId)
	if err != nil {
		ctx.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	ctx.JSON(http.StatusOK, gin.H{"message": fmt.Sprintf("任务 %d 发送成功", taskId)})
}

// updateSenderStatus 修改发送者状态
func (c *BeholderController) updateSenderStatus(ctx *gin.Context) {
	address := ctx.Param("address")
	status, err := strconv.Atoi(ctx.Query("status"))
	if err != nil {
		ctx.JSON(http.StatusBadRequest, gin.H{"error": "status参数无效"})
		return
	}
	chainId, _ := strconv.Atoi(ctx.DefaultQuery("chainId", "1"))
	callbackKey := ctx.DefaultQuery("callbackKey", "")

	var sender uniswapcallback.ThreeSender
	query := c.db.Where("address = ? AND chain_id = ?", address, chainId)
	if callbackKey != "" {
		query = query.Where("callback_key = ?", callbackKey)
	}
	result := query.First(&sender)
	if result.Error != nil {
		ctx.Status(http.StatusNotFound)
		return
	}

	sender.Status = status
	c.db.Save(&sender)

	ctx.Status(http.StatusOK)
}

// sendSendersTask 发送发送者任务到RabbitMQ
func (c *BeholderController) sendSendersTask(ctx *gin.Context) {
	taskId, err := strconv.Atoi(ctx.Param("taskId"))
	if err != nil {
		ctx.JSON(http.StatusBadRequest, gin.H{"error": fmt.Sprintf("无效的任务ID: %s", ctx.Param("taskId"))})
		return
	}

	params := make(map[string]interface{})
	for k, v := range ctx.Request.URL.Query() {
		if len(v) > 0 {
			params[k] = v[0]
		}
	}

	err = c.publisher.SendTaskMessageWithParams(taskId, params)
	if err != nil {
		ctx.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	ctx.JSON(http.StatusOK, gin.H{"message": fmt.Sprintf("任务 %d 发送成功", taskId)})
}
