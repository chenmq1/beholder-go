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
	cookieManager := utils.NewCookieManager("./cookies/dedaub_cookies.json")
	// 尝试从文件加载 cookie
	cookieManager.LoadFromFile()

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
		code.Binary = binary
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
			code.VerifiedCodeCompressed = checkResult
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
					code.DecompiledCodeCompressed = decompiledResult
					// 递归获取代理合约代码
					fmt.Printf("======================decompiled proxy address:%s. chainId:%d. verifiedProxyChain:%s\n", proxyInfo.ProxyAddress, chainId, verifiedProxyChain)
					return s.GetCodeWithProxy(proxyInfo.ProxyAddress, chainId, verifiedProxyChain, code)
				} else if proxyInfo.Slot != "" {
					// 存储槽代理
					proxiedAddress := s.getStorageAt(address, chainId, proxyInfo.Slot)
					if proxiedAddress != "" {
						verifiedProxyChain += proxiedAddress + ","
						code.VerifiedProxyChain = verifiedProxyChain
						code.DecompiledCodeCompressed = decompiledResult
						// 递归获取代理合约代码
						fmt.Printf("======================decompiled storage proxy address:%s. chainId:%d. verifiedProxyChain:%s\n", proxiedAddress, chainId, verifiedProxyChain)
						return s.GetCodeWithProxy(proxiedAddress, chainId, verifiedProxyChain, code)
					}
				}
			}

			code.DecompiledStatus = "downloaded"
			code.DecompiledCodeCompressed = decompiledResult
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
	uRL := fmt.Sprintf(s.chains.GetDedaubDecompileURL(chainId), address)

	// 检查 cookie 是否存在且未过期
	if s.cookieManager == nil || s.cookieManager.IsExpired() || s.cookieManager.GetCookieString() == "" {
		// 登录 Dedaub，获取 cookie
		if err := s.loginToDedaub(); err != nil {
			message += "login to dedaub failed: " + err.Error() + "\n"
			return "", message, err
		}
		message += "login to dedaub successful\n"
	}

	client := &http.Client{
		Timeout: 60 * time.Second,
		Transport: &http.Transport{
			TLSClientConfig: &tls.Config{
				InsecureSkipVerify: true, // 禁用 TLS 验证
			},
		},
	}

	var response *http.Response
	err := utils.RetryWithIoException(func() (bool, error) {
		req, err := http.NewRequest("GET", uRL, nil)
		if err != nil {
			return false, err
		}

		// 设置请求头
		req.Header.Set("Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9")
		req.Header.Set("Accept-Encoding", "gzip, deflate, br")
		req.Header.Set("Accept-Language", "en-US,en;q=0.9")
		req.Header.Set("Cache-Control", "max-age=0")
		req.Header.Set("Upgrade-Insecure-Requests", "1")
		req.Header.Set("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36")
		// 添加 cookie
		req.Header.Set("Cookie", s.cookieManager.GetCookieString())

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

	message += "decompiled request complete\n"
	message += fmt.Sprintf("return code: %d\n", response.StatusCode)

	if response.StatusCode == http.StatusOK {
		// 解析 HTML 响应，提取反编译代码
		// 注意：这里只是一个简化实现，实际需要更复杂的 HTML 解析
		return "", message, nil
	} else if response.StatusCode == http.StatusFound || response.StatusCode == http.StatusSeeOther {
		// 重定向到登录页面，cookie 可能过期
		message += "redirect to login page, cookie may be expired\n"
		// 重新登录
		if err := s.loginToDedaub(); err != nil {
			message += "re-login to dedaub failed: " + err.Error() + "\n"
			return "", message, err
		}
		message += "re-login to dedaub successful\n"
		// 重新发送请求
		return s.getDecompiled(address, chainId)
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

// loginToDedaub 登录到 Dedaub，获取 cookie
func (s *GetCodeService) loginToDedaub() error {
	// 清除现有的 cookie
	s.cookieManager.Clear()
	
	// 创建 HTTP 客户端，手动处理重定向
	client := &http.Client{
		Timeout: 30 * time.Second,
		Transport: &http.Transport{
			TLSClientConfig: &tls.Config{
				InsecureSkipVerify: true, // 禁用 TLS 验证
			},
		},
		CheckRedirect: func(req *http.Request, via []*http.Request) error {
			// 阻止自动重定向，我们手动处理
			return http.ErrUseLastResponse
		},
	}
	
	// 步骤 1: 直接使用用户提供的 URL 提交登录表单
	loginURL := "https://auth.dedaub.com/realms/dedaub/login-actions/authenticate?session_code=STx7ekOioO1vbgA9lkqJihfu8CQoluZcbnp_ZE37OAM&execution=c160d63f-c32c-413e-bcb6-a4f6af46f4ff&client_id=watchdog-client&tab_id=aad4fZcAVLw&client_data=eyJydSI6Imh0dHBzOi8vYXBwLmRlZGF1Yi5jb20vYXBpL2F1dGgvY2FsbGJhY2sva2V5Y2xvYWsiLCJydCI6ImNvZGUiLCJzdCI6IlhYT2xXUm9OSHJ6Mlk4eGZKMVZxaTBHQVpsMDI1LWRhOW9ScGRuand0azgifQ"
	
	// 准备登录表单数据
	formData := "username=minqichen1978%40hotmail.com&password=Ra%21k0ken&rememberMe=on&credentialId="
	
	// 创建登录请求
	loginReq, err := http.NewRequest("POST", loginURL, strings.NewReader(formData))
	if err != nil {
		return fmt.Errorf("创建登录请求失败: %w", err)
	}
	
	// 设置请求头，按照用户提供的 curl 命令
	loginReq.Header.Set("Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7")
	loginReq.Header.Set("Accept-Language", "zh-CN,zh;q=0.9,en;q=0.8,en-GB;q=0.7,en-US;q=0.6,zh-TW;q=0.5")
	loginReq.Header.Set("Cache-Control", "max-age=0")
	loginReq.Header.Set("Content-Type", "application/x-www-form-urlencoded")
	loginReq.Header.Set("Origin", "null")
	loginReq.Header.Set("Priority", "u=0, i")
	loginReq.Header.Set("Sec-Ch-Ua", "\"Not(A:Brand\";v=\"8\", \"Chromium\";v=\"144\", \"Microsoft Edge\";v=\"144\"")
	loginReq.Header.Set("Sec-Ch-Ua-Mobile", "?0")
	loginReq.Header.Set("Sec-Ch-Ua-Platform", "\"Windows\"")
	loginReq.Header.Set("Sec-Fetch-Dest", "document")
	loginReq.Header.Set("Sec-Fetch-Mode", "navigate")
	loginReq.Header.Set("Sec-Fetch-Site", "same-origin")
	loginReq.Header.Set("Sec-Fetch-User", "?1")
	loginReq.Header.Set("Upgrade-Insecure-Requests", "1")
	loginReq.Header.Set("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0")
	
	// 添加用户提供的 cookies，这是解决 400 Bad Request 错误的关键
	cookies := "KEYCLOAK_REMEMBER_ME=\"username:minqichen1978%40hotmail.com\"; AUTH_SESSION_ID=8a584486-fb91-4f99-8ca2-3789895abec1.424a4190f221-31563; AUTH_SESSION_ID_LEGACY=8a584486-fb91-4f99-8ca2-3789895abec1.424a4190f221-31563; KC_RESTART=eyJhbGciOiJkaXIiLCJlbmMiOiJBMTI4Q0JDLUhTMjU2In0..b-mOPblOSlUUwygLcEnqJw.XWOAqGT7vUCeh7Bzh7qmpTGPA4bNtZyF040W99txg8UMISoyH5YRQeXy7yDs8Ww9xgB2eEaVWhRaZYE0SolaTWVFZgwkVweQG9mFerrLqcRedwkOMq4UeuH7sdVykYbv3ma9nU5WXtSnv16wDCCaSBUMbLdjiDAJERMTSBFXqwrzZxWPoPi_lsi3Cgqd87xIcsj_Qh162kFTcg3gyFf3FDfwu3y8cin35veaBhXZ-mcC2NIDkm1zUUR1IrJX3YfSVKBSfNKE8B19q2aMCLzJJM7lR511H0OxIHSItzJ-jfr2XwARdudfm2EqTFFfwACcwiLQDArBovvmy2YCbGz-Sk5MkfqcSqNYtTNSUgkf2lzBHbDun9shylG0TEAP7neeS5JlFDoec1yRVXYdfEV0aZXOYMTbpiGbjaNxqlHf1D6EWtHKKtpkcmHjthDAsh-3HMlOjUGoGUHULsjy5yoa50La2xGZ3MBh7FtOgcUPIcaGYPdxRaPZJI3134XNZkrq3-IXnwNisg-H_AAe1xEs3QOHvT-ytmj8FRlons8-TRycJOMQZOsiJXKF2FAF2MCptXC09Hakd4t75RE7kXbaC58D7mrkPswIwtjTF-XHYknIkG7c3R_tNhuDUQkAi2iyFC3UmJr1-DJaHB5XodUD042oACN9GPT6P3AXlgZqsbRXM7tYr-n4zLtfAlwgPCKoOfQ2RlFFhrJPv3tHX5nZPxAPPHuLYuKaHTlsMbQ9hoLXrhD4mf6SoBLQnc_Mw1zlAifHNdwYEI0q-TIZtKKdh3_T__NEdKPP4UBvCZTEiuSPAepfxogU9AdVwXt9nKMnt5sbgQ3sHbVWaB51SICPPi-rHkBublZJfuu3eHgITWj51xtjjZ5wN4-DayjpwcZjvXTz5xjK1Cp1paxZtw5hjNVXT4fsnYyJN-C-rVPBx8g3f-9UCjCpGcHr9T38Ll4J6oehW94GZUaMA4wGmKmn8dLZE6yRr6crANSBiqTGM6vBroKS9jfdv2Nh-yKaM8B3Nk5uDpbTsMiyJ4_31LMVIL3ATYJNuRpgHH7WKWrHT5P_utMDOQyjhgRe4hMXhh_2HOY4b4sWGKGe8DtHKiaJpIGB2kAVcP4gzYKEXLUweF0.ynBcko0TtN4cV_9HiIPjzw; _ga=GA1.1.1227526109.1735052792; _hjSessionUser_3862678=eyJpZCI6IjdhYmViNmVhLTA2NTQtNTYwZS05MWNhLTI2YWE3YWQwOGI0NSIsImNyZWF0ZWQiOjE3MzUwNTI3OTIxMDgsImV4aXN0aW5nIjp0cnVlfQ==; _hjSessionUser_5159358=eyJpZCI6IjMyMzdkZmEwLTgyNDMtNTA1OS04MWU0LThlZWIyOWY1YzVmYiIsImNyZWF0ZWQiOjE3Mzg2Mzk4NjkwMTUsImV4aXN0aW5nIjp0cnVlfQ==; hubspotutk=fd9b06a01628edf9c0bdc787b8843c85; hubspotutk=fd9b06a01628edf9c0bdc787b8843c85; __hstc=42676154.fd9b06a01628edf9c0bdc787b8843c85.1757816084800.1765848088544.1766129055836.22; cf_clearance=6LBa9Ps8KBylzyxOl.oVrIaLPlfsoRK0xuu0AgIB7pc-1770165121-1.2.1.1-x_A2oLNzZ4S67ryRxqOPPH39xymfbkKh4fikfbXi9hhoEv_1O6D9fU2vRZRPJxTOEHbEEK1PRsUg1QjOfhgFUbPcm2OFOgi1c7VjNS3dTR3aU70tA5esaiRKRL70M0Jz3IdsWs_BmQEc8nn5DVUgVyAzILYf5Jb2kWUauCxnDmPoCrUu7TLiwi9v3CPSfihUVJ1IB70SwWcWsMeA6uazMz9KbQmtV.fivLHG3pY7_NE; _hjSession_3862678=eyJpZCI6IjM0MjM5MjQ2LTRiN2QtNGE5Mi05N2UwLWFhZmYzZmVkOGYwMCIsImMiOjE3NzAxNjUxMjI4OTMsInMiOjAsInIiOjAsInNiIjowLCJzciI6MCwic2UiOjAsImZzIjowLCJzcCI6MH0=; _ga_C83BQX5EL9=GS2.1.s1770165120$o122$g1$t1770165123$j57$l0$h350176656; _ga_XFRJ1BYKHT=GS2.1.s1770165120$o124$g1$t1770165132$j48$l0$h0; _gcl_au=1.1.433327004.1765639347.2079056523.1770165130.1770165133"
	loginReq.Header.Set("Cookie", cookies)
	
	// 打印登录请求详情
	fmt.Println("\n=== 步骤 1: 发送登录表单请求 ===")
	fmt.Println("URL:", loginReq.URL.String())
	fmt.Println("Method:", loginReq.Method)
	fmt.Println("请求头:")
	for key, values := range loginReq.Header {
		for _, value := range values {
			fmt.Printf("  %s: %s\n", key, value)
		}
	}
	fmt.Println("请求体:", formData)
	
	// 发送登录请求
	loginResp, err := client.Do(loginReq)
	if err != nil {
		return fmt.Errorf("发送登录请求失败: %w", err)
	}
	defer loginResp.Body.Close()
	
	// 读取响应内容
	loginRespBody, err := ioutil.ReadAll(loginResp.Body)
	if err != nil {
		return fmt.Errorf("读取登录响应内容失败: %w", err)
	}
	
	// 重置响应体，以便后续可以再次读取
	loginResp.Body = ioutil.NopCloser(bytes.NewBuffer(loginRespBody))
	
	// 打印登录响应详情
	fmt.Println("\n=== 收到登录响应 ===")
	fmt.Println("状态码:", loginResp.StatusCode)
	fmt.Println("响应头:")
	for key, values := range loginResp.Header {
		for _, value := range values {
			fmt.Printf("  %s: %s\n", key, value)
		}
	}
	// 限制响应内容打印长度
	respBodyStr := string(loginRespBody)
	if len(respBodyStr) > 600 {
		respBodyStr = respBodyStr[:600] + "... [truncated]"
	}
	fmt.Println("响应内容:", respBodyStr)
	
	// 提取并保存登录后的 cookie
	loginCookies := loginResp.Cookies()
	fmt.Println("\n=== 提取登录后的 cookie ===")
	for _, cookie := range loginCookies {
		fmt.Printf("  %s: %s\n", cookie.Name, cookie.Value)
	}
	s.cookieManager.AddCookies(loginCookies)
	
	// 步骤 2: 处理登录后的重定向
	currentResp := loginResp
	maxRedirects := 10
	redirectCount := 0
	
	for redirectCount < maxRedirects {
		if currentResp.StatusCode == http.StatusFound || currentResp.StatusCode == http.StatusSeeOther {
			nextURL := currentResp.Header.Get("Location")
			if nextURL == "" {
				break // 没有重定向 URL，结束循环
			}
			
			fmt.Println("\n=== 步骤 2: 处理重定向 ===")
			fmt.Println("重定向 URL:", nextURL)
			
			// 创建新的请求
			nextReq, err := http.NewRequest("GET", nextURL, nil)
			if err != nil {
				return fmt.Errorf("创建重定向请求失败: %w", err)
			}
			
			// 添加所有已收集的 cookie
			for _, cookie := range s.cookieManager.GetCookies() {
				nextReq.AddCookie(cookie)
			}
			
			// 设置与之前相同的请求头
			nextReq.Header.Set("Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7")
			nextReq.Header.Set("Accept-Language", "zh-CN,zh;q=0.9,en;q=0.8,en-GB;q=0.7,en-US;q=0.6,zh-TW;q=0.5")
			nextReq.Header.Set("Cache-Control", "max-age=0")
			nextReq.Header.Set("Upgrade-Insecure-Requests", "1")
			nextReq.Header.Set("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0")
			nextReq.Header.Set("Sec-Ch-Ua", "\"Not(A:Brand\";v=\"8\", \"Chromium\";v=\"144\", \"Microsoft Edge\";v=\"144\"")
			nextReq.Header.Set("Sec-Ch-Ua-Mobile", "?0")
			nextReq.Header.Set("Sec-Ch-Ua-Platform", "\"Windows\"")
			nextReq.Header.Set("Sec-Fetch-Dest", "document")
			nextReq.Header.Set("Sec-Fetch-Mode", "navigate")
			nextReq.Header.Set("Sec-Fetch-Site", "same-site")
			nextReq.Header.Set("Sec-Fetch-User", "?1")
			
			// 打印重定向请求详情
			fmt.Println("\n=== 发送重定向请求 ===")
			fmt.Println("URL:", nextReq.URL.String())
			fmt.Println("Method:", nextReq.Method)
			fmt.Println("请求头:")
			for key, values := range nextReq.Header {
				for _, value := range values {
					fmt.Printf("  %s: %s\n", key, value)
				}
			}
			fmt.Println("Cookies:")
			for _, cookie := range s.cookieManager.GetCookies() {
				fmt.Printf("  %s: %s\n", cookie.Name, cookie.Value)
			}
			
			// 发送重定向请求
			nextResp, err := client.Do(nextReq)
			if err != nil {
				return fmt.Errorf("发送重定向请求失败: %w", err)
			}
			
			// 读取响应内容
			nextRespBody, err := ioutil.ReadAll(nextResp.Body)
			if err != nil {
				return fmt.Errorf("读取重定向响应内容失败: %w", err)
			}
			
			// 重置响应体，以便后续可以再次读取
			nextResp.Body = ioutil.NopCloser(bytes.NewBuffer(nextRespBody))
			
			// 打印重定向响应详情
			fmt.Println("\n=== 收到重定向响应 ===")
			fmt.Println("状态码:", nextResp.StatusCode)
			fmt.Println("响应头:")
			for key, values := range nextResp.Header {
				for _, value := range values {
					fmt.Printf("  %s: %s\n", key, value)
				}
			}
			// 限制响应内容打印长度
			nextRespBodyStr := string(nextRespBody)
			if len(nextRespBodyStr) > 600 {
				nextRespBodyStr = nextRespBodyStr[:600] + "... [truncated]"
			}
			fmt.Println("响应内容:", nextRespBodyStr)
			
			// 提取并保存新的 cookie
			newCookies := nextResp.Cookies()
			fmt.Println("\n=== 提取新 cookie ===")
			for _, cookie := range newCookies {
				fmt.Printf("  %s: %s\n", cookie.Name, cookie.Value)
			}
			s.cookieManager.AddCookies(newCookies)
			
			// 关闭之前的响应
			currentResp.Body.Close()
			
			// 更新当前响应
			currentResp = nextResp
			
			redirectCount++
			fmt.Println("\n=== 重定向完成 ===")
			fmt.Println("重定向次数:", redirectCount)
		} else {
			break // 不是重定向，结束循环
		}
	}
	
	// 确保关闭最后的响应
	defer currentResp.Body.Close()
	
	// 打印最终收集的所有 cookie
	fmt.Println("\n=== 最终收集的所有 cookie ===")
	finalCookies := s.cookieManager.GetCookies()
	for _, cookie := range finalCookies {
		fmt.Printf("  %s: %s\n", cookie.Name, cookie.Value)
	}
	
	// 保存 cookie 到文件
	err = s.cookieManager.SaveToFile()
	if err != nil {
		fmt.Println("\n=== 保存 cookie 失败 ===")
		fmt.Println("错误:", err)
		return err
	}
	
	fmt.Println("\n=== 登录流程完成 ===")
	fmt.Printf("成功收集到 %d 个 cookie\n", len(finalCookies))
	fmt.Println("Cookie 已成功保存到文件")
	return nil
}
