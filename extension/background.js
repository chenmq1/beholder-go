// background.js —— 后台自动捕获（无需打开 DevTools）
// 原理：chrome.debugger（CDP）附加到 http/https 标签页 → Network.enable →
//       命中 URL 规则的请求在 loadingFinished 后用 Network.getResponseBody 取响应体 → POST 到后端。
// 注意：附加后页面顶部会出现“xx 已开始调试此浏览器”横幅，属正常现象；在弹窗里关闭开关即可全部分离。

importScripts('settings.js');

// tabId -> { url, requests: Map(requestId -> { url, method, postData }) }
const attached = new Map();
let settings = null;

init();

async function init() {
  settings = await loadSettings();
  chrome.storage.onChanged.addListener(onSettingsChanged);
  chrome.tabs.onUpdated.addListener(onTabUpdated);
  chrome.tabs.onRemoved.addListener(onTabRemoved);
  chrome.debugger.onEvent.addListener(onDebuggerEvent);
  chrome.debugger.onDetach.addListener(onDebuggerDetach);

  if (settings.bgEnabled) {
    const tabs = await chrome.tabs.query({ url: ['http://*/*', 'https://*/*'] });
    for (const tab of tabs) await attachTab(tab.id, tab.url);
  }
}

// ---------- 设置变化 ----------

async function onSettingsChanged(_changes, _area) {
  const prevEnabled = settings.bgEnabled;
  settings = await loadSettings();
  if (prevEnabled && !settings.bgEnabled) {
    await detachAll();
  } else if (!prevEnabled && settings.bgEnabled) {
    const tabs = await chrome.tabs.query({ url: ['http://*/*', 'https://*/*'] });
    for (const tab of tabs) await attachTab(tab.id, tab.url);
  }
}

// ---------- 附加 / 分离 ----------

async function onTabUpdated(tabId, info, tab) {
  if (!settings || !settings.bgEnabled) return;
  const url = info.url || tab.url || '';
  if (!/^https?:/i.test(url)) return;
  if (attached.has(tabId)) {
    attached.get(tabId).url = url; // 跟踪页面导航
    return;
  }
  await attachTab(tabId, url);
}

function onTabRemoved(tabId) {
  attached.delete(tabId);
}

async function attachTab(tabId, url) {
  if (attached.has(tabId)) return true;
  try {
    await chrome.debugger.attach({ tabId }, '1.3');
    await chrome.debugger.sendCommand({ tabId }, 'Network.enable', { maxPostDataSize: 65536 });
    attached.set(tabId, { url: url || '', requests: new Map() });
    setBadge(tabId, 'ON', '#0e639c');
    return true;
  } catch (e) {
    // 常见原因：DevTools 已打开（Another debugger is already attached）、chrome:// 页面等
    setBadge(tabId, 'ERR', '#a1260d');
    console.warn(`[beholder-ext] attach tab ${tabId} failed:`, e && e.message);
    return false;
  }
}

async function detachAll() {
  for (const tabId of Array.from(attached.keys())) {
    try { await chrome.debugger.detach({ tabId }); } catch (e) { /* 已分离则忽略 */ }
    setBadge(tabId, '', '#666666'); // 显式 detach 不触发 onDetach，需自行清理徽标
  }
  attached.clear();
}

async function onDebuggerDetach(source) {
  const tabId = source.tabId;
  if (tabId != null && attached.delete(tabId)) {
    setBadge(tabId, 'OFF', '#666666');
  }
}

function setBadge(tabId, text, color) {
  chrome.action.setBadgeText({ tabId, text });
  if (color) chrome.action.setBadgeBackgroundColor({ tabId, color });
}

// ---------- CDP 事件 ----------

function onDebuggerEvent(source, method, params) {
  const tabId = source.tabId;
  const state = attached.get(tabId);
  if (!state) return;

  if (method === 'Network.requestWillBeSent') {
    state.requests.set(params.requestId, {
      url: params.request.url,
      method: params.request.method,
      postData: (params.request.postData && params.request.postData.length <= 65536)
        ? params.request.postData : ''
    });
    return;
  }

  if (method === 'Network.responseReceived') {
    const req = state.requests.get(params.requestId);
    if (req) {
      req.status = params.response.status;
      req.mimeType = params.response.mimeType;
    }
    return;
  }

  if (method === 'Network.loadingFinished') {
    const req = state.requests.get(params.requestId);
    state.requests.delete(params.requestId); // 无论是否命中都移除，防内存增长
    if (!req) return;
    const rule = matchAnyRule(settings.rules, req.url, req.method);
    if (!rule) return;
    captureAndPost(tabId, state, params.requestId, req, rule).catch(e =>
      console.warn('[beholder-ext] capture failed:', e && e.message));
  }
}

// 用 CDP 取响应体 → 应用 bodyPattern 过滤 → 上报后端
async function captureAndPost(tabId, state, requestId, req, rule) {
  let result;
  try {
    result = await chrome.debugger.sendCommand(
      { tabId }, 'Network.getResponseBody', { requestId });
  } catch (e) {
    console.warn(`[beholder-ext] getResponseBody failed for ${req.url}:`, e && e.message);
    return;
  }
  const rawBody = result && result.body || '';
  const encoding = result && result.base64Encoded ? 'base64' : 'text';
  // bodyPattern 仅对文本体判断；base64（二进制）不匹配文本正则
  if (encoding === 'text' && !matchBodyPattern(rule, rawBody)) return;

  const body = clampBody(rawBody);
  const payload = {
    source: 'background',
    pageUrl: state.url || '',
    url: req.url,
    method: req.method,
    status: req.status || 0,
    mimeType: req.mimeType || '',
    requestBody: clampBody(req.postData || '').body,
    responseBody: body.body,
    responseEncoding: encoding,
    truncated: body.truncated,
    capturedAt: new Date().toISOString()
  };
  const res = await postCapture(settings.backendUrl, payload);
  if (!res.ok) console.warn(`[beholder-ext] post failed for ${req.url}:`, res.error);
}
