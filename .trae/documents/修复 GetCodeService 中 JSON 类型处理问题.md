## 问题分析

Go 代码中的类型断言失败，因为：
- `data["result"]` 返回的是 `[]interface{}` 类型（数组）
- 但代码只检查了 `map[string]interface{}` 类型（映射）
- 所以第311行的类型断言 `result.(map[string]interface{})` 失败，`ok` 为 `false`

## 解决方案

修改 `get_code_service.go` 文件，让它能够处理 `result` 为数组的情况，类似于 Java 代码使用 `JsonNode` 的处理方式：

### 修改步骤

1. **修改类型检查逻辑**：
   - 首先检查 `result` 是否为 `map[string]interface{}` 类型
   - 如果不是，检查是否为 `[]interface{}` 类型
   - 如果是数组，检查数组是否非空
   - 如果数组非空，获取第一个元素并检查是否为 `map[string]interface{}` 类型

2. **具体代码修改**：
   - 修改第311-316行的代码块
   - 添加数组类型检查和处理逻辑
   - 保持与 Java 代码相同的处理方式

3. **验证修复**：
   - 确保修复后代码能够正确处理数组类型的 `result`
   - 确保原有映射类型的 `result` 仍然能够正常处理

## 预期结果

修复后，Go 代码将能够：
- 正确处理 `result` 为数组的情况（如用户提供的示例）
- 正确处理 `result` 为映射的情况（向后兼容）
- 与 Java 代码的行为保持一致