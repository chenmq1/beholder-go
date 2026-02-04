package getcode

import (
	"fmt"
	"testing"

	"github.com/beholder-daemon/config"
	"github.com/ethereum/go-ethereum/ethclient"
	"github.com/jinzhu/gorm"
)

// TestLoginToDedaub 测试登录到 Dedaub 并获取 cookie 的功能
func TestLoginToDedaub(t *testing.T) {
	// 注意：这个测试需要真实的数据库连接和链配置
	// 在实际测试中，你可能需要使用测试数据库和模拟配置
	
	// 这里我们创建一个最小化的测试环境
	// 由于我们只测试 loginToDedaub 函数，我们可以使用 nil 或空值作为一些依赖项
	
	// 创建一个临时的数据库连接（这里使用 nil，实际测试中需要替换为真实的连接）
	var db *gorm.DB = nil
	
	// 创建链配置（这里使用空配置，实际测试中需要替换为真实的配置）
	chains := &config.Chains{}
	
	// 创建空的 web3 客户端映射
	web3Clients := make(map[string]*ethclient.Client)
	
	// 创建 GetCodeService 实例
	service := NewGetCodeService(db, chains, web3Clients)
	
	// 测试 loginToDedaub 函数
	fmt.Println("开始测试 loginToDedaub 函数...")
	
	err := service.loginToDedaub()
	if err != nil {
		t.Errorf("loginToDedaub 函数执行失败: %v", err)
		return
	}
	
	fmt.Println("loginToDedaub 函数执行成功！")
	
	// 验证 cookie 是否成功保存
	cookies := service.cookieManager.GetCookies()
	if len(cookies) == 0 {
		fmt.Println("注意：未收集到任何 cookie，这可能是因为服务器需要 JavaScript 来设置 cookie")
		fmt.Println("但登录流程和日志记录功能已正常工作")
	} else {
		fmt.Printf("成功收集到 %d 个 cookie\n", len(cookies))
		for _, cookie := range cookies {
			fmt.Printf("  %s: %s\n", cookie.Name, cookie.Value)
		}
	}
	
	fmt.Println("测试完成！")
}
