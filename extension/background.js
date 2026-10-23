// background.js —— 后台自动捕获（无需打开 DevTools）
// 原理：chrome.debugger（CDP）附加到 http/https 标签页 → Network.enable →
//       命中 URL 规则的请求在 loadingFinished 后用 Network.getResponseBody 取响应体 → POST 到后端。
// 注意：附加后页面顶部会出现“xx 已开始调试此浏览器”横幅，属正常现象；在弹窗里关闭开关即可全部分离。

importScripts('settings.js');

// tabId -> { url, requests: Map(requestId -> { url, method, postData, type }) }
const attached = new Map();
// 正在进行中的 attach：tabId -> Promise<bool>，防止一次导航多个 onTabUpdated 并发重复 attach
const attaching = new Map();
// 一次性托管标签页：由后端页面上的 bridge 触发，绕过 pageScope/匹配规则，
// 该页全部 XHR/Fetch 响应都上报；reconcile 不得分离这些标签页
const managedTabs = new Set();
let settings = null;

init().catch(e => console.error('[beholder] init failed:', e));

async function init() {
  settings = await loadSettings();
  console.log('[beholder] SW v1.0.7 booted, backendUrl=%s bgEnabled=%s', settings.backendUrl, settings.bgEnabled);
  chrome.storage.onChanged.addListener(onSettingsChanged);
  chrome.tabs.onUpdated.addListener(onTabUpdated);
  chrome.tabs.onRemoved.addListener(onTabRemoved);
  chrome.tabs.onActivated.addListener(onTabActivated);
  chrome.debugger.onEvent.addListener(onDebuggerEvent);
  chrome.debugger.onDetach.addListener(onDebuggerDetach);
  chrome.runtime.onMessage.addListener(onRuntimeMessage);

  // 把 bridge.js 注册/注入到后端源页面
  await registerBridge();
  // 启动即对账：附加 pageScope 内的标签页；分离范围外的孤儿会话（上次 SW 遗留）
  await reconcile();
}

// ---------- 设置变化 ----------

async function onSettingsChanged(_changes, _area) {
  settings = await loadSettings();
  await registerBridge();
  await reconcile();
}

// ---------- bridge.js 动态注册到后端源 ----------

// bridge 注入的目标源：配置的后端源 + localhost/127.0.0.1 同端口别名（防止访问主机名不一致导致漏注入）
// 配置的 backendUrl 非法/为空时回退到默认值，保证 bridge 一定有注入目标
function bridgeOrigins() {
  const out = new Set();
  const add = (u) => { try { const o = new URL(u).origin; if (/^https?:/i.test(o)) out.add(o); } catch (e) {} };
  const base = settings.backendUrl;
  add(base);
  if (!out.size) add(DEFAULT_SETTINGS.backendUrl);
  for (const o of Array.from(out)) {
    try {
      const u = new URL(o);
      const port = u.port || (u.protocol === 'https:' ? '443' : '80');
      const host = u.hostname;
      const alias = host === '127.0.0.1' ? 'localhost' : (host === 'localhost' ? '127.0.0.1' : null);
      if (alias) out.add(`${u.protocol}//${alias}:${port}`);
    } catch (e) {}
  }
  return Array.from(out);
}

function isBackendUrl(u) {
  if (!u || !/^https?:/i.test(u)) return false;
  try { return bridgeOrigins().includes(new URL(u).origin); } catch (e) { return false; }
}

