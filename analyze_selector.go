package main

import (
	"bufio"
	"fmt"
	"os"
	"path/filepath"
	"regexp"
	"strings"
)

const targetSelector = "fa461e33"

func main() {
	fmt.Println("Starting analysis...")
	
	err := filepath.Walk("./decompiled", func(path string, info os.FileInfo, err error) error {
		if err != nil {
			return err
		}
		if !info.IsDir() && strings.HasSuffix(path, ".sol") {
			analyzeFile(path)
		}
		return nil
	})

	if err != nil {
		fmt.Printf("Error walking directory: %v\n", err)
	}
}

func analyzeFile(filePath string) {
	file, err := os.Open(filePath)
	if err != nil {
		return
	}
	defer file.Close()

	scanner := bufio.NewScanner(file)
	var content strings.Builder
	for scanner.Scan() {
		content.WriteString(scanner.Text() + "\n")
	}

	source := content.String()

	if !strings.Contains(source, "0x"+targetSelector) {
		return
	}

	fmt.Printf("=== Found selector 0x%s in %s ===\n", targetSelector, filePath)
	
	calledFunction := findCalledFunction(source)
	if calledFunction == "" {
		fmt.Println("  Could not determine which function is called by this selector")
		fmt.Println()
		return
	}
	
	fmt.Printf("  Calls function: %s\n", calledFunction)
	
	functionBody := extractFunctionBody(source, calledFunction)
	if functionBody == "" {
		fmt.Println("  Function body not found")
		fmt.Println()
		return
	}
	
	hasSender := strings.Contains(functionBody, "msg.sender")
	hasTxOrigin := strings.Contains(functionBody, "tx.origin")

	fmt.Printf("  Has msg.sender: %v\n", hasSender)
	fmt.Printf("  Has tx.origin: %v\n", hasTxOrigin)

	if hasSender {
		senderPattern := regexp.MustCompile(`msg\.sender\s*(!=|==)\s*0x[0-9a-fA-F]{40}`)
		senderMatches := senderPattern.FindAllString(functionBody, -1)
		if len(senderMatches) > 0 {
			fmt.Println("  Sender validation patterns found:")
			for _, match := range senderMatches {
				fmt.Printf("    - %s\n", match)
			}
		} else {
			fmt.Println("  msg.sender is used but no explicit address comparison found")
		}
	}

	if hasTxOrigin {
		txOriginPattern := regexp.MustCompile(`tx\.origin\s*(!=|==)\s*0x[0-9a-fA-F]{40}`)
		txOriginMatches := txOriginPattern.FindAllString(functionBody, -1)
		if len(txOriginMatches) > 0 {
			fmt.Println("  tx.origin validation patterns found:")
			for _, match := range txOriginMatches {
				fmt.Printf("    - %s\n", match)
			}
		} else {
			fmt.Println("  tx.origin is used but no explicit address comparison found")
		}
	}

	fmt.Println()
}

func findCalledFunction(source string) string {
	lines := strings.Split(source, "\n")
	targetHex := "0x" + targetSelector

	for i, line := range lines {
		if strings.Contains(line, targetHex) && strings.Contains(line, "function_selector") {
			if strings.Contains(line, "==") {
				re := regexp.MustCompile(`([a-zA-Z_][a-zA-Z0-9_]*|0x[a-fA-F0-9]+)\(`)
				match := re.FindStringSubmatch(line)
				if len(match) > 1 {
					return match[1]
				}
			}

			if strings.Contains(line, "!=") {
				for j := i + 1; j < len(lines); j++ {
					nextLine := lines[j]
					if strings.Contains(nextLine, "(") && !strings.Contains(nextLine, "function ") && !strings.Contains(nextLine, "if ") && !strings.Contains(nextLine, "else") {
						re := regexp.MustCompile(`([a-zA-Z_][a-zA-Z0-9_]*|0x[a-fA-F0-9]+)\(`)
						match := re.FindStringSubmatch(nextLine)
						if len(match) > 1 {
							return match[1]
						}
					}
				}
			}
		}
	}

	return ""
}

func extractFunctionBody(source string, functionName string) string {
	functionPattern := regexp.MustCompile(`function\s+` + regexp.QuoteMeta(functionName) + `\([^)]*\)\s+(public|private|internal|external)\s*(\w+)?\s*\{`)
	functionMatch := functionPattern.FindStringIndex(source)
	if len(functionMatch) != 2 {
		return ""
	}

	functionStart := functionMatch[0]
	remaining := source[functionStart:]

	braceCount := 0
	inFunction := false
	var functionBody strings.Builder

	for _, ch := range remaining {
		if ch == '{' && !inFunction {
			inFunction = true
			braceCount = 1
			functionBody.WriteByte(byte(ch))
			continue
		}

		if inFunction {
			functionBody.WriteByte(byte(ch))
			if ch == '{' {
				braceCount++
			} else if ch == '}' {
				braceCount--
				if braceCount == 0 {
					break
				}
			}
		}
	}

	return functionBody.String()
}