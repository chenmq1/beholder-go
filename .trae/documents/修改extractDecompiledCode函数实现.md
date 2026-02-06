# 修改extractDecompiledCode函数实现

## 问题分析
当前Go版本的`extractDecompiledCode`函数使用两种模式提取反编译代码：
1. 查找包含反编译代码的pre标签
2. 查找包含solidity代码的代码块

而Java版本的实现采用不同的逻辑：
1. 查找`<script id="__NEXT_DATA__" type="application/json">`标签
2. 提取该标签内的JSON内容
3. 解析JSON并检查是否需要更新cookies

## 解决方案
修改Go版本的`extractDecompiledCode`函数，使其采用与Java版本相同的逻辑：

1. 定义`startStr`常量为`<script id="__NEXT_DATA__" type="application/json">`
2. 在HTML中查找该标签的位置
3. 提取从该标签后到`</script>`标签之间的内容
4. 返回提取的JSON内容

## 实现步骤
1. 在`get_code_service.go`文件中修改`extractDecompiledCode`函数
2. 替换当前的提取逻辑为基于script标签的提取逻辑
3. 确保函数能够正确处理标签不存在的情况

## 预期结果
修改后的函数将能够与Java版本保持一致的提取逻辑，提高代码的可维护性和一致性。