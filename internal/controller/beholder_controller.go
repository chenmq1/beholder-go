package controller

import (
	"fmt"
	"net/http"
	"strconv"

	"github.com/beholder-daemon/internal/model"
	"github.com/beholder-daemon/internal/model/burnpair"
	"github.com/beholder-daemon/internal/model/uniswapcallback"
	"github.com/beholder-daemon/internal/service"
	"github.com/beholder-daemon/internal/utils"
	"github.com/gin-gonic/gin"
	"github.com/jinzhu/gorm"
)

// BeholderController 处理 API 请求
type BeholderController struct {
	db       *gorm.DB
	publisher *service.RabbitMQPublisher
}

// NewBeholderController 创建 BeholderController 实例
func NewBeholderController(db *gorm.DB, publisher *service.RabbitMQPublisher) *BeholderController {
	return &BeholderController{db: db, publisher: publisher}
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
		}

		// 发送者相关路由
		senders := api.Group("/senders")
		{
			senders.GET("/paged", c.getSendersPaged)
			senders.GET("/tasks/paged", c.getSendersTasksPaged)
			senders.POST("/tasks/send/:taskId", c.sendSendersTask)
			senders.PATCH("/:address/status", c.updateSenderStatus)
		}
	}
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

	offset := page * size

	var senders []uniswapcallback.ThreeSender
	var total int64

	query := c.db.Model(&uniswapcallback.ThreeSender{}).Where("code_got > ? AND chain_id = ?", 1, chainId)

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

// getCodeByToken 根据token_address查询Code
func (c *BeholderController) getCodeByToken(ctx *gin.Context) {
	tokenAddress := ctx.Param("tokenAddress")

	var code model.ContractCode
	err := c.db.Where("address = ?", tokenAddress).First(&code).Error
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

	var sender uniswapcallback.ThreeSender
	result := c.db.First(&sender, "address = ?", address)
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

	chainId, _ := strconv.Atoi(ctx.DefaultQuery("chainId", "1"))

	err = c.publisher.SendTaskMessageWithChainId(taskId, chainId)
	if err != nil {
		ctx.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	ctx.JSON(http.StatusOK, gin.H{"message": fmt.Sprintf("任务 %d 发送成功", taskId)})
}
