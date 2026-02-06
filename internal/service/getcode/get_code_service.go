package getcode

import (
	"bytes"
	"context"
	"crypto/tls"
	"encoding/json"
	"fmt"
	"io/ioutil"
	"net/http"
	"net/url"
	"strings"
	"time"

	"github.com/beholder-daemon/config"
	"github.com/beholder-daemon/internal/model"
	"github.com/beholder-daemon/internal/utils"
	"github.com/ethereum/go-ethereum/common"
	"github.com/ethereum/go-ethereum/ethclient"
	"github.com/jinzhu/gorm"
)

// GetCodeService 获取合约代码服务
type GetCodeService struct {
	db               *gorm.DB
	chains           *config.Chains
	gzipUtils        *utils.GzipUtils
	solidityVisitors *utils.SolidityVisitors
	web3Utils        *utils.Web3Utils
	web3Clients      map[string]*ethclient.Client
	cookieManager    *utils.CookieManager
}

// NewGetCodeService 创建 GetCodeService 实例
func NewGetCodeService(db *gorm.DB, chains *config.Chains, web3Clients map[string]*ethclient.Client) *GetCodeService {
	// 创建 CookieManager 实例
	cookieManager := utils.NewCookieManager()
	
	// 程序启动时总是从 Chrome 加载最新的 cookie
	fmt.Println("程序启动，从 Chrome 加载最新的 cookie...")
	err := cookieManager.LoadFromChrome()
	if err != nil {
		fmt.Println("从 Chrome 加载 cookie 失败:", err)
	} else {
		fmt.Println("从 Chrome 加载 cookie 成功")
	}

	return &GetCodeService{
		db:               db,
		chains:           chains,
		gzipUtils:        utils.NewGzipUtils(),
		solidityVisitors: utils.NewSolidityVisitors(),
		web3Utils:        utils.NewWeb3Utils(),
		web3Clients:      web3Clients,
		cookieManager:    cookieManager,
	}
}

const (
	IO_EXCEPTION_RETRY = 4
)

// GetCode 获取合约代码
func (s *GetCodeService) GetCode(address string, chainId int) (int16, error) {
	return s.GetCodeWithProxy(address, chainId, "", nil)
}

