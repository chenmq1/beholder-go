## 计划内容

### 1. 创建ContractCode模型文件
- **文件路径**: `internal/model/contract_code.go`
- **内容**: 定义ContractCode结构体，包含与原始Java实体相同的字段
- **功能**: 作为合约代码的数据库模型，支持GORM映射

### 2. 更新GetCodeService引用
- **文件路径**: `internal/service/get_code_service.go`
- **修改**: 删除内部定义的ContractCode结构体，使用新创建的`model.ContractCode`
- **功能**: 确保GetCodeService使用统一的模型定义

### 3. 验证操作
- **步骤**: 检查文件是否成功创建，运行`go build`命令验证编译是否通过
- **目标**: 确保所有修改正确无误，代码可以正常编译

## 预期结果
- 成功创建`ContractCode`模型文件
- `GetCodeService`正确引用新模型
- 项目可以正常编译，无编译错误