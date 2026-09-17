// settings.js —— 扩展内共享的设置读写与工具函数
// 被 background.js (importScripts)、popup.html、panel.html (script 标签) 共同使用

const DEFAULT_SETTINGS = {
  // 后端基地址（POST {backendUrl}/api/extension/capture）
  backendUrl: 'http://127.0.0.1:8090',
  // 后台自动捕获总开关（chrome.debugger 附加所有 http/https 标签页）
  bgEnabled: false,
  // DevTools 面板内“匹配规则自动发送”开关
  autoSend: false,
  // 匹配规则：{ pattern: URL 正则, bodyPattern: 响应体正则(可选), method: 精确匹配(可选), enabled: bool }
  rules: []
};

const MAX_BODY_LEN = 2 * 1024 * 1024; // 单个请求/响应体上限 2MB，超出截断

async function loadSettings() {
  const stored = await chrome.storage.sync.get(DEFAULT_SETTINGS);
  return Object.assign({}, DEFAULT_SETTINGS, stored);
}

function saveSettings(patch) {
  return chrome.storage.sync.set(patch);
}

// 单条规则匹配：URL 正则必中，method 可选精确匹配（空 = 任意）
function matchRule(rule, url, method) {
  if (!rule || rule.enabled === false) return false;
  let re;
  try { re = new RegExp(rule.pattern); } catch (e) { return false; }
  if (!re.test(url)) return false;
  if (rule.method && rule.method.toUpperCase() !== String(method || '').toUpperCase()) return false;
  return true;
}

// 响应体条件（bodyPattern）单独判断：需要先拿到响应体再过滤
function matchBodyPattern(rule, body) {
  if (!rule.bodyPattern) return true;
  try { return new RegExp(rule.bodyPattern).test(body || ''); } catch (e) { return false; }
}

function matchAnyRule(rules, url, method) {
  return (rules || []).find(r => matchRule(r, url, method)) || null;
}

// 上报到后端。返回 {ok, error}
async function postCapture(backendUrl, payload) {
  try {
    const resp = await fetch(`${backendUrl}/api/extension/capture`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(payload)
    });
    if (!resp.ok) return { ok: false, error: `HTTP ${resp.status}` };
    await resp.json();
    return { ok: true };
  } catch (e) {
    return { ok: false, error: String(e && e.message || e) };
  }
}

// 截断超长文本
function clampBody(text) {
  const s = text == null ? '' : String(text);
  if (s.length <= MAX_BODY_LEN) return { body: s, truncated: false };
  return { body: s.slice(0, MAX_BODY_LEN), truncated: true };
}

function htmlEscape(s) {
  return String(s == null ? '' : s)
    .replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;')
    .replace(/"/g, '&quot;').replace(/'/g, '&#39;');
}