// GetCodeWithProxy 获取合约代码（支持代理链）
func (s *GetCodeService) GetCodeWithProxy(address string, chainId int, verifiedProxyChain string, code *model.ContractCode) (int16, error) {
	if code == nil {
		code = &model.ContractCode{
			Address: address,
		}
	}

	// 获取二进制代码
	binary, err := s.getBinaryCode(address, chainId)
	if err != nil {
		return 0, err
	}
	//fmt.Printf("binary code: %s. address:%s\n", binary, address)
	if binary == "" {
		fmt.Printf("======================binary code is null. address:%s\n", address)
	} else if binary == "0x" || binary == "0x0" {
		code.Eoa = 1
		if err := s.db.Save(code).Error; err != nil {
			return 0, err
		}
		return 1, nil
	} else if strings.HasPrefix(binary, "0xef0100") {
		code.Eoa = 2
		if len(binary) != 48 {
			return 0, fmt.Errorf("binary starts with 0xef0100 but length !=48:%s", binary)
		}
		smartEoaAddress := "0x" + binary[8:]
		code.SmartEoaAddress = smartEoaAddress
		if err := s.db.Save(code).Error; err != nil {
			return 0, err
		}
		return 8, nil
	} else {
		// 压缩二进制代码
		compressedBinaryCode, err := s.gzipUtils.Compress(binary)
		if err != nil {
			code.Binary = binary
		} else {
			code.Binary = string(compressedBinaryCode)
		}
	}

	// 获取已验证代码
	verifiedResult, message, err := s.getVerified(address, chainId)
	if err != nil {
		return 0, err
	}

	verifiedGetSuccess := false
	if verifiedResult != nil {
		checkResult, err := s.checkVerifiedCode(verifiedResult, chainId, address)
		if err != nil {
			return 0, err
		}

		if checkResult == "pair" {
			code.VerifiedStatus = "pair"
		} else if strings.HasPrefix(checkResult, "0x") {
			code.VerifiedStatus = "proxy"
			verifiedProxyChain += checkResult + "."
			code.VerifiedProxyChain = verifiedProxyChain
			// 递归获取代理合约代码
			fmt.Printf("======================proxy address:%s. chainId:%d. verifiedProxyChain:%s\n", checkResult, chainId, verifiedProxyChain)
			return s.GetCodeWithProxy(checkResult, chainId, verifiedProxyChain, code)
		} else if checkResult == "unverified" {
			code.VerifiedStatus = "unverified"
			verifiedGetSuccess = false
		} else {
			code.VerifiedStatus = "downloaded"
			// 压缩验证代码
			compressedVerifiedCode, err := s.gzipUtils.Compress(checkResult)
			if err != nil {
				code.VerifiedCodeCompressed = checkResult
			} else {
				code.VerifiedCodeCompressed = string(compressedVerifiedCode)
			}
			verifiedGetSuccess = true
		}
	} else {
		code.VerifiedStatus = "getFailed"
		verifiedGetSuccess = false
	}
	fmt.Printf("======================verified status:%s. address:%s,message:%s no proxy detected\n", code.VerifiedStatus, address, message)
	// 获取反编译代码
	decompiledGetSuccess := false
	if code.VerifiedStatus != "pair" {
		decompiledResult, decompileMessage, err := s.getDecompiled(address, chainId)
		if err != nil {
			return 0, err
		}
		message += decompileMessage

		if decompiledResult != "" {
			// 检测代理合约
			proxyInfo, err := s.solidityVisitors.ProxyedAddress(decompiledResult)
			if err != nil {
				return 0, err
			}

			if proxyInfo != nil {
				if proxyInfo.ProxyAddress != "" {
					// 直接代理地址
					verifiedProxyChain += proxyInfo.ProxyAddress + ","
					code.VerifiedProxyChain = verifiedProxyChain
					// 压缩反编译代码
					compressedDecompiledCode, err := s.gzipUtils.Compress(decompiledResult)
					if err != nil {
						code.DecompiledCodeCompressed = decompiledResult
					} else {
						code.DecompiledCodeCompressed = string(compressedDecompiledCode)
					}
					// 递归获取代理合约代码
					fmt.Printf("======================decompiled proxy address:%s. chainId:%d. verifiedProxyChain:%s\n", proxyInfo.ProxyAddress, chainId, verifiedProxyChain)
					return s.GetCodeWithProxy(proxyInfo.ProxyAddress, chainId, verifiedProxyChain, code)
				} else if proxyInfo.Slot != "" {
					// 存储槽代理
					proxiedAddress := s.getStorageAt(address, chainId, proxyInfo.Slot)
					if proxiedAddress != "" {
						verifiedProxyChain += proxiedAddress + ","
						code.VerifiedProxyChain = verifiedProxyChain
						// 压缩反编译代码
						compressedDecompiledCode, err := s.gzipUtils.Compress(decompiledResult)
						if err != nil {
							code.DecompiledCodeCompressed = decompiledResult
						} else {
							code.DecompiledCodeCompressed = string(compressedDecompiledCode)
						}
						// 递归获取代理合约代码
						fmt.Printf("======================decompiled storage proxy address:%s. chainId:%d. verifiedProxyChain:%s\n", proxiedAddress, chainId, verifiedProxyChain)
						return s.GetCodeWithProxy(proxiedAddress, chainId, verifiedProxyChain, code)
					}
				}
			}

			code.DecompiledStatus = "downloaded"
			// 压缩反编译代码
			compressedDecompiledCode, err := s.gzipUtils.Compress(decompiledResult)
			if err != nil {
				code.DecompiledCodeCompressed = decompiledResult
			} else {
				code.DecompiledCodeCompressed = string(compressedDecompiledCode)
			}
			decompiledGetSuccess = true
		} else {
			code.DecompiledStatus = "failed"
			decompiledGetSuccess = false
		}
	}
	fmt.Printf("======================decompiled status:%s. address:%s,message:%s no proxy detected\n", code.DecompiledStatus, address, message)
	// 保存到数据库
	if err := s.db.Save(code).Error; err != nil {
		return 0, err
	}

	// 计算返回值
	result := int16(0)
	if verifiedGetSuccess {
		result |= 2
	}
	if decompiledGetSuccess {
		result |= 4
	}

	return result, nil
}

