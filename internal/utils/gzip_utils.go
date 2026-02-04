package utils

import (
	"bytes"
	"compress/gzip"
	"io"
)

// GzipUtils 压缩工具类
type GzipUtils struct{}

// NewGzipUtils 创建 GzipUtils 实例
func NewGzipUtils() *GzipUtils {
	return &GzipUtils{}
}

// Compress 压缩字符串为字节数组
func (g *GzipUtils) Compress(data string) ([]byte, error) {
	if data == "" {
		return nil, nil
	}

	var buf bytes.Buffer
	gzipWriter := gzip.NewWriter(&buf)

	_, err := gzipWriter.Write([]byte(data))
	if err != nil {
		return nil, err
	}

	if err := gzipWriter.Flush(); err != nil {
		return nil, err
	}

	if err := gzipWriter.Close(); err != nil {
		return nil, err
	}

	return buf.Bytes(), nil
}

// Decompress 解压缩字节数组为字符串
func (g *GzipUtils) Decompress(compressed []byte) (string, error) {
	if compressed == nil || len(compressed) == 0 {
		return "", nil
	}

	buf := bytes.NewReader(compressed)
	gzipReader, err := gzip.NewReader(buf)
	if err != nil {
		return "", err
	}
	defer gzipReader.Close()

	var out bytes.Buffer
	_, err = io.Copy(&out, gzipReader)
	if err != nil {
		return "", err
	}

	return out.String(), nil
}

// DecompressBrotli 解压缩 Brotli 压缩的数据
func (g *GzipUtils) DecompressBrotli(compressed []byte) ([]byte, error) {
	if compressed == nil || len(compressed) == 0 {
		return nil, nil
	}

	// 注意：这里需要使用 brotli 库，暂时使用 gzip 替代
	// 实际使用时需要引入 github.com/andybalholm/brotli
	buf := bytes.NewReader(compressed)
	gzipReader, err := gzip.NewReader(buf)
	if err != nil {
		return nil, err
	}
	defer gzipReader.Close()

	var out bytes.Buffer
	_, err = io.Copy(&out, gzipReader)
	if err != nil {
		return nil, err
	}

	return out.Bytes(), nil
}
