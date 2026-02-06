# 修改 Dedaub 登录流程以动态获取登录 URL

## 问题分析

当前登录流程直接使用用户提供的固定登录 URL，但实际上需要：

1. 先发送 GET 请求获取认证页面
2. 从返回的 HTML 中提取 `loginAction` 字段作为真正的登录 URL
3. 使用提取的 URL 发送登录表单

## 修改方案

### 1. 修改 `loginToDedaub` 函数

* **添加步骤 0**: 发送 GET 请求到 Keycloak 认证端点

* **解析 HTML 响应**: 提取 `loginAction` 字段的值

* **使用动态 URL**: 将提取的 URL 作为登录表单的目标 URL

* **保持现有逻辑**: 后续的登录表单提交和重定向处理逻辑不变

### 2. 具体修改点

* **文件**: `c:\Users\minqi\beholder_daemon\internal\service\getcode\get_code_service.go`

* **函数**: `loginToDedaub()`

* **修改内容**:

  1. 添加获取认证页面的 GET 请求
  2. 实现 HTML 解析逻辑，提取 `loginAction`
  3. 将固定 URL 替换为动态提取的 URL
  4. 保持其他登录逻辑不变

### 3. 技术实现

* 使用标准 `net/http` 包发送 GET 请求

* 使用简单的字符串解析或正则表达式提取 `loginAction`

* 确保提取的 URL 包含完整的认证参数

* 保持详细的日志记录以便调试

## 预期效果

* 登录流程更加灵活，不依赖固定的登录 URL

* 能够适应 Keycloak 认证服务器的动态参数变化

* 提高登录成功率和系统稳定性

* 保持完整的日志记录和错误处理