// getBinaryCode 获取二进制代码
func (s *GetCodeService) getBinaryCode(address string, chainId int) (string, error) {
	chainName := s.getChainName(chainId)
	client := s.web3Clients[chainName]
	if client == nil {
		return "", fmt.Errorf("web3 client not found for chain: %d", chainId)
	}

	addr := common.HexToAddress(address)
	ctx, cancel := context.WithTimeout(context.Background(), 30*time.Second)
	defer cancel()

	var binary string
	err := utils.RetryWithIoException(func() (bool, error) {
		code, err := client.CodeAt(ctx, addr, nil)
		if err != nil {
			return false, err
		}
		binary = fmt.Sprintf("0x%x", code)
		return true, nil
	}, IO_EXCEPTION_RETRY)

	return binary, err
}

// getVerified 获取已验证代码
func (s *GetCodeService) getVerified(address string, chainId int) (map[string]interface{}, string, error) {
	message := ""
	// 使用标准 chainId 获取 Etherscan API URL
	standardChainId := s.getStandardChainId(chainId)
	apiUrl := fmt.Sprintf(s.chains.GetScanApiUrl(standardChainId), address)

	client := &http.Client{
		Timeout: 30 * time.Second,
		Transport: &http.Transport{
			TLSClientConfig: &tls.Config{
				InsecureSkipVerify: true, // 禁用 TLS 验证
			},
			Proxy: http.ProxyURL(&url.URL{ // 添加代理配置
				Scheme: "http",
				Host:   "127.0.0.1:8080",
			}),
		},
	}

	var response *http.Response
	err := utils.RetryWithIoException(func() (bool, error) {
		req, err := http.NewRequest("GET", apiUrl, nil)
		if err != nil {
			return false, err
		}

		req.Header.Set("Accept", "application/json")
		resp, err := client.Do(req)
		if err != nil {
			return false, err
		}
		response = resp
		return true, nil
	}, IO_EXCEPTION_RETRY)

	if err != nil {
		return nil, message, err
	}
	defer response.Body.Close()

	message += "verified request complete\n"
	if response.StatusCode == http.StatusOK {
			var data map[string]interface{}
			if err := json.NewDecoder(response.Body).Decode(&data); err != nil {
				message += "parse failed, incorrect json structure in response."
				return nil, message, nil
			}
			//fmt.Printf("======================verified response:%v\n", data)
			if result, ok := data["result"]; ok {
				if resultMap, ok := result.(map[string]interface{}); ok {
					return resultMap, message, nil
				} else {
					message += "parse failed, incorrect result structure in response."
				}
			} else {
				message += "parse failed, no result field in response."
			}
		} else {
			message += "incorrect response code, get verified failed.\n"
		}

	return nil, message, nil
}

