package uniswapcallback

import (
	"fmt"
	"log"
	"strconv"
	"strings"
	"time"

	"github.com/beholder-daemon/internal/model/uniswapcallback"
	"github.com/beholder-daemon/internal/utils"
	"github.com/jinzhu/gorm"
)

type WalletNetWorthService struct {
	db             *gorm.DB
	threeSenderRepo *ThreeSenderRepository
	moralisClient  *utils.MoralisClient
}

func NewWalletNetWorthService(db *gorm.DB) *WalletNetWorthService {
	return &WalletNetWorthService{
		db:             db,
		threeSenderRepo: NewThreeSenderRepository(db),
		moralisClient:  utils.NewMoralisClient(),
	}
}

func (s *WalletNetWorthService) chainIdToChainName(chainID int) string {
	switch chainID {
	case 1:
		return "eth"
	case 56:
		return "bsc"
	case 137:
		return "polygon"
	case 42161:
		return "arbitrum"
	case 8453:
		return "base"
	case 10:
		return "optimism"
	default:
		return "eth"
	}
}

func (s *WalletNetWorthService) ProcessWalletValues(status int, callbackKey string, chainID int) (int, int, error) {
	chain := s.chainIdToChainName(chainID)
	log.Println("\n=== Step 1: Query addresses from three_sender ===")
	log.Printf("  SQL: SELECT * FROM three_sender WHERE status = %d AND callback_key = '%s' AND wallet_value_in_usd IS NULL", status, callbackKey)

	senders, err := s.threeSenderRepo.FindByStatusAndCallbackKeyAndWalletValueIsNull(status, callbackKey)
	if err != nil {
		return 0, 0, fmt.Errorf("failed to query senders: %w", err)
	}

	log.Printf("  ✓ Found %d addresses to process", len(senders))
	if len(senders) == 0 {
		log.Println("No addresses to process")
		return 0, 0, nil
	}

	log.Println("\n=== Step 2: Fetch wallet net worth via Moralis ===")
	log.Printf("  Chain:        %s", chain)

	success := 0
	failed := 0
	for i, sender := range senders {
		address := strings.TrimSpace(sender.Address)
		if address == "" {
			failed++
			continue
		}

		log.Printf("\n[%d/%d] Wallet: %s", i+1, len(senders), address)

		result, err := s.moralisClient.GetNetWorth(address, chain, true)
		if err != nil {
			failed++
			errorMsg := err.Error()
			log.Printf("  ✗ API call failed: %v", err)

			if strings.Contains(errorMsg, "rate limit exceeded") ||
				strings.Contains(errorMsg, "quota") ||
				strings.Contains(errorMsg, "exceeded") {
				log.Println("  ⚠ Rate limit exceeded, exiting loop")
				return success, failed, fmt.Errorf("rate limit exceeded")
			}

			continue
		}

		if result.TotalNetworthUSD == "" {
			failed++
			log.Printf("  ✗ No net worth data returned")
			continue
		}

		netWorth, err := strconv.ParseFloat(result.TotalNetworthUSD, 64)
		if err != nil {
			failed++
			log.Printf("  ✗ Failed to parse net worth: %v", err)
			continue
		}

		walletValue := int(netWorth * 100)
		sender.WalletValueInUSD = &walletValue

		if err := s.db.Save(sender).Error; err != nil {
			failed++
			log.Printf("  ✗ Failed to update wallet value: %v", err)
			continue
		}

		success++
		log.Printf("  ✓ Net Worth USD: %s -> wallet_value_in_usd: %d", result.TotalNetworthUSD, walletValue)

		time.Sleep(250 * time.Millisecond)
	}

	log.Printf("\n=== Done ===")
	log.Printf("  Total:   %d", len(senders))
	log.Printf("  Success: %d", success)
	log.Printf("  Failed:  %d", failed)

	return success, failed, nil
}

func (s *WalletNetWorthService) ProcessTask(message map[string]interface{}) error {
	log.Println("处理钱包净值任务消息:", message)

	if callbackKey, ok := message["callbackKey"].(string); ok {
		chainID := 1
		if chainIdVal, ok := message["chainId"].(float64); ok {
			chainID = int(chainIdVal)
		}

		return s.ProcessWalletNetWorthTask(callbackKey, chainID)
	}

	return fmt.Errorf("缺少 callbackKey 参数")
}

func (s *WalletNetWorthService) ProcessWalletNetWorthTask(callbackKey string, chainID int) error {
	task := &uniswapcallback.SwapCallbackTask{
		ChainID:     int16(chainID),
		Type:        "walletNetWorth",
		StartTime:   time.Now(),
		Status:      1,
		Message:     "processing",
		CallbackKey: callbackKey,
	}

	if err := s.db.Create(task).Error; err != nil {
		return fmt.Errorf("创建任务记录失败: %w", err)
	}

	const status = 210
	success, failed, err := s.ProcessWalletValues(status, callbackKey, chainID)

	task.Status = 0
	task.EndTime = time.Now()

	if err != nil {
		task.Message = fmt.Sprintf("钱包净值任务失败: %v", err)
		s.db.Save(task)
		return err
	}

	task.Message = fmt.Sprintf("钱包净值任务完成: 成功 %d 个, 失败 %d 个", success, failed)
	if err := s.db.Save(task).Error; err != nil {
		return fmt.Errorf("更新任务记录失败: %w", err)
	}

	log.Printf("钱包净值任务完成: callbackKey=%s, chainID=%d, 成功=%d, 失败=%d", callbackKey, chainID, success, failed)
	return nil
}