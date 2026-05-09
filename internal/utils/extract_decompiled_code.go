package utils

import (
	"log"
	"os"
	"path/filepath"

	"github.com/beholder-daemon/internal/model"
	"github.com/beholder-daemon/internal/model/uniswapcallback"
	"github.com/jinzhu/gorm"
)

const (
	CHECK_STATE_AUTOCHECKED_BURN = 202
)

type ExtractDecompiledCode struct {
	db *gorm.DB
}

func NewExtractDecompiledCode(db *gorm.DB) *ExtractDecompiledCode {
	return &ExtractDecompiledCode{db: db}
}

func (e *ExtractDecompiledCode) GetThreeSenderRecheckByChainId(chainId int16) error {
	var codes []model.ContractCode

	err := e.db.Joins("JOIN three_sender ON three_sender.address = contract_code.address").
		Where("three_sender.status = ? AND three_sender.chain_id = ?", CHECK_STATE_AUTOCHECKED_BURN, chainId).
		Find(&codes).Error

	if err != nil {
		return err
	}

	return e.extractCodes(codes)
}

func (e *ExtractDecompiledCode) GetAllDecompiled() error {
	var codes []model.ContractCode

	err := e.db.Where("decompiled_code IS NOT NULL AND decompiled_code != ''").
		Find(&codes).Error

	if err != nil {
		return err
	}

	return e.extractCodes(codes)
}

func (e *ExtractDecompiledCode) GetByAddresses(addresses []string) error {
	var codes []model.ContractCode

	err := e.db.Where("address IN (?)", addresses).
		Find(&codes).Error

	if err != nil {
		return err
	}

	return e.extractCodes(codes)
}

func (e *ExtractDecompiledCode) GetByChainId(chainId int16) error {
	var senders []uniswapcallback.ThreeSender
	err := e.db.Where("chain_id = ?", chainId).Find(&senders).Error
	if err != nil {
		return err
	}

	var addresses []string
	for _, sender := range senders {
		addresses = append(addresses, sender.Address)
	}

	return e.GetByAddresses(addresses)
}

func (e *ExtractDecompiledCode) extractCodes(codes []model.ContractCode) error {
	parentDir, err := os.Getwd()
	if err != nil {
		return err
	}

	decompiledDir := filepath.Join(parentDir, "decompiled")
	err = os.MkdirAll(decompiledDir, os.ModePerm)
	if err != nil {
		return err
	}

	for _, code := range codes {
		if len(code.DecompiledCode) == 0 {
			continue
		}

		decompiled, err := decompressCode(code.DecompiledCode)
		if err != nil {
			log.Printf("解压失败，地址: %s, 错误: %v", code.Address, err)
			continue
		}

		if decompiled == "" {
			continue
		}

		fileName := filepath.Join(decompiledDir, code.Address+".sol")
		err = os.WriteFile(fileName, []byte(decompiled), 0644)
		if err != nil {
			log.Printf("写入文件失败，地址: %s, 错误: %v", code.Address, err)
			continue
		}

		log.Printf("已提取: %s", fileName)
	}

	log.Printf("提取完成，共处理 %d 条记录", len(codes))
	return nil
}

func decompressCode(data []byte) (string, error) {
	if len(data) == 0 {
		return "", nil
	}

	gzipUtils := NewGzipUtils()
	return gzipUtils.Decompress(data)
}