// getDecompiled 获取反编译代码
func (s *GetCodeService) getDecompiled(address string, chainId int) (string, string, error) {
	message := ""
	// 硬编码使用用户提供的cookie
	// 从cookie管理器获取cookie
	cookieStr := s.cookieManager.GetDedaubCookie()

	// 使用标准 chainId 获取 Dedaub 反编译 URL 模板
	standardChainId := s.getStandardChainId(chainId)
	decompileURL := fmt.Sprintf(s.chains.GetDedaubDecompileURL(standardChainId), address)

	client := &http.Client{
		Timeout: 60 * time.Second,
		Transport: &http.Transport{
			// 启用HTTP/2
			TLSNextProto: make(map[string]func(authority string, c *tls.Conn) http.RoundTripper),
			// 优化TLS配置
			TLSClientConfig: &tls.Config{
				MinVersion: tls.VersionTLS12,
				CipherSuites: []uint16{
					tls.TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384,
					tls.TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256,
					tls.TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384,
					tls.TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256,
				},
				CurvePreferences: []tls.CurveID{
					tls.CurveP256,
					tls.X25519,
				},
			},
		},
	}

	var response *http.Response
	err := utils.RetryWithIoException(func() (bool, error) {
		req, err := http.NewRequest("GET", decompileURL, nil)
		if err != nil {
			return false, err
		}

		// 设置请求头，与curl命令完全匹配
		req.Header.Set("Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7")
		req.Header.Set("Accept-Language", "zh-CN,zh;q=0.9,en;q=0.8,en-GB;q=0.7,en-US;q=0.6,zh-TW;q=0.5")
		req.Header.Set("Priority", "u=0, i")
		req.Header.Set("Sec-Ch-Ua", "\"Not(A:Brand\";v=\"8\", \"Chromium\";v=\"144\", \"Microsoft Edge\";v=\"144\"")
		req.Header.Set("Sec-Ch-Ua-Mobile", "?0")
		req.Header.Set("Sec-Ch-Ua-Platform", "\"Windows\"")
		req.Header.Set("Sec-Fetch-Dest", "document")
		req.Header.Set("Sec-Fetch-Mode", "navigate")
		req.Header.Set("Sec-Fetch-Site", "none")
		req.Header.Set("Sec-Fetch-User", "?1")
		req.Header.Set("Upgrade-Insecure-Requests", "1")
		req.Header.Set("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0")
		req.Header.Set("Cookie", cookieStr)

		// 打印请求详情
		fmt.Println("\n=== 步骤 2: 发送反编译请求 ===")
		fmt.Println("URL:", req.URL.String())
		fmt.Println("Method:", req.Method)
		fmt.Println("请求头:")
		for key, values := range req.Header {
			for _, value := range values {
				fmt.Printf("  %s: %s\n", key, value)
			}
		}

		resp, err := client.Do(req)
		if err != nil {
			return false, err
		}
		response = resp
		return true, nil
	}, IO_EXCEPTION_RETRY)

	if err != nil {
		return "", message, err
	}
	defer response.Body.Close()

	// 读取响应内容
	respBody, err := ioutil.ReadAll(response.Body)
	if err != nil {
		return "", message, err
	}
	// 重置响应体，以便后续可以再次读取
	response.Body = ioutil.NopCloser(bytes.NewBuffer(respBody))

	// 打印响应详情
	fmt.Println("\n=== 步骤 2: 收到反编译响应 ===")
	fmt.Println("状态码:", response.StatusCode)
	fmt.Println("响应头:")
	for key, values := range response.Header {
		for _, value := range values {
			fmt.Printf("  %s: %s\n", key, value)
		}
	}
	// 限制响应内容打印长度
	respBodyStr := string(respBody)
	if len(respBodyStr) > 600 {
		respBodyStr = respBodyStr[:600] + "... [truncated]"
	}
	fmt.Println("响应内容:", respBodyStr)

	message += "decompiled request complete\n"
	message += fmt.Sprintf("return code: %d\n", response.StatusCode)

	if response.StatusCode == http.StatusOK {
		// 解析 HTML 响应，提取反编译代码
		respBodyStr := string(respBody)
		
		// 尝试提取反编译代码
		decompiledCode := extractDecompiledCode(respBodyStr)
		
		// 打印反编译结果到系统输出
		fmt.Println("\n=== 反编译结果 ===")
		if decompiledCode != "" {
			fmt.Println(decompiledCode)
		} else {
			fmt.Println("未找到反编译代码")
			// 打印部分 HTML 内容以便调试
			fmt.Println("\n=== 部分 HTML 响应内容 ===")
			if len(respBodyStr) > 1000 {
				fmt.Println(respBodyStr[:1000] + "... [truncated]")
			} else {
				fmt.Println(respBodyStr)
			}
		}
		
		return decompiledCode, message, nil
	} else {
		message += "incorrect response code, get decompiled failed.\n"
	}

	return "", message, nil
}

