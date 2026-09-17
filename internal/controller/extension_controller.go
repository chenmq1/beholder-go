package controller

import (
	"log"
	"net/http"
	"strconv"
	"sync"
	"time"

	"github.com/gin-gonic/gin"
)

// ExtensionController 接收浏览器扩展（extension/ 目录）发送的网络捕获数据。
// 数据仅存内存环形缓存（最近 maxExtensionCaptures 条），不入库；用于快速验证与后续扩展。
type ExtensionController struct {
	mu       sync.Mutex
	seq      int64
	captures []*ExtensionCapture
}

// ExtensionCapture 一次网络请求/响应捕获
type ExtensionCapture struct {
	ID              int64             `json:"id"` // 后端自增序号
	Source          string            `json:"source"`                  // devtools / background
	PageURL         string            `json:"pageUrl"`                 // 捕获发生时的页面 URL
	URL             string            `json:"url"`
	Method          string            `json:"method"`
	Status          int               `json:"status"`
	StatusText      string            `json:"statusText,omitempty"`
	MimeType        string            `json:"mimeType,omitempty"`
	RequestHeaders  map[string]string `json:"requestHeaders,omitempty"`
	ResponseHeaders map[string]string `json:"responseHeaders,omitempty"`
	RequestBody     string            `json:"requestBody,omitempty"`
	ResponseBody    string            `json:"responseBody,omitempty"`
	ResponseEnc     string            `json:"responseEncoding,omitempty"` // text / base64
	Truncated       bool              `json:"truncated,omitempty"`
	CapturedAt      string            `json:"capturedAt,omitempty"` // 扩展端时间
	ReceivedAt      time.Time         `json:"receivedAt"`           // 后端接收时间
}

const maxExtensionCaptures = 50

func NewExtensionController() *ExtensionController {
	return &ExtensionController{}
}

// RegisterRoutes 注册路由：
//
//	POST /api/extension/capture   扩展上报捕获数据
//	GET  /api/extension/captures  查询缓存（?id=N 查看单条完整内容，默认列表模式仅含响应体预览）
func (c *ExtensionController) RegisterRoutes(router *gin.Engine) {
	ext := router.Group("/api/extension")
	{
		ext.POST("/capture", c.capture)
		ext.GET("/captures", c.list)
	}
}

// capture 接收扩展上报
func (c *ExtensionController) capture(ctx *gin.Context) {
	var item ExtensionCapture
	if err := ctx.ShouldBindJSON(&item); err != nil {
		ctx.JSON(http.StatusBadRequest, gin.H{"error": "invalid json: " + err.Error()})
		return
	}
	item.ReceivedAt = time.Now()

	c.mu.Lock()
	c.seq++
	item.ID = c.seq
	c.captures = append(c.captures, &item)
	if len(c.captures) > maxExtensionCaptures {
		c.captures = c.captures[len(c.captures)-maxExtensionCaptures:]
	}
	c.mu.Unlock()

	log.Printf("[extension] #%d src=%s %s %s status=%d page=%s respLen=%d enc=%s truncated=%v",
		item.ID, item.Source, item.Method, item.URL, item.Status, item.PageURL,
		len(item.ResponseBody), item.ResponseEnc, item.Truncated)

	ctx.JSON(http.StatusOK, gin.H{"msg": "ok", "id": item.ID})
}

// list 查询缓存：默认列表（响应体仅预览 500 字符）；?id=N 返回单条完整内容
func (c *ExtensionController) list(ctx *gin.Context) {
	c.mu.Lock()
	defer c.mu.Unlock()

	if idStr := ctx.Query("id"); idStr != "" {
		id, err := strconv.ParseInt(idStr, 10, 64)
		if err != nil {
			ctx.JSON(http.StatusBadRequest, gin.H{"error": "invalid id"})
			return
		}
		for _, item := range c.captures {
			if item.ID == id {
				ctx.JSON(http.StatusOK, gin.H{"count": 1, "captures": []*ExtensionCapture{item}})
				return
			}
		}
		ctx.JSON(http.StatusNotFound, gin.H{"error": "not found"})
		return
	}

	// 列表模式：响应体截断为预览
	type preview struct {
		ExtensionCapture
		RespPreview string `json:"respPreview"`
	}
	out := make([]preview, 0, len(c.captures))
	for _, item := range c.captures {
		p := preview{ExtensionCapture: *item}
		body := item.ResponseBody
		if len(body) > 500 {
			body = body[:500]
		}
		p.RespPreview = body
		p.ResponseBody = ""
		p.RequestHeaders = nil
		p.ResponseHeaders = nil
		out = append(out, p)
	}
	ctx.JSON(http.StatusOK, gin.H{"count": len(out), "captures": out})
}
