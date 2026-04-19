package utils

import (
	"regexp"
	"strings"
)

func ToSnake(s string) string {
	re := regexp.MustCompile("([a-z])([A-Z])")
	return strings.ToLower(re.ReplaceAllString(s, "${1}_${2}"))
}