// 注入去重（同一 tab 同时只跑一轮）
const injectPending = new Set();
// 单次 executeScript 加超时：loading 早期主框架未提交时 Promise 可能被长期挂起，
// 不能让它占着锁导致后续 complete 阶段的注入尝试全被跳过
function execScriptWithTimeout(tabId, ms) {
  /*return Promise.race([
    chrome.scripting.executeScript({ target: { tabId , allFrames: true}, files: ['bridge.js'] }),
    new Promise((_, reject) => setTimeout(() => reject(new Error('executeScript timeout')), ms))
  ]);
}*/
 return Promise.race([
    chrome.scripting.executeScript({ target: { tabId , allFrames: true}, world: 'MAIN',files: ['bridge.js'] }),
    new Promise((_, reject) => setTimeout(async () => {
      // --- 在超时的瞬间，主动抓取 Tab 的快照状态 ---
      let diagInfo = { error: 'executeScript timeout' };
      try {
        const tab = await chrome.tabs.get(tabId);
        diagInfo.tabStatus = tab.status;       // 状态是 'loading' 还是 'complete'
        diagInfo.tabUrl = tab.url;             // 当前浏览器地址栏的真实 URL
        diagInfo.tabActive = tab.active;       // 是否是当前激活/可见的标签页
        diagInfo.tabAudible = tab.audible;     // 是否在播放声音
        diagInfo.discarded = tab.discarded;   // 是否被 Edge 内存回收/冻结
      } catch (e) {
        diagInfo.tabGetError = String(e.message || e);
      }
      reject(new Error(JSON.stringify(diagInfo)));
    }, ms))
  ]);
}
// 带重试的注入：导航/框架替换瞬间会报 "Frame with ID 0 was removed"，退避后重试即可
/*async function injectBridge(tabId, reason) {
  if (injectPending.has(tabId)) return;
  injectPending.add(tabId);
  console.log('[beholder] bridge inject scheduled tab=%d reason=%s', tabId, reason);
  try {
    for (let attempt = 1; attempt <= 5; attempt++) {
      let results;
      try {
        results = await execScriptWithTimeout(tabId, 3000);
      } catch (e) {
        const msg = String(e && e.message || e);
        // 标签已不存在：无需重试
        if (/no tab with id|tab was closed|cannot find tab/i.test(msg)) {
          console.log('[beholder] bridge inject skipped tab=%d (%s)', tabId, msg);
          return;
        }
        // 框架正被替换 / 调用挂起超时：退避重试
        if (/frame|removed|timeout/i.test(msg) && attempt < 5) {
          await new Promise(r => setTimeout(r, 250 * attempt));
          continue;
        }
        console.warn('[beholder] bridge inject FAILED tab=%d reason=%s: %s', tabId, reason, msg);
        return;
      }
      // executeScript 成功：逐框架确认 bridge 真的执行了（脚本完成值为 true）
      const frames = (results || []).map(r => r.result === true);
      console.log('[beholder] bridge inject OK tab=%d reason=%s attempt=%d frames=%o',
        tabId, reason, attempt, frames);
      return;
    }
    console.warn('[beholder] bridge inject gave up tab=%d after retries', tabId);
  } finally {
    injectPending.delete(tabId);
  }
}*/
async function injectBridge(tabId, reason) {
  console.log("called injectBridge", tabId, reason);
  if (injectPending.has(tabId)) return;
  injectPending.add(tabId);
  
  // 打印开始注入的时间戳
  const startTime = Date.now();
  console.log('[beholder] 🚀 开始尝试注入 bridge... 时间: %s, tab=%d, reason=%s', 
    new Date(startTime).toLocaleTimeString(), tabId, reason);

  try {
    for (let attempt = 1; attempt <= 5; attempt++) {
      let results;
      try {
        results = await execScriptWithTimeout(tabId, 3000);
      } catch (e) {
        const rawMsg = String(e && e.message || e);
        const costTime = Date.now() - startTime;

        // 判断是否是我们抛出的 JSON 格式超时信息
        if (rawMsg.includes('executeScript timeout')) {
          try {
            const diag = JSON.parse(rawMsg);
            console.error(
              '[beholder] ❌ 注入第 %d 次严重超时！已耗时 %dms\n' +
              '🔍 【核心诊断快照】:\n' +
              '   - 页面当时状态(status): %s\n' +
              '   - 实际地址栏 URL: %s\n' +
              '   - 标签页是否可见(active): %s\n' +
              '   - rawMsg: %s',
              attempt, costTime, diag.tabStatus, diag.tabUrl, diag.tabActive, rawMsg
            );
          } catch(pErr) {
            console.error('[beholder] ❌ 注入超时原生报错:', rawMsg);
          }
        } else {
          // 其他常规错误（如 Frame 不存在）
          console.warn('[beholder] ⚠️ 注入第 %d 次常规失败, 耗时 %dms, 错误: %s', attempt, costTime, rawMsg);
        }

        // 常规退出逻辑
        if (/no tab with id|tab was closed|cannot find tab/i.test(rawMsg)) return;
        if (attempt < 5) {
          await new Promise(r => setTimeout(r, 250 * attempt));
          continue;
        }
        return;
      }

      // 注入成功日志
      const frames = (results || []).map(r => r.result === true);
      console.log('[beholder] ✅ 注入成功！总共耗时 %dms, tab=%d, frames=%o', 
        Date.now() - startTime, tabId, frames);
      return;
    }
  } finally {
    injectPending.delete(tabId);
  }
}

// 用 chrome.scripting 动态注册内容脚本（后端地址/端口可变，不写死在 manifest）
async function registerBridge() {
  const origins = bridgeOrigins();
  const id = 'beholder_bridge';
  if (!origins.length) {
    console.warn('[beholder] registerBridge skipped: no valid backend origin (backendUrl=%j)', settings.backendUrl);
    return;
  }
  const matches = origins.map(o => o + '/*');
  try { await chrome.scripting.unregisterContentScripts({ ids: [id] }); } catch (e) { /* 未注册过 */ }
  try {
    if (!chrome.scripting || !chrome.scripting.registerContentScripts) {
      console.error('[beholder] chrome.scripting 不可用：请确认扩展已重新加载以授权新权限（manifest 含 scripting）');
      return;
    }
    await chrome.scripting.registerContentScripts([{
      id,
      matches,
      js: ['bridge.js'],
      allFrames: true,
      runAt: 'document_start',
      persistAcrossSessions: true
    }]);
    // 立即给已打开的后端页面补注入（动态注册只对之后的导航生效）
    const tabs = await chrome.tabs.query({ url: matches });
    for (const t of tabs) injectBridge(t.id, 'startup');
    console.log('[beholder] bridge registered at %o, %d open tab(s) targeted', matches, tabs.length);
  } catch (e) {
    console.warn('[beholder] registerBridge failed:', e && e.message);
  }
}

// ---------- 一次性托管捕获（bridge 触发） ----------

function onRuntimeMessage(msg, sender, sendResponse) {
  // bridge 心跳/点击诊断
  if (msg && msg.type === 'beholder.bridgeAlive') {
    const tabId = sender.tab && sender.tab.id;
    const pageUrl = sender.tab && sender.tab.url;
    // 只认配置的后端源（静态脚本会注入到所有 localhost 页面，此处过滤避免误报）
    if (!isBackendUrl(pageUrl)) return false;
    if (msg.stage === 'install' || msg.stage === 'ready') {
      console.log('[beholder] bridge ALIVE in tab %d (%s) stage=%s, data-bhcap links=%s',
        tabId, sender.tab && sender.tab.url, msg.stage, msg.links);
      if (tabId != null) setBadge(tabId, 'BR', '#1a7f37');
    } else if (msg.stage === 'mousedown' || msg.stage === 'click') {
      if (msg.match) {
        console.log('[beholder] bridge saw %s on data-bhcap link in tab %d (button=%s mods=%s tag=%s)',
          msg.stage, tabId, msg.button, msg.mods, msg.tag);
        if (tabId != null) setBadge(tabId, 'CLK', '#b8860b');
      }
    } else {
      console.log('[beholder] bridge diag tab=%d stage=%s %o', tabId, msg.stage,
        { error: msg.error, resp: msg.resp });
    }
    return false;
  }
  if (!msg || msg.type !== 'beholder.openForCapture' || !msg.url) return false;
  console.log('[beholder] openForCapture message from tab %d, url=%s',
    sender.tab && sender.tab.id, msg.url);
  openForCapture(msg.url).then(ok => sendResponse({ ok })).catch(e => {
    console.warn('[beholder] openForCapture failed:', e && e.message);
    sendResponse({ ok: false, error: String(e && e.message || e) });
  });
  return true; // 异步响应
}

