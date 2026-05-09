package utils

import (
	"log"
	"os"
	"path/filepath"
	"testing"

	"github.com/beholder-daemon/config"
)

func TestGetThreeSenderRecheckByChainId(t *testing.T) {
	log.Println("=== 测试 GetThreeSenderRecheckByChainId ===")

	packageDir, err := os.Getwd()
	if err != nil {
		t.Fatalf("获取工作目录失败: %v", err)
	}

	err = os.Chdir("../..")
	if err != nil {
		t.Fatalf("切换到项目根目录失败: %v", err)
	}
	defer os.Chdir(packageDir)

	if err := config.LoadConfig(); err != nil {
		t.Fatalf("加载配置失败: %v", err)
	}

	db, err := config.InitDB()
	if err != nil {
		t.Fatalf("连接数据库失败: %v", err)
	}
	defer db.Close()

	extractService := NewExtractDecompiledCode(db)

	err = extractService.GetThreeSenderRecheckByChainId(1)
	if err != nil {
		t.Errorf("GetThreeSenderRecheckByChainId() error = %v", err)
	}

	decompiledDir := filepath.Join("decompiled")
	files, err := os.ReadDir(decompiledDir)
	if err != nil {
		t.Fatalf("读取 decompiled 目录失败: %v", err)
	}

	log.Printf("提取完成，共生成 %d 个文件", len(files))

	if len(files) == 0 {
		log.Println("注意: 没有找到符合条件的记录")
	}

	log.Printf("文件已保存到: %s", decompiledDir)
}