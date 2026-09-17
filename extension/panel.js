// panel.js —— DevTools "Beholder" 面板逻辑
// 捕获当前被检查页面的网络请求；每条可一键发送响应体到后端；
// 勾选自动发送后，命中规则（URL 正则 + 可选响应体正则 + 可选方法）的请求自动上报。

const MAX_ROWS = 500;

let settings = null;
const rows = []; // { entry, url, method, status, type, size, state: 'idle'|'sending'|'ok'|'fail', auto }
let statusTimer = null;

init();

async function init() {
  settings = await loadSettings();
  document.getElementById('backend').textContent = settings.backendUrl;
  document.getElementById('autosend').checked = !!settings.autoSend;
  if (!(settings.rules || []).length) document.getElementById('hint').style.display = 'block';

  document.getElementById('autosend').addEventListener('change', async (e) => {
    settings.autoSend = e.target.checked;
    await saveSettings({ autoSend: settings.autoSend });
    flash(e.target.checked ? '自动发送已开启' : '自动发送已关闭');
  });
  document.getElementById('clear').addEventListener('click', () => { rows.length = 0; renderAll(); });
  document.getElementById('rows').addEventListener('click', onRowClick);

  chrome.devtools.network.onRequestFinished.addListener(onRequestFinished);
  chrome.devtools.network.onNavigated.addListener(() => { rows.length = 0; renderAll(); });

  // 弹窗修改设置（后端地址/自动发送/规则）时同步到面板，无需重开 DevTools
  chrome.storage.onChanged.addListener(async () => {
    settings = await loadSettings();
    document.getElementById('backend').textContent = settings.backendUrl;
    document.getElementById('autosend').checked = !!settings.autoSend;
  });

  // 回放已存在的请求（打开面板前的流量）仅保留 URL 信息，响应体仍可 getContent 拿到
  chrome.devtools.network.getHAR((harLog) => {
    (harLog.entries || []).slice(-MAX_ROWS).forEach(addEntry);
    renderAll();
  });
}

function onRequestFinished(entry) {
  addEntry(entry);
  renderAll();
  if (settings.autoSend) tryAutoSend(entry);
}

function addEntry(entry) {
  const req = {
    entry,
    url: entry.request.url,
    method: entry.request.method,
    status: entry.response.status,
    type: entry._resourceType || entry.response.content.mimeType || '',
    size: entry.response.content.size,
    state: 'idle',
    auto: false
  };
  rows.push(req);
  if (rows.length > MAX_ROWS) rows.shift();
}

function onRowClick(e) {
  const btn = e.target.closest('button.sendbtn');
  if (!btn) return;
  const idx = Number(btn.dataset.idx);
  const req = rows[idx];
  if (!req || req.state === 'sending') return;
  sendEntry(req, false);
}

async function tryAutoSend(entry) {
  const req = rows.find(r => r.entry === entry);
  if (!req) return;
  const rule = matchAnyRule(settings.rules, req.url, req.method);
  if (!rule) return;
  req.auto = true;
  await sendEntry(req, true, rule);
}

// 取响应体并上报；auto=true 时先应用 bodyPattern 过滤
async function sendEntry(req, auto, rule) {
  req.state = 'sending';
  updateRow(req);
  try {
    const content = await getContent(req.entry);
    const body = clampBody(content && content.text || '');
    if (auto && rule && !matchBodyPattern(rule, body.body)) {
      req.state = 'idle';
      req.auto = false;
      updateRow(req);
      flash('自动发送：命中 URL 但响应体不满足 bodyPattern，已跳过');
      return;
    }
    const payload = {
      source: 'devtools',
      pageUrl: chrome.devtools.inspectedWindow.tabUrl || '',
      url: req.url,
      method: req.method,
      status: req.status,
      statusText: req.entry.response.statusText || '',
      mimeType: req.entry.response.content.mimeType || '',
      requestHeaders: headersToObject(req.entry.request.headers),
      responseHeaders: headersToObject(req.entry.response.headers),
      requestBody: req.entry.request.postData ? clampBody(req.entry.request.postData.text || '').body : '',
      responseBody: body.body,
      responseEncoding: content.encoding || 'text',
      truncated: body.truncated,
      capturedAt: new Date().toISOString()
    };
    const res = await postCapture(settings.backendUrl, payload);
    req.state = res.ok ? 'ok' : 'fail';
    req.error = res.error || '';
    updateRow(req);
    flash(res.ok ? `已发送：${shortUrl(req.url)}` : `发送失败：${res.error}`, !res.ok);
  } catch (err) {
    req.state = 'fail';
    req.error = String(err && err.message || err);
    updateRow(req);
    flash(`获取响应体失败：${req.error}`, true);
  }
}

function getContent(entry) {
  return new Promise((resolve, reject) => {
    entry.getContent((text, encoding) => {
      if (chrome.runtime.lastError) return reject(new Error(chrome.runtime.lastError.message));
      resolve({ text, encoding: encoding || 'text' });
    });
  });
}

function headersToObject(headerArray) {
  const obj = {};
  (headerArray || []).forEach(h => { obj[h.name] = h.value; });
  return obj;
}

// ---------- 渲染 ----------

function renderAll() {
  const tbody = document.getElementById('rows');
  tbody.innerHTML = rows.map((req, i) => rowHtml(req, i)).join('');
  document.getElementById('count').textContent = `${rows.length} 条`;
  document.getElementById('empty').style.display = rows.length ? 'none' : 'block';
}

function rowHtml(req, i) {
  const st = req.status || 0;
  const cls = st >= 500 || st === 0 ? 'st-err' : st >= 400 ? 'st-err' : st >= 300 ? 'st-redir' : 'st-ok';
  const tag = req.state === 'ok' ? '<span class="tag ok">已上报</span>'
    : req.state === 'fail' ? `<span class="tag fail" title="${htmlEscape(req.error || '')}">失败</span>`
    : req.state === 'sending' ? '<span class="tag auto">发送中…</span>'
    : req.auto ? '<span class="tag auto">自动</span>' : '';
  return `<tr>
    <td class="${cls}">${st || '-'}</td>
    <td class="method">${htmlEscape(req.method)}</td>
    <td class="url" title="${htmlEscape(req.url)}">${htmlEscape(shortUrl(req.url))}</td>
    <td>${htmlEscape(req.type)}</td>
    <td>${fmtSize(req.size)}</td>
    <td><button class="sendbtn" data-idx="${i}" ${req.state === 'sending' ? 'disabled' : ''}>发送</button>${tag}</td>
  </tr>`;
}

function updateRow(req) {
  const i = rows.indexOf(req);
  if (i >= 0) {
    const tbody = document.getElementById('rows');
    const tr = tbody.children[i];
    if (tr) tr.outerHTML = rowHtml(req, i);
  }
}

function shortUrl(u) {
  try {
    const x = new URL(u);
    return x.pathname + (x.search || '');
  } catch (e) { return u; }
}

function fmtSize(n) {
  if (n == null || n < 0) return '-';
  if (n < 1024) return `${n}B`;
  if (n < 1024 * 1024) return `${(n / 1024).toFixed(1)}KB`;
  return `${(n / 1024 / 1024).toFixed(1)}MB`;
}

function flash(msg, isErr) {
  const el = document.getElementById('status');
  el.textContent = msg;
  el.className = isErr ? 'err' : '';
  clearTimeout(statusTimer);
  statusTimer = setTimeout(() => { el.textContent = ''; }, 6000);
}
