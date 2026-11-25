// web/chain_links.js — 前端链外链配置的唯一来源
//
// 集中维护各链在第三方站点的 URL slug / 域名，以后 Phalcon 改 slug、
// Etherscan 换域名、Dedaub 改路径，只改本文件一处，所有页面生效。
//
// 各页面用法（在 <script src="/web/nav.js"> 之后加 <script src="/web/chain_links.js"></script>）：
//   phalconTxUrl(chainId, txHash)     -> Phalcon 交易页链接
//   scanAddressUrl(chainId, addr)     -> 区块浏览器地址页链接
//   scanCodeUrl(chainId, addr)        -> 区块浏览器地址页（带 #code，capture_view 用）
//   dedaubAddressUrl(chainId, addr)   -> Dedaub 反编译页链接
//   chainName(chainId)                -> 链展示名
//
// chainId 兼容两套：
//   简化 id（多数页面）：1 eth / 2 bsc / 3 polygon / 4 arbitrum / 5 base / 6 optimism
//   真实 id（capture_view）：1 / 56 / 137 / 42161 / 8453 / 10
// 传任意一种都能正确解析，未知链兜底到 Ethereum。

// 简化 chainId -> 配置
const CHAIN_LINKS = {
    1: { name: "Ethereum", phalcon: "eth",      scan: "https://etherscan.io",             dedaub: "ethereum" },
    2: { name: "BSC",      phalcon: "bsc",      scan: "https://bscscan.com",             dedaub: "binance"  },
    3: { name: "Polygon",  phalcon: "polygon",  scan: "https://polygonscan.com",         dedaub: "polygon"  },
    4: { name: "Arbitrum", phalcon: "arbitrum", scan: "https://arbiscan.io",             dedaub: "arbitrum" },
    5: { name: "Base",     phalcon: "base",     scan: "https://basescan.org",            dedaub: "base"     },
    6: { name: "Optimism", phalcon: "optimism", scan: "https://optimistic.etherscan.io", dedaub: "optimism" },
};

// 真实 chainId -> 简化 chainId（capture_view 下拉/ payload 用真实 id）
const REAL_TO_SIMPLE = { 1: 1, 56: 2, 137: 3, 42161: 4, 8453: 5, 10: 6 };

function _chainCfg(chainId) {
    const id = Number(chainId);
    if (CHAIN_LINKS[id]) return CHAIN_LINKS[id];
    if (REAL_TO_SIMPLE[id] && CHAIN_LINKS[REAL_TO_SIMPLE[id]]) return CHAIN_LINKS[REAL_TO_SIMPLE[id]];
    return CHAIN_LINKS[1]; // 未知链兜底 Ethereum
}

function phalconTxUrl(chainId, txHash) {
    return `https://app.blocksec.com/phalcon/explorer/tx/${_chainCfg(chainId).phalcon}/${txHash}?line=0`;
}

function scanAddressUrl(chainId, addr) {
    return `${_chainCfg(chainId).scan}/address/${addr}`;
}

function scanCodeUrl(chainId, addr) {
    return `${_chainCfg(chainId).scan}/address/${addr}#code`;
}

function dedaubAddressUrl(chainId, addr) {
    return `https://app.dedaub.com/${_chainCfg(chainId).dedaub}/address/${addr}/decompiled`;
}

function chainName(chainId) {
    return _chainCfg(chainId).name;
}
