# 修复CookieManager使用方式

## 问题分析

当前代码存在以下问题：

1. **CookieManager创建方式不匹配**：
   - 现在的 `NewCookieManager()` 不需要参数，但 `get_code_service.go` 中仍然传递了文件路径参数

2. **Cookie获取方法不匹配**：
   - 现在的 `CookieManager` 提供了 `GetDedaubCookie()` 方法，但 `get_code_service.go` 中仍然使用已移除的 `GetCookieString()` 方法

3. **Cookie加载逻辑需要调整**：
   - 现在的 `LoadFromChrome()` 方法实现已经改变，需要确保正确调用

## 修复方案

### 1. 修改 `NewGetCodeService` 函数
- 将 `cookieManager := utils.NewCookieManager("./cookies/dedaub_cookies.json")` 改为 `cookieManager := utils.NewCookieManager()`
- 保持 `LoadFromChrome()` 的调用逻辑不变，因为新的实现仍然支持该方法

### 2. 修改 `getDecompiled` 方法
- 将 `cookieStr := s.cookieManager.GetCookieString()` 改为 `cookieStr := s.cookieManager.GetDedaubCookie()`

### 3. 验证修复
- 运行 `go build ./...` 确保代码能够正常编译
- 运行测试代码验证功能是否正常

## 预期结果

- 代码能够正常编译
- 能够成功从 Chrome 浏览器加载 Dedaub cookie
- 能够使用加载的 cookie 成功获取反编译代码
- 保持原有的功能完整性