// 新建后台标签：先建空白页 → 先占 managed 名额 → attach + Network.enable → 再导航到目标 URL，保证首个请求不漏
async function openForCapture(url) {
  const tab = await chrome.tabs.create({ url: 'about:blank', active: false });
  // 先占位：此后该 tab 的任何 onTabUpdated（about:blank/导航中）都走 managed 分支，不会被普通流程抢附加
  managedTabs.add(tab.id);
  console.log('[beholder] openForCapture: created bg tab %d, attaching…', tab.id);
  const ok = await attachTab(tab.id, '', true);
  if (!ok) {
    console.warn('[beholder] openForCapture: attach failed on tab %d（可能该标签页被 DevTools 或其他扩展占用），关闭空白页', tab.id);
    managedTabs.delete(tab.id);
    try { await chrome.tabs.remove(tab.id); } catch (e) {}
    return false;
  }
  console.log('[beholder] openForCapture: tab %d attached (CAP), navigating to %s', tab.id, url);
  await chrome.tabs.update(tab.id, { url });
  return true;
}

// 统一对账：先清掉所有 http/https 标签页的遗留会话（含上次 SW 孤儿），再按 bgEnabled+pageScope 重新附加
async function reconcile() {
  const tabs = await chrome.tabs.query({ url: ['http://*/*', 'https://*/*'] });
  console.log('[beholder] reconcile: pageScopes=%o bgEnabled=%s tabs=%d',
    settings.pageScopes, settings.bgEnabled, tabs.length);
  const want = (tab) => settings.bgEnabled && matchesPageScope(settings.pageScopes, tab.url);
  for (const tab of tabs) {
    const tabId = tab.id;
    // 托管标签页由一次性捕获流程管理，对账不得触碰
    if (managedTabs.has(tabId)) {
      console.log('[beholder] tab %d managed, reconcile skip', tabId);
      continue;
    }
    const w = want(tab);
    // 1. 先分离任何遗留会话——未附加则忽略错误
    try { await chrome.debugger.detach({ tabId }); } catch (e) { /* 未附加 */ }
    attached.delete(tabId);
    setBadge(tabId, '', '#666666');
    // 2. 按当前范围重新附加
    if (w) {
      const ok = await attachTab(tabId, tab.url);
      console.log('[beholder] tab %d %s want=%s attach=%s', tabId, tab.url, w, ok ? 'ON' : 'ERR');
    } else {
      console.log('[beholder] tab %d %s want=false skip', tabId, tab.url);
    }
  }
}

// ---------- 附加 / 分离 ----------

async function onTabUpdated(tabId, info, tab) {
  // 后端源页面：导航各阶段都尝试补注入（loading 尽早挂监听，complete 兜底；bfcache 恢复走 onActivated）
  const u = (info.url || (tab && tab.url) || '');
  if (isBackendUrl(u) && (info.status === 'complete')) {
    injectBridge(tabId, info.status || 'url');
  }
  // 托管标签页：始终保持附加，仅跟踪 URL；导航到非 http(s) 页面不处理
  if (managedTabs.has(tabId)) {
    const url = info.url || tab.url || '';
    if (url && attached.has(tabId)) attached.get(tabId).url = url;
    return;
  }
  if (!settings || !settings.bgEnabled) return;
  const url = info.url || tab.url || '';
  if (!/^https?:/i.test(url)) return;
  const inScope = matchesPageScope(settings.pageScopes, url);
  console.log('[beholder] onTabUpdated tab=%d url=%s inScope=%s', tabId, url, inScope);
  if (attached.has(tabId)) {
    if (inScope) {
      attached.get(tabId).url = url; // 跟踪页面导航
    } else {
      await detachOne(tabId); // 导航离开 pageScope → 分离
    }
    return;
  }
  if (inScope) await attachTab(tabId, url);
}

