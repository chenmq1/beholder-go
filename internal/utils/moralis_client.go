package utils

import (
	"encoding/json"
	"fmt"
	"io"
	"net/http"
	"os"
	"strconv"
	"time"
)

type MoralisConfig struct {
	BaseURL string
	APIKey  string
}

func loadMoralisConfig() MoralisConfig {
	return MoralisConfig{
		BaseURL: getEnv("MORALIS_BASE_URL", "https://deep-index.moralis.io/api/v2.2"),
		APIKey:  getEnv("MORALIS_API_KEY", "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJub25jZSI6IjgxNDc0NzhmLWRiMjYtNDRhZS05MTQ3LTBhOWZhNWE0ZTA0NyIsIm9yZ0lkIjoiNTIyOTc2IiwidXNlcklkIjoiNTM4MjE0IiwidHlwZUlkIjoiY2E5NmIzMDktMDc2Zi00ZGZlLWI1NTUtOTUxNzIzZjI3OThhIiwidHlwZSI6IlBST0pFQ1QiLCJpYXQiOjE3ODMyMjUyNzEsImV4cCI6NDkzODk4NTI3MX0.r1MaAUmTQKAnyJBDVC0q0IKk_h8nanUxYg6YoWCW7pc"),
	}
}

type MoralisClient struct {
	config     MoralisConfig
	httpClient *http.Client
}

func NewMoralisClient() *MoralisClient {
	return &MoralisClient{
		config: loadMoralisConfig(),
		httpClient: &http.Client{
			Timeout: 30 * time.Second,
		},
	}
}

func (c *MoralisClient) GetNetWorth(wallet, chain string, excludeSpam bool) (*NetWorthResponse, error) {
	url := fmt.Sprintf("%s/wallets/%s/net-worth?chain=%s&exclude_spam=%t",
		c.config.BaseURL, wallet, chain, excludeSpam)

	req, err := http.NewRequest(http.MethodGet, url, nil)
	if err != nil {
		return nil, fmt.Errorf("failed to create request: %w", err)
	}

	req.Header.Set("X-API-Key", c.config.APIKey)
	req.Header.Set("Accept", "application/json")

	resp, err := c.httpClient.Do(req)
	if err != nil {
		return nil, fmt.Errorf("request failed: %w", err)
	}
	defer resp.Body.Close()

	if resp.StatusCode == http.StatusTooManyRequests {
		return nil, fmt.Errorf("rate limit exceeded")
	}

	if resp.StatusCode != http.StatusOK {
		body, _ := io.ReadAll(resp.Body)
		return nil, fmt.Errorf("API returned status %d: %s", resp.StatusCode, string(body))
	}

	var result NetWorthResponse
	if err := json.NewDecoder(resp.Body).Decode(&result); err != nil {
		return nil, fmt.Errorf("failed to decode response: %w", err)
	}

	return &result, nil
}

type NetWorthResponse struct {
	RawJSON               json.RawMessage
	Data                  map[string]any
	TotalNetworthUSD      string
	TotalWalletBalanceUSD string
}

func (nw *NetWorthResponse) UnmarshalJSON(data []byte) error {
	nw.RawJSON = append(nw.RawJSON[:0], data...)

	var parsed map[string]any
	if err := json.Unmarshal(data, &parsed); err != nil {
		return err
	}
	nw.Data = parsed
	nw.TotalNetworthUSD = firstString(parsed,
		"total_networth_usd",
		"total_networth",
		"networth_usd",
	)
	nw.TotalWalletBalanceUSD = firstString(parsed,
		"total_wallet_balance_usd",
		"wallet_balance_usd",
		"total_balance_usd",
	)

	return nil
}

func firstString(data map[string]any, keys ...string) string {
	for _, key := range keys {
		if value, ok := data[key]; ok {
			return valueToString(value)
		}
	}
	return ""
}

func valueToString(value any) string {
	switch v := value.(type) {
	case nil:
		return ""
	case string:
		return v
	case float64:
		return strconv.FormatFloat(v, 'f', -1, 64)
	case bool:
		return strconv.FormatBool(v)
	default:
		b, err := json.Marshal(v)
		if err != nil {
			return fmt.Sprintf("%v", v)
		}
		return string(b)
	}
}

func getEnv(key, fallback string) string {
	if v := os.Getenv(key); v != "" {
		return v
	}
	return fallback
}