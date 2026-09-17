// popup.js —— 扩展弹窗设置逻辑
let settings = null;

init();

async function init() {
  settings = await loadSettings();
  document.getElementById('backendUrl').value = settings.backendUrl;
  document.getElementById('bgEnabled').checked = !!settings.bgEnabled;
  document.getElementById('autoSend').checked = !!settings.autoSend;

  document.getElementById('saveBackend').addEventListener('click', saveBackend);
  document.getElementById('testConn').addEventListener('click', testConn);
  document.getElementById('bgEnabled').addEventListener('change', async (e) => {
    settings.bgEnabled = e.target.checked;
    await saveSettings({ bgEnabled: settings.bgEnabled }); // background.js 监听 storage.onChanged 自动附加/分离
  });
  document.getElementById('autoSend').addEventListener('change', async (e) => {
    settings.autoSend = e.target.checked;
    await saveSettings({ autoSend: settings.autoSend });
  });
  document.getElementById('addRule').addEventListener('click', () => {
    settings.rules.push({ pattern: '', bodyPattern: '', method: '', enabled: true });
    renderRules();
  });
  renderRules();
}

async function saveBackend() {
  const v = document.getElementById('backendUrl').value.trim().replace(/\/+$/, '');
  if (!/^https?:\/\//.test(v)) { flash('地址需以 http:// 或 https:// 开头', true); return; }
  settings.backendUrl = v;
  await saveSettings({ backendUrl: v });
  flash('已保存');
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