// checkVerifiedCode 检查已验证代码
func (s *GetCodeService) checkVerifiedCode(data map[string]interface{}, chainId int, address string) (string, error) {
	if result, ok := data["result"]; ok {
		if resultArray, ok := result.([]interface{}); ok {
			if len(resultArray) == 0 {
				return "unverified", nil
			}

			firstResult := resultArray[0]
			if firstResultMap, ok := firstResult.(map[string]interface{}); ok {
				// 检查合约名称
				if contractName, ok := firstResultMap["ContractName"].(string); ok {
					// 检查是否为 Pair 合约
					if contractName == "PancakeV3Pool" || contractName == "PancakePair" {
						return "pair", nil
					}

					// 检查是否为代理合约
					if contractName == "GnosisSafeProxy" || contractName == "SafeProxy" {
						// 存储槽 0x0
						return s.getStorageAt(address, chainId, "0x0"), nil
					} else if contractName == "TransparentUpgradeableProxy" || contractName == "AdminUpgradeabilityProxy" ||
						contractName == "BeaconProxy" || contractName == "ERC1967Proxy" || contractName == "BEP20UpgradeableProxy" {
						// 存储槽 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc
						return s.getStorageAt(address, chainId, "0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc"), nil
					}
				}

				// 检查源代码
				if sourceCode, ok := firstResultMap["SourceCode"].(string); ok {
					if sourceCode != "" {
						return sourceCode, nil
					}
				}
			}
		}
	}

	return "unverified", nil
}

// getStorageAt 获取存储槽值
func (s *GetCodeService) getStorageAt(address string, chainId int, slot string) string {
	chainName := s.getChainName(chainId)
	client := s.web3Clients[chainName]
	if client == nil {
		return ""
	}

	addr := common.HexToAddress(address)
	slotBytes := common.HexToHash(slot)
	ctx, cancel := context.WithTimeout(context.Background(), 30*time.Second)
	defer cancel()

	var result common.Hash
	err := utils.RetryWithIoException(func() (bool, error) {
		storage, err := client.StorageAt(ctx, addr, slotBytes, nil)
		if err != nil {
			return false, err
		}
		result = common.BytesToHash(storage)
		return true, nil
	}, IO_EXCEPTION_RETRY)

	if err != nil {
		return ""
	}

	// 提取地址（最后 20 字节）
	hex := result.Hex()
	if len(hex) >= 42 {
		return "0x" + hex[26:]
	}

	return ""
}

// getChainName 根据链 ID 获取链名称
func (s *GetCodeService) getChainName(chainId int) string {
	// 更新链 ID 映射
	chainMap := map[int]string{
		1:    "ethereum",
		2:    "bsc",      // BSC 对应链 ID 2
		3:    "polygon",   // Polygon 对应链 ID 3
		4:    "arbitrum",  // Arbitrum 对应链 ID 4
		5:    "base",      // Base 对应链 ID 5
		6:    "optimism",  // Optimism 对应链 ID 6
	}

	if name, ok := chainMap[chainId]; ok {
		return name
	}

	return "ethereum" // 默认以太坊
}

// getStandardChainId 将自定义链 ID 转换为标准链 ID
func (s *GetCodeService) getStandardChainId(chainId int) int {
	// 自定义链 ID 到标准链 ID 的映射
	standardChainMap := map[int]int{
		1:    1,       // Ethereum
		2:    56,      // BSC
		3:    137,     // Polygon
		4:    42161,   // Arbitrum
		5:    8453,    // Base
		6:    10,      // Optimism
	}

	if standardId, ok := standardChainMap[chainId]; ok {
		return standardId
	}

	return chainId // 默认返回原链 ID
}

// extractDecompiledCode 从 Dedaub 反编译页面中提取反编译代码
func extractDecompiledCode(html string) string {
	startStr := "<script id=\"__NEXT_DATA__\" type=\"application/json\">"
	startIndex := strings.Index(html, startStr)
	if startIndex == -1 {
		return ""
	}
	
	startIndex += len(startStr)
	endIndex := strings.Index(html[startIndex:], "</script>")
	if endIndex == -1 {
		return ""
	}
	
	endIndex += startIndex
	jsonStr := html[startIndex:endIndex]
	
	// 解析 JSON 数据
	var data map[string]interface{}
	if err := json.Unmarshal([]byte(jsonStr), &data); err != nil {
		return ""
	}
	
	// 检查是否需要更新 cookies
	if page, ok := data["page"].(string); ok && page == "/login" {
		return ""
	}
	
	// 从 JSON 结构中提取反编译代码
	if props, ok := data["props"].(map[string]interface{}); ok {
		if pageProps, ok := props["pageProps"].(map[string]interface{}); ok {
			if contractPayload, ok := pageProps["contractPayload"].(map[string]interface{}); ok {
				if decompiled, ok := contractPayload["decompiled"].(string); ok {
					return decompiled
				}
			}
		}
	}
	
	return ""
}
