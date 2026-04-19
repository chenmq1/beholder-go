package model

import (
	"bytes"
	"compress/gzip"
	"errors"
	"io"
)

// ContractCode 合约代码实体
type ContractCode struct {
	Address             string `json:"address" gorm:"primary_key"`
	BinaryCode          []byte `json:"-" gorm:"column:binary_code"`
	Binary              string `json:"binary" gorm:"-"`
	Eoa                 int16  `json:"eoa"`
	SmartEoaAddress     string `json:"smartEoaAddress" gorm:"column:smart_eoa_address"`
	VerifiedStatus      string `json:"verifiedStatus" gorm:"column:verified_status"`
	VerifiedCode        []byte `json:"-" gorm:"column:verified_code"`
	VerifiedCodeDecompressed string `json:"verifiedCode" gorm:"-"`
	VerifiedFilename    string `json:"verifiedFilename" gorm:"column:verified_filename"`
	VerifiedProxyChain  string `json:"verifiedProxyChain" gorm:"column:verified_proxy_chain"`
	DecompiledStatus    string `json:"decompiledStatus" gorm:"column:decompiled_status"`
	DecompiledCode      []byte `json:"-" gorm:"column:decompiled_code"`
	DecompiledCodeDecompressed string `json:"decompiledCode" gorm:"-"`
	DecompiledProxyChain string `json:"decompiledProxyChain" gorm:"column:decompiled_proxy_chain"`
}

// TableName 指定表名
func (ContractCode) TableName() string {
	return "contract_code"
}

// AfterFind 查询后解压数据
func (c *ContractCode) AfterFind() error {
	if len(c.BinaryCode) > 0 {
		binary, err := decompress(c.BinaryCode)
		if err == nil {
			c.Binary = binary
		}
	}

	if len(c.VerifiedCode) > 0 {
		verified, err := decompress(c.VerifiedCode)
		if err == nil {
			c.VerifiedCodeDecompressed = verified
		}
	}

	if len(c.DecompiledCode) > 0 {
		decompiled, err := decompress(c.DecompiledCode)
		if err == nil {
			c.DecompiledCodeDecompressed = decompiled
		}
	}

	return nil
}

// BeforeSave 保存前压缩数据
func (c *ContractCode) BeforeSave() error {
	if c.Binary != "" {
		binary, err := compress(c.Binary)
		if err == nil {
			c.BinaryCode = binary
		}
	}

	if c.VerifiedCodeDecompressed != "" {
		verified, err := compress(c.VerifiedCodeDecompressed)
		if err == nil {
			c.VerifiedCode = verified
		}
	}

	if c.DecompiledCodeDecompressed != "" {
		decompiled, err := compress(c.DecompiledCodeDecompressed)
		if err == nil {
			c.DecompiledCode = decompiled
		}
	}

	return nil
}

// compress 压缩字符串
func compress(s string) ([]byte, error) {
	var buf bytes.Buffer
	gw := gzip.NewWriter(&buf)
	if _, err := gw.Write([]byte(s)); err != nil {
		return nil, err
	}
	if err := gw.Close(); err != nil {
		return nil, err
	}
	return buf.Bytes(), nil
}

// decompress 解压字节数组
func decompress(data []byte) (string, error) {
	if len(data) == 0 {
		return "", errors.New("empty data")
	}

	gr, err := gzip.NewReader(bytes.NewReader(data))
	if err != nil {
		return "", err
	}
	defer gr.Close()

	s, err := io.ReadAll(gr)
	if err != nil {
		return "", err
	}

	return string(s), nil
}

// SetBinary 设置二进制代码（压缩）
func (c *ContractCode) SetBinary(code string) error {
	binary, err := compress(code)
	if err != nil {
		return err
	}
	c.BinaryCode = binary
	c.Binary = code
	return nil
}

// SetVerifiedCodeCompressed 设置验证代码（压缩）
func (c *ContractCode) SetVerifiedCodeCompressed(code string) error {
	verified, err := compress(code)
	if err != nil {
		return err
	}
	c.VerifiedCode = verified
	c.VerifiedCodeDecompressed = code
	return nil
}

// SetDecompiledCodeCompressed 设置反编译代码（压缩）
func (c *ContractCode) SetDecompiledCodeCompressed(code string) error {
	decompiled, err := compress(code)
	if err != nil {
		return err
	}
	c.DecompiledCode = decompiled
	c.DecompiledCodeDecompressed = code
	return nil
}
