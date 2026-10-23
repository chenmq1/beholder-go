// bridge.js —— 注入后端页面（如 http://127.0.0.1:8090）的内容脚本
// 作用：拦截 a[data-bhcap] 链接的左键点击 → 通知 SW 后台打开目标页并强制捕获，
//       当前页直接跳转到 capture-view?page=<目标URL>&auto=1。
// 中键/Ctrl/Shift/新窗口打开不拦截，保留浏览器原生行为。
// 注意：本脚本可能在 document_start('loading') 阶段就被注入，故只依赖 document，DOM 用事件委托。
(function () {
  if (window.__beholderBridgeInstalled) return true;
  window.__beholderBridgeInstalled = true;
  try { document.documentElement.dataset.bhcap = '1'; } catch (e) {}

  // 心跳：告诉 SW 本标签页的 bridge 已活着（SW 会把该 tab 徽标置为绿色 BR）
  function heartbeat(stage, extra) {
    try {
      chrome.runtime.sendMessage(Object.assign(
        { type: 'beholder.bridgeAlive', stage: stage || 'install', url: location.href },
        extra || {}), () => void chrome.runtime.lastError);
    } catch (e) { /* 上下文失效等，忽略 */ }
  }
  heartbeat('install', { links: document.querySelectorAll('a[data-bhcap]').length });
  // DOM 就绪后再报一次（此时链接已渲染，links 数量有意义）
  const reportReady = () => heartbeat('ready', { links: document.querySelectorAll('a[data-bhcap]').length });
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', reportReady, { once: true });
  } else {
    reportReady();
  }

  // window 捕获阶段监听 mousedown：比 click 更早，任何下层 stopPropagation 都拦不住
  window.addEventListener('mousedown', (ev) => {
    try {
      const t = ev.target;
      const a = t && t.closest ? t.closest('a[data-bhcap]') : null;
      if (a) heartbeat('mousedown', {
        match: true, button: ev.button, tag: t && t.tagName,
        mods: [ev.ctrlKey ? 'ctrl' : '', ev.metaKey ? 'meta' : '',
               ev.shiftKey ? 'shift' : '', ev.altKey ? 'alt' : ''].filter(Boolean).join('+') || '-'
      });
    } catch (e) {}
  }, true);

  document.addEventListener('click', (ev) => {
    if (ev.button !== 0 || ev.ctrlKey || ev.metaKey || ev.shiftKey || ev.altKey) return;
    const a = ev.target.closest && ev.target.closest('a[data-bhcap]');
    if (!a) return;
    const url = a.href || '';
    if (!/^https?:/i.test(url)) return;
    heartbeat('click', { match: true, button: 0 });
    ev.preventDefault();

    const viewUrl = `${location.origin}/capture-view?page=${encodeURIComponent(url)}&auto=1`;
    try {
      chrome.runtime.sendMessage({ type: 'beholder.openForCapture', url }, (resp) => {
        const err = chrome.runtime.lastError;
        if (err) heartbeat('sw-no-resp', { error: String(err.message || err) });
        else heartbeat('sw-ack', { resp: resp && resp.ok });
      });
    } catch (e) {
      heartbeat('dispatch-error', { error: String(e && e.message || e) });
    }
    location.href = viewUrl;
  }, true);

  return true; // executeScript 的完成值：SW 据此逐框架确认注入成功
})();
