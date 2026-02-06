package utils

import (
	"fmt"
	"io/ioutil"
	"os"
)

// CookieManager handles loading and storing specific site cookies
type CookieManager struct {
	dedaubCookie  string
	bscscanCookie string
}

// NewCookieManager creates a new instance
func NewCookieManager() *CookieManager {
	return &CookieManager{}
}

// LoadFromChrome reads cookies from dedaubCookie.txt in project root
func (cm *CookieManager) LoadFromChrome() error {
	// 直接从项目根目录读取 dedaubCookie.txt 文件
	cookieFile := "./dedaubCookie.txt"
	if _, err := os.Stat(cookieFile); os.IsNotExist(err) {
		return fmt.Errorf("dedaubCookie.txt 文件不存在")
	}

	content, err := ioutil.ReadFile(cookieFile)
	if err != nil {
		return fmt.Errorf("读取 dedaubCookie.txt 文件失败: %w", err)
	}

	// 解析 cookie 字符串
	cookieStr := string(content)
	cm.dedaubCookie = cookieStr

	// 对于 bscscan cookie，暂时设置为空
	cm.bscscanCookie = ""

	if cm.dedaubCookie == "" {
		return fmt.Errorf("failed to find required cookies (Dedaub: %v)", cm.dedaubCookie != "")
	}

	return nil
}

func (cm *CookieManager) GetDedaubCookie() string  { return cm.dedaubCookie }
func (cm *CookieManager) GetBscscanCookie() string { return cm.bscscanCookie }


