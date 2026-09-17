// devtools.js —— 在 DevTools 中注册 "Beholder" 面板
chrome.devtools.panels.create('Beholder', '', 'panel.html', (panel) => {
  // 面板创建回调，无需额外处理
});
