// popup.js —— 扩展弹窗设置逻辑
let settings = null;

init();

async function init() {
  settings = await loadSettings();
  applySettingsToUI();

  document.getElementById('saveBackend').addEventListener('click', saveBackend);
  document.getElementById('backendUrl').addEventListener('change', saveBackend);
  document.getElementById('testConn').addEventListener('click', testConn);
  document.getElementById('saveConfig').addEventListener('click', saveConfig);
  document.getElementById('loadConfig').addEventListener('click', loadConfig);
  document.getElementById('bgEnabled').addEventListener('change', async (e) => {
    settings.bgEnabled = e.target.checked;
    await saveSettings({ bgEnabled: settings.bgEnabled }); // background.js 监听 storage.onChanged 自动附加/分离
  });
  document.getElementById('autoSend').addEventListener('change', async (e) => {
    settings.autoSend = e.target.checked;
    await saveSettings({ autoSend: settings.autoSend });
  });
  document.getElementById('addScope').addEventListener('click', () => {
    settings.pageScopes.push('');
    renderScopes();
  });
  document.getElementById('addRule').addEventListener('click', () => {
    settings.rules.push({ pattern: '', bodyPattern: '', method: '', enabled: true });
    renderRules();
  });
}

function applySettingsToUI() {
  document.getElementById('backendUrl').value = settings.backendUrl;
  document.getElementById('bgEnabled').checked = !!settings.bgEnabled;
  document.getElementById('autoSend').checked = !!settings.autoSend;
  renderScopes();
  renderRules();
}

async function saveBackend() {
  const v = document.getElementById('backendUrl').value.trim().replace(/\/+$/, '');
  if (!/^https?:\/\//.test(v)) { flash('地址需以 http:// 或 https:// 开头', true); return; }
  settings.backendUrl = v;
  await saveSettings({ backendUrl: v });
  flash('已保存');
}

function renderScopes() {
  const box = document.getElementById('scopes');
  box.innerHTML = '';
  if (!settings.pageScopes.length) {
    box.innerHTML = '<div class="empty">未配置 = 所有网页（谨慎）</div>';
    return;
  }
  settings.pageScopes.forEach((scope, i) => {
    const row = document.createElement('div');
    row.className = 'row';
    row.innerHTML = `
      <input type="text" class="scope-pattern" placeholder="如 ^https://app\\.blocksec\\.com/phalcon/explorer/tx/" value="${htmlEscape(scope)}">
      <button class="del small">删</button>`;
    row.querySelector('.scope-pattern').addEventListener('change', async (e) => {
      const v = e.target.value.trim();
      if (v) {
        try { new RegExp(v); } catch (err) { flash('正则无效：' + err.message, true); return; }
      }
      settings.pageScopes[i] = v;
      const before = settings.pageScopes.length;
      await persistScopes();
      if (settings.pageScopes.length !== before) renderScopes();
    });
    row.querySelector('.del').addEventListener('click', async () => {
      settings.pageScopes.splice(i, 1);
      renderScopes();
      await persistScopes();
    });
    box.appendChild(row);
  });
}

async function persistScopes() {
  // 去掉空白项；空列表 = 不限制
  settings.pageScopes = settings.pageScopes.filter(s => s && s.trim());
  await saveSettings({ pageScopes: settings.pageScopes });
}

// 保存当前配置到后端机器上的 extension/config/beholder-settings.json
async function saveConfig() {
  const el = document.getElementById('cfgResult');
  el.textContent = '…';
  el.className = '';
  try {
    const resp = await fetch(`${settings.backendUrl}/api/extension/config/save`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(settings)
    });
    if (!resp.ok) throw new Error(`HTTP ${resp.status}`);
    const data = await resp.json();
    el.textContent = `已保存 ${data.bytes} 字节 → ${data.path}`;
  } catch (e) {
    el.className = 'err';
    el.textContent = `保存失败：${(e && e.message) || e}`;
  }
}

