package uniswapcallback

type CallbackSignature struct {
	FunctionName string
	Selector     string
	Topic        string
}

var callbackSignatures = map[string]CallbackSignature{
	"uniswapv3": {FunctionName: "uniswapV3SwapCallback", Selector: "fa461e33", Topic: "0xc42079f94a6350d7e6235f29174924f928cc2ac818eb64fed8004e115fbcca67"},
	"pancakev3": {FunctionName: "pancakeV3SwapCallback", Selector: "23a69e75", Topic: "0x19b47279256b2a23a1665c810c8d55a1758940ee09377d4f8d26497a3577dc83"},
}