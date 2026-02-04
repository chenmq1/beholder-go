package utils

import (
	"regexp"
	"strings"
)

// SolidityVisitors Solidity 代码解析工具
type SolidityVisitors struct{}

// NewSolidityVisitors 创建 SolidityVisitors 实例
func NewSolidityVisitors() *SolidityVisitors {
	return &SolidityVisitors{}
}

// VisitBlockForFunctionCall 访问函数体，检测函数调用
type VisitBlockForFunctionCall struct {
	functionCalls []string
}

// NewVisitBlockForFunctionCall 创建 VisitBlockForFunctionCall 实例
func NewVisitBlockForFunctionCall() *VisitBlockForFunctionCall {
	return &VisitBlockForFunctionCall{
		functionCalls: make([]string, 0),
	}
}

// Visit 访问 Solidity 代码，检测函数调用
func (v *VisitBlockForFunctionCall) Visit(code string) []string {
	// 使用正则表达式检测函数调用
	callRegex := regexp.MustCompile(`\b(\w+)\.(\w+)\s*\(`)
	matches := callRegex.FindAllStringSubmatch(code, -1)

	for _, match := range matches {
		if len(match) >= 3 {
			call := match[1] + "." + match[2]
			v.functionCalls = append(v.functionCalls, call)
		}
	}

	return v.functionCalls
}

// GetFunctionCalls 获取检测到的函数调用
func (v *VisitBlockForFunctionCall) GetFunctionCalls() []string {
	return v.functionCalls
}

// ProxyInfo 代理合约信息
type ProxyInfo struct {
	Slot           string
	ProxyAddress   string
}

// ProxyedAddress 检测代理合约地址
func (s *SolidityVisitors) ProxyedAddress(code string) (*ProxyInfo, error) {
	// 检测 delegatecall 调用
	if !strings.Contains(code, "delegatecall") {
		return nil, nil
	}

	// 检测直接地址调用
	directAddrRegex := regexp.MustCompile(`0x[0-9a-fA-F]{40}\.delegatecall`)
	directMatches := directAddrRegex.FindStringSubmatch(code)
	if len(directMatches) > 0 {
		addr := strings.TrimSuffix(directMatches[0], ".delegatecall")
		return &ProxyInfo{
			Slot:         "",
			ProxyAddress: addr,
		}, nil
	}

	// 检测存储槽调用
	storageRegex := regexp.MustCompile(`STORAGE\[(0x[0-9a-fA-F]{40})\]\.delegatecall`)
	storageMatches := storageRegex.FindStringSubmatch(code)
	if len(storageMatches) > 1 {
		return &ProxyInfo{
			Slot:         storageMatches[1],
			ProxyAddress: "",
		}, nil
	}

	// 检测 this 调用
	if strings.Contains(code, "this.delegatecall") {
		return &ProxyInfo{
			Slot:         "contractAddress",
			ProxyAddress: "",
		}, nil
	}

	return nil, nil
}
