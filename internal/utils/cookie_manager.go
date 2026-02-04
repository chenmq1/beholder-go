package utils

import (
	"encoding/json"
	"fmt"
	"io/ioutil"
	"net/http"
	"net/http/cookiejar"
	"net/url"
	"os"
	"path/filepath"
	"time"
)

// CookieManager Cookie 管理工具
type CookieManager struct {
	cookies    map[string]*http.Cookie
	cookieFile string
}

// NewCookieManager 创建 CookieManager 实例
func NewCookieManager(cookieFile string) *CookieManager {
	return &CookieManager{
		cookies:    make(map[string]*http.Cookie),
		cookieFile: cookieFile,
	}
}

// LoadFromFile 从文件加载 cookie
func (cm *CookieManager) LoadFromFile() error {
	if _, err := os.Stat(cm.cookieFile); os.IsNotExist(err) {
		return nil // 文件不存在，返回 nil
	}

	file, err := os.Open(cm.cookieFile)
	if err != nil {
		return fmt.Errorf("打开 cookie 文件失败: %w", err)
	}
	defer file.Close()

	data, err := ioutil.ReadAll(file)
	if err != nil {
		return fmt.Errorf("读取 cookie 文件失败: %w", err)
	}

	var cookies []*http.Cookie
	if err := json.Unmarshal(data, &cookies); err != nil {
		return fmt.Errorf("解析 cookie 文件失败: %w", err)
	}

	// 将 cookie 存储到 map 中
	for _, cookie := range cookies {
		cm.cookies[cookie.Name] = cookie
	}

	return nil
}

// SaveToFile 保存 cookie 到文件
func (cm *CookieManager) SaveToFile() error {
	// 确保目录存在
	dir := filepath.Dir(cm.cookieFile)
	if _, err := os.Stat(dir); os.IsNotExist(err) {
		if err := os.MkdirAll(dir, 0755); err != nil {
			return fmt.Errorf("创建目录失败: %w", err)
		}
	}

	// 将 map 转换为切片
	var cookies []*http.Cookie
	for _, cookie := range cm.cookies {
		cookies = append(cookies, cookie)
	}

	data, err := json.Marshal(cookies)
	if err != nil {
		return fmt.Errorf("序列化 cookie 失败: %w", err)
	}

	if err := ioutil.WriteFile(cm.cookieFile, data, 0644); err != nil {
		return fmt.Errorf("写入 cookie 文件失败: %w", err)
	}

	return nil
}

// AddCookie 添加 cookie
func (cm *CookieManager) AddCookie(cookie *http.Cookie) {
	cm.cookies[cookie.Name] = cookie
}

// AddCookies 添加多个 cookie
func (cm *CookieManager) AddCookies(cookies []*http.Cookie) {
	for _, cookie := range cookies {
		cm.AddCookie(cookie)
	}
}

// GetCookie 获取 cookie
func (cm *CookieManager) GetCookie(name string) *http.Cookie {
	return cm.cookies[name]
}

// GetCookies 获取所有 cookie
func (cm *CookieManager) GetCookies() []*http.Cookie {
	var cookies []*http.Cookie
	for _, cookie := range cm.cookies {
		cookies = append(cookies, cookie)
	}
	return cookies
}

// GetCookieString 获取 cookie 字符串，用于请求头
func (cm *CookieManager) GetCookieString() string {
	var cookieStr string
	for _, cookie := range cm.cookies {
		if cookieStr != "" {
			cookieStr += "; "
		}
		cookieStr += cookie.Name + "=" + cookie.Value
	}
	return cookieStr
}

// IsExpired 检查 cookie 是否过期
func (cm *CookieManager) IsExpired() bool {
	for _, cookie := range cm.cookies {
		if cookie.Expires.IsZero() {
			continue // 没有过期时间，视为未过期
		}
		if cookie.Expires.Before(time.Now()) {
			return true // 有一个 cookie 过期，视为过期
		}
	}
	return false
}

// Clear 清除所有 cookie
func (cm *CookieManager) Clear() {
	cm.cookies = make(map[string]*http.Cookie)
}

// GetJar 获取 cookiejar.Jar 实例
func (cm *CookieManager) GetJar() (*cookiejar.Jar, error) {
	jar, err := cookiejar.New(nil)
	if err != nil {
		return nil, fmt.Errorf("创建 cookiejar 失败: %w", err)
	}

	// 将 cookie 添加到 jar 中
	for _, cookie := range cm.cookies {
		cookieURL, err := url.Parse("https://app.dedaub.com")
		if err != nil {
			continue
		}
		jar.SetCookies(cookieURL, []*http.Cookie{cookie})
	}

	return jar, nil
}
