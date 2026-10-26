console.log("[Beholder-Content true] 脚本已启动，正在守护您的本地页面。");

window.addEventListener('click', (ev) => {
  const anchor = ev.target.closest('a');
  if (!anchor) return;

  const targetUrl = anchor.href || '';

  // 精准匹配前缀
  if (targetUrl.startsWith('https://app.blocksec.com/phalcon/explorer/tx/')) {
    
    console.log(`[Beholder-Content] 🎯 命中目标！截获跳转: ${targetUrl}`);
    
    // 1. 斩断原生前台打开行为
    ev.preventDefault();
    ev.stopPropagation();

    // 2. 异步通知后台（不需要等待它回应，发完即可）
    chrome.runtime.sendMessage({ type: 'OPEN_AND_CAPTURE', url: targetUrl });
    console.log("[Beholder-Content] ✉️ 已向后台投递静默打开信号。");

    // 3. 前台打开捕获视图：原链接是 target=_blank 则新标签页打开，否则当前页跳转
    const myBackendView = `http://localhost:8090/capture-view?page=${encodeURIComponent(targetUrl)}`;
    console.log(`[Beholder-Content] 🔄 正在将前台推向: ${myBackendView}`);

    if ((anchor.getAttribute('target') || '').toLowerCase() === '_blank') {
      window.open(myBackendView, '_blank', 'noopener');
    } else {
      window.location.href = myBackendView;
    }
  }
}, true); // 捕获阶段