function onTabRemoved(tabId) {
  attached.delete(tabId);
  managedTabs.delete(tabId);
  injectPending.delete(tabId);
}

// 切换到某标签页时补注入：覆盖 bfcache 恢复（无 onUpdated 事件）与 SW 重启后旧标签的场景
async function onTabActivated({ tabId }) {
}

async function attachTab(tabId, url, managed) {
  if (attached.has(tabId)) return true;
  const pending = attaching.get(tabId);
  if (pending) return pending; // 同一 tab 已有 attach 在途，复用其结果（防 onTabUpdated 连发自撞）
  const p = doAttach(tabId, url, managed);
  attaching.set(tabId, p);
  try { return await p; } finally { attaching.delete(tabId); }
}

async function doAttach(tabId, url, managed) {
  try {
    await chrome.debugger.attach({ tabId }, '1.3');
  } catch (e) {
    // 可能是上次 SW 遗留的孤儿会话仍占用：先分离再重试一次
    try { await chrome.debugger.detach({ tabId }); } catch (e2) { /* 未附加 */ }
    try {
      await chrome.debugger.attach({ tabId }, '1.3');
    } catch (e2) {
      // 真正失败（常见：DevTools 已打开该标签页、或其他扩展的 debugger 已附加，二者互斥）
      setBadge(tabId, 'ERR', '#a1260d');
      console.warn(`[beholder-ext] attach tab ${tabId} failed:`, e2 && e2.message);
      return false;
    }
  }
  await chrome.debugger.sendCommand({ tabId }, 'Network.enable', { maxPostDataSize: 65536 });
  attached.set(tabId, { url: url || '', requests: new Map() });
  setBadge(tabId, managed ? 'CAP' : 'ON', managed ? '#7c3aed' : '#0e639c');
  return true;
}

async function detachAll() {
  for (const tabId of Array.from(attached.keys())) {
    await detachOne(tabId);
  }
  attached.clear();
}

// 分离单个标签页（显式 detach 不触发 onDetach，需自行清理徽标）
async function detachOne(tabId) {
  try { await chrome.debugger.detach({ tabId }); } catch (e) { /* 已分离则忽略 */ }
  attached.delete(tabId);
  setBadge(tabId, '', '#666666');
}

async function onDebuggerDetach(source) {
  const tabId = source.tabId;
  managedTabs.delete(tabId);
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
      req.type = params.type || '';
    }
    return;
  }

  if (method === 'Network.loadingFinished') {
    const req = state.requests.get(params.requestId);
    state.requests.delete(params.requestId); // 无论是否命中都移除，防内存增长
    if (!req) return;
    if (managedTabs.has(tabId)) {
      // 托管标签页：只抓 XHR/Fetch，不做规则过滤（那两个 API 必然上报）
      if (req.type !== 'XHR' && req.type !== 'Fetch') return;
      captureAndPost(tabId, state, params.requestId, req, null).catch(e =>
        console.warn('[beholder-ext] managed capture failed:', e && e.message));
      return;
    }
    const rule = matchAnyRule(settings.rules, req.url, req.method);
    if (!rule) return;
    captureAndPost(tabId, state, params.requestId, req, rule).catch(e =>
      console.warn('[beholder-ext] capture failed:', e && e.message));
  }
}

// 用 CDP 取响应体 → 应用 bodyPattern 过滤（rule 为 null 的托管模式跳过过滤）→ 上报后端
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
  if (rule && encoding === 'text' && !matchBodyPattern(rule, rawBody)) return;

  const body = clampBody(rawBody);
  const payload = {
    source: managedTabs.has(tabId) ? 'managed' : 'background',
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