// 从后端机器上的配置文件读取并应用
async function loadConfig() {
  const el = document.getElementById('cfgResult');
  el.textContent = '…';
  el.className = '';
  try {
    const resp = await fetch(`${settings.backendUrl}/api/extension/config/load`);
    if (!resp.ok) throw new Error(`HTTP ${resp.status}`);
    const data = await resp.json();
    if (!data || typeof data !== 'object' || Array.isArray(data)) throw new Error('配置文件格式无效');
    settings = Object.assign({}, DEFAULT_SETTINGS, {
      backendUrl: typeof data.backendUrl === 'string' && data.backendUrl ? data.backendUrl : DEFAULT_SETTINGS.backendUrl,
      bgEnabled: !!data.bgEnabled,
      autoSend: !!data.autoSend,
      pageScopes: Array.isArray(data.pageScopes) ? data.pageScopes.filter(s => typeof s === 'string') : [],
      rules: Array.isArray(data.rules) ? data.rules.filter(r => r && typeof r.pattern === 'string') : []
    });
    await saveSettings(settings);
    applySettingsToUI();
    el.textContent = '已读取并应用';
  } catch (e) {
    el.className = 'err';
    el.textContent = `读取失败：${(e && e.message) || e}`;
  }
}

async function testConn() {
  const el = document.getElementById('testResult');
  el.textContent = '…';
  el.className = '';
  try {
    const resp = await fetch(`${settings.backendUrl}/api/extension/captures`);
    if (!resp.ok) throw new Error(`HTTP ${resp.status}`);
    const data = await resp.json();
    el.textContent = `OK（后端缓存 ${data.count} 条）`;
    el.className = '';
  } catch (e) {
    el.textContent = `失败：${e && e.message || e}`;
    el.className = 'err';
  }
}

function renderRules() {
  const box = document.getElementById('rules');
  box.innerHTML = '';
  if (!settings.rules.length) {
    box.innerHTML = '<div class="empty">暂无规则</div>';
    return;
  }
  settings.rules.forEach((rule, i) => {
    const row = document.createElement('div');
    row.className = 'row';
    row.innerHTML = `
      <input type="checkbox" class="rule-enabled" title="启用" ${rule.enabled ? 'checked' : ''}>
      <input type="text" class="rule-pattern" placeholder="URL 正则，如 \\.json($|\\?)" value="${htmlEscape(rule.pattern)}">
      <input type="text" class="rule-method" placeholder="方法" value="${htmlEscape(rule.method || '')}">
      <input type="text" class="rule-body" placeholder="响应体正则(可选)" value="${htmlEscape(rule.bodyPattern || '')}">
      <button class="del small">删</button>`;
    row.querySelector('.rule-enabled').addEventListener('change', async (e) => {
      settings.rules[i].enabled = e.target.checked;
      await persistRules();
    });
    row.querySelector('.rule-pattern').addEventListener('change', async (e) => {
      settings.rules[i].pattern = e.target.value.trim();
      await persistRules();
    });
    row.querySelector('.rule-method').addEventListener('change', async (e) => {
      settings.rules[i].method = e.target.value.trim();
      await persistRules();
    });
    row.querySelector('.rule-body').addEventListener('change', async (e) => {
      settings.rules[i].bodyPattern = e.target.value.trim();
      await persistRules();
    });
    row.querySelector('.del').addEventListener('click', async () => {
      settings.rules.splice(i, 1);
      renderRules();
      await persistRules();
    });
    box.appendChild(row);
  });
}

async function persistRules() {
  // 过滤掉 URL 正则为空的无效规则
  await saveSettings({ rules: settings.rules.filter(r => r.pattern) });
}

function flash(msg, isErr) {
  const el = document.getElementById('testResult');
  el.textContent = msg;
  el.className = isErr ? 'err' : '';
  setTimeout(() => { el.textContent = ''; }, 4000);
}
