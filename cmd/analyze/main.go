package main

import (
	"bufio"
	"fmt"
	"os"
	"path/filepath"
	"strings"

	"github.com/beholder-daemon/config"
	"github.com/beholder-daemon/internal/service/uniswapcallback"
)

func main() {
	if len(os.Args) < 3 {
		fmt.Println("Usage: analyze <source> <signatureKey> [--update]")
		fmt.Println("  <source>: fs - 从文件系统读取; db - 从数据库读取")
		fmt.Println("  <signatureKey>: 回调签名的key，如 uniswapv3, pancakev3")
		fmt.Println("  --update: 可选参数，更新安全合约的状态为 210")
		fmt.Println("Available keys:")
		for key := range uniswapcallback.CallbackSignatures {
			fmt.Printf("  - %s\n", key)
		}
		fmt.Println("Examples:")
		fmt.Println("  go run ./cmd/analyze fs uniswapv3")
		fmt.Println("  go run ./cmd/analyze db uniswapv3")
		fmt.Println("  go run ./cmd/analyze db uniswapv3 --update")
		os.Exit(1)
	}

	sourceType := os.Args[1]
	signatureKey := os.Args[2]
	updateStatus := len(os.Args) > 3 && os.Args[3] == "--update"

	sig, ok := uniswapcallback.CallbackSignatures[signatureKey]
	if !ok {
		fmt.Printf("Unknown signature key: %s\n", signatureKey)
		fmt.Println("Available keys:")
		for k := range uniswapcallback.CallbackSignatures {
			fmt.Printf("  - %s\n", k)
		}
		os.Exit(1)
	}

	fmt.Printf("Starting analysis for: %s (0x%s / %s)\n", signatureKey, sig.Selector, sig.FunctionName)

	switch sourceType {
	case "fs":
		analyzeFromFileSystem(sig)
	case "db":
		analyzeFromDatabase(sig, signatureKey, updateStatus)
	default:
		fmt.Printf("Unknown source type: %s\n", sourceType)
		fmt.Println("Available source types: fs, db")
		os.Exit(1)
	}
}

func analyzeFromFileSystem(sig uniswapcallback.CallbackSignature) {
	fmt.Println("Source: File System (fs)")
	fmt.Println("Scanning ./decompiled directory...")

	var safeContracts []string

	err := filepath.Walk("./decompiled", func(path string, info os.FileInfo, err error) error {
		if err != nil {
			return err
		}
		if !info.IsDir() && strings.HasSuffix(path, ".sol") {
			file, err := os.Open(path)
			if err != nil {
				return nil
			}
			defer file.Close()

			scanner := bufio.NewScanner(file)
			var content strings.Builder
			for scanner.Scan() {
				content.WriteString(scanner.Text() + "\n")
			}
			if uniswapcallback.IsSafeContractForFS(content.String(), sig) {
				safeContracts = append(safeContracts, path)
			}
		}
		return nil
	})

	if err != nil {
		fmt.Printf("Error walking directory: %v\n", err)
	}

	printSummaryReport(safeContracts)
}

func analyzeFromDatabase(sig uniswapcallback.CallbackSignature, signatureKey string, updateStatus bool) {
	fmt.Println("Source: Database (db)")
	fmt.Println("Loading configuration...")

	if err := config.LoadConfig(); err != nil {
		fmt.Printf("Failed to load config: %v\n", err)
		return
	}

	fmt.Println("Connecting to database...")
	db, err := config.InitDB()
	if err != nil {
		fmt.Printf("Failed to connect database: %v\n", err)
		return
	}
	defer db.Close()

	fmt.Println("Creating AnalyzeService...")
	analyzeService := uniswapcallback.NewAnalyzeService(db)

	var safeContracts []string
	chainID := int16(1) // 默认以太坊主网

	if updateStatus {
		fmt.Println("Analyzing and updating status...")
		safeContracts, err = analyzeService.AnalyzeAndUpdateStatus(signatureKey, chainID)
		if err != nil {
			fmt.Printf("Analysis and update failed: %v\n", err)
			return
		}
		fmt.Printf("Updated %d safe contracts to status 210\n\n", len(safeContracts))
	} else {
		fmt.Println("Analyzing contracts...")
		results, err := analyzeService.AnalyzeSenders(signatureKey, chainID)
		if err != nil {
			fmt.Printf("Analysis failed: %v\n", err)
			return
		}
		fmt.Printf("Found %d records to analyze\n\n", len(results))

		for _, result := range results {
			if result.IsSafe {
				safeContracts = append(safeContracts, result.Address)
			}
		}
	}

	printSummaryReport(safeContracts)
}

func printSummaryReport(safeContracts []string) {
	fmt.Println("========================================")
	fmt.Println("安全合约列表（无 msg.sender 和 tx.origin）")
	fmt.Println("========================================")

	if len(safeContracts) == 0 {
		fmt.Println("没有找到符合条件的合约")
		return
	}

	fmt.Printf("数量: %d\n\n", len(safeContracts))
	for i, addr := range safeContracts {
		fmt.Printf("%d. %s\n", i+1, addr)
	}
}