# Beholder 浏览器捕获扩展

Edge/Chrome 扩展（Manifest V3，原生 JS，无构建步骤）。把网页网络请求的 response 一键或自动上报到本机 Beholder 后端。

- 扩展代码：`extension/`
- 后端接收：`internal/controller/extension_controller.go`
  - `POST /api/extension/capture`：上报（内存环形缓存最近 50 条，不入库）
  - `GET  /api/extension/captures`：查询列表（响应体预览 500 字符）；`?id=N` 查看单条完整内容

## 安装

1. Edge 打开 `edge://extensions`（Chrome 为 `chrome://extensions`）
2. 开启"开发人员模式"
3. "加载解压缩的扩展" → 选择本项目的 `extension/` 目录
4. 修改代码后在此页面点扩展卡片上的"重新加载"；DevTools 面板代码需关闭 DevTools 重开才生效

## 两种使用方式

### 1. DevTools 面板（一键发送）

打开网页 DevTools，顶部标签栏出现 **Beholder** 面板：

- 列出当前页面全部网络请求，每行右侧"发送"按钮 → 取响应体并上报后端
- 勾选面板内"匹配规则自动发送"后，命中规则的新请求自动上报（打开面板前的旧请求不追溯）

### 2. 后台自动捕获（不开 DevTools）

扩展弹窗中勾选"后台自动捕获"。原理为 `chrome.debugger`（CDP）附加到匹配页面范围的标签页，命中匹配规则的请求自动取响应体上报（后端记录 `source=background`）。

**注意事项**：

- chrome.debugger 附加任意标签页后，Edge/Chrome 默认在**所有**标签页顶部显示"xx 已开始调试此浏览器"信息条，这是浏览器级安全提示，不随页面范围收窄
- 自用开发机可加启动参数消除信息条：完全退出浏览器（任务管理器确认无 `msedge.exe`/`chrome.exe` 残留）后，用快捷方式启动
  ```
  msedge.exe --silent-debugger-extension-api
  ```
- 某标签页若已打开 DevTools，则 debugger 无法附加（与 DevTools 互斥），此时改用 Beholder 面板
- service worker 重启不影响上报逻辑，启动时会自动对账附加状态

## 配置（扩展弹窗）

点击工具栏扩展图标打开设置弹窗。

### 后端地址

默认 `http://127.0.0.1:8090`。弹窗内"测试"按钮可验证连通性。

### 页面范围（pageScopes）

正则列表，仅当标签页完整 URL 命中**任一**正则时才附加 debugger；列表为空 = 所有网页。多条之间为 OR 关系。

当前配置：

```
^https://app\.blocksec\.com/phalcon/explorer/tx/
^https://dedaub\.com/viewer/
```

失焦自动保存，保存时校验正则合法性。

### 匹配规则（rules）

决定被附加页面内**哪些请求**被捕获上报，支持多条。每条：

| 字段 | 必填 | 说明 |
|---|---|---|
| URL 正则 | 是 | 对**完整 URL**（含 `https://`）做匹配 |
| 方法 | 否 | 精确匹配 `GET`/`POST` 等，留空 = 任意方法 |
| 响应体正则 | 否 | 取到响应体后再过滤，仅对文本响应生效 |
| 启用 | — | 复选框，可临时停用单条规则 |

URL 正则示例（匹配 `https://app.blocksec.com/api/explorer/v2/onchain/tx/trace`）：

```
^https://app\.blocksec\.com/api/explorer/v2/onchain/tx/trace
```

正则要点：

- `.` 需转义为 `\.`；`/` 不需要转义
- `^` 锚定开头、`$` 锚定结尾；需容忍 `?查询参数` 时不要加 `$`
- 多路径可用分组：`^https://app\.blocksec\.com/phalcon/explorer/(tx|account)/`

### 上报数据结构

```json
{
  "source": "devtools | background",
  "pageUrl": "捕获时的页面 URL",
  "url": "请求 URL",
  "method": "POST",
  "status": 200,
  "mimeType": "application/json",
  "requestHeaders": {},
  "responseHeaders": {},
  "requestBody": "",
  "responseBody": "",
  "responseEncoding": "text | base64",
  "truncated": false,
  "capturedAt": "2026-10-14T10:00:00.000Z"
}
```

单个请求/响应体超过 2MB 自动截断并置 `truncated: true`。
