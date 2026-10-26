// tabKeeper.js —— 响应 content.js 的 OPEN_AND_CAPTURE：后台静默打开目标页，加载完成后自动关闭
// 由 background.js 通过 importScripts 加载；状态独立，不与后台捕获逻辑共享。
// 后台标签页本身不特殊处理：仍按 bgEnabled + pageScopes + rules 走常规捕获。

const TAB_KEEPER_CLOSE_MS = 5000;  // 页面 complete 后保留 5 秒，留时间给请求上报
const TAB_KEEPER_MAX_MS = 20000;   // 兜底：页面始终不 complete 也必须关闭

const tabKeeperTabs = new Map();   // tabId -> { closeTimer, deadline }

chrome.runtime.onMessage.addListener(onTabKeeperMessage);
chrome.tabs.onUpdated.addListener(onTabKeeperUpdated);
chrome.tabs.onRemoved.addListener(onTabKeeperRemoved);

function onTabKeeperMessage(msg) {
  if (!msg || msg.type !== 'OPEN_AND_CAPTURE' || !msg.url) return;
  const url = String(msg.url);
  if (!/^https?:/i.test(url)) return;
  openTabKeeper(url).catch(e =>
    console.warn('[tabKeeper] 打开后台标签页失败:', e && e.message));
}

async function openTabKeeper(url) {
  const tab = await chrome.tabs.create({ url, active: false });
  const tabId = tab.id;
  const deadline = setTimeout(() => closeTabKeeper(tabId), TAB_KEEPER_MAX_MS);
  tabKeeperTabs.set(tabId, { closeTimer: null, deadline });
  console.log('[tabKeeper] 后台打开 tab=%d url=%s', tabId, url);
}

function onTabKeeperUpdated(tabId, info) {
  const rec = tabKeeperTabs.get(tabId);
  if (!rec) return;                                   // 只处理自己创建的标签页
  if (info.status === 'complete' && !rec.closeTimer) { // 只排一次关闭计时
    rec.closeTimer = setTimeout(() => closeTabKeeper(tabId), TAB_KEEPER_CLOSE_MS);
  }
}

function onTabKeeperRemoved(tabId) {
  const rec = tabKeeperTabs.get(tabId);
  if (!rec) return;
  clearTimeout(rec.closeTimer);
  clearTimeout(rec.deadline);
  tabKeeperTabs.delete(tabId);
}

function closeTabKeeper(tabId) {
  const rec = tabKeeperTabs.get(tabId);
  if (rec) {
    clearTimeout(rec.closeTimer);
    clearTimeout(rec.deadline);
    tabKeeperTabs.delete(tabId);
  }
  chrome.tabs.remove(tabId, () => {
    void chrome.runtime.lastError;
    console.log('[tabKeeper] 已关闭 tab=%d', tabId);
  });
}
