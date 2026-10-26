// tabKeeper.js —— 响应 content.js 的 OPEN_AND_CAPTURE：后台静默打开目标页
// 捕获到指定条数的网络请求（默认 2 条）后自动关闭；未达标则保留标签页，便于排查。
// 由 background.js 通过 importScripts 加载；状态独立，不与后台捕获逻辑共享。

const TAB_KEEPER_EXPECTED = 2;       // 需要成功捕获的请求条数
const TAB_KEEPER_CLOSE_DELAY = 1000; // 达标后再等 1 秒，确保最后一条上报落地

const tabKeeperTabs = new Map();     // tabId -> { urls: Set, closeTimer }

chrome.runtime.onMessage.addListener(onTabKeeperMessage);
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
  tabKeeperTabs.set(tab.id, { urls: new Set(), closeTimer: null });
  console.log('[tabKeeper] 后台打开 tab=%d url=%s', tab.id, url);
}

// 由 background.js 在请求成功上报后调用；同一 URL 只计一次，重试不会重复累计
function tabKeeperMarkCaptured(tabId, url) {
  const rec = tabKeeperTabs.get(tabId);
  if (!rec || rec.closeTimer) return;
  rec.urls.add(url || '');
  console.log('[tabKeeper] tab=%d 已捕获 %d/%d', tabId, rec.urls.size, TAB_KEEPER_EXPECTED);
  if (rec.urls.size >= TAB_KEEPER_EXPECTED) {
    rec.closeTimer = setTimeout(() => closeTabKeeper(tabId), TAB_KEEPER_CLOSE_DELAY);
  }
}

function onTabKeeperRemoved(tabId) {
  const rec = tabKeeperTabs.get(tabId);
  if (!rec) return;
  clearTimeout(rec.closeTimer);
  tabKeeperTabs.delete(tabId);
}

function closeTabKeeper(tabId) {
  const rec = tabKeeperTabs.get(tabId);
  if (rec) {
    clearTimeout(rec.closeTimer);
    tabKeeperTabs.delete(tabId);
  }
  chrome.tabs.remove(tabId, () => {
    void chrome.runtime.lastError;
    console.log('[tabKeeper] 已关闭 tab=%d', tabId);
  });
}
