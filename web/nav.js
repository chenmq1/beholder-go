// web/nav.js — 全局顶部菜单数据与渲染函数
//
// 各 HTML 页面把原 <nav class="top">...7 行 <a>...</nav> 块替换为：
//   <nav class="top" data-active="/当前页路径"></nav>
//   <script src="/web/nav.js"></script>
//
// 加新页面只需在 NAV_ITEMS 数组中追加一项，无需改各 HTML。
const NAV_ITEMS = [
    { href: "/approval",             label: "即时 Approval" },
    { href: "/event-query",          label: "通用事件查询" },
    { href: "/pair-sync-burn",       label: "Pair·Sync·Burn" },
    { href: "/burn-events",          label: "Burn Events" },
    { href: "/solidary-sync-events", label: "Solidary Sync" },
    { href: "/solidary-burn-cross",  label: "Sync × Burn Old" },
    { href: "/send-event",           label: "发送任务" },
    { href: "/watchlist",            label: "函数监控" },
];

function renderNav(navEl) {
    if (!navEl) return;
    const active = navEl.dataset.active;
    navEl.innerHTML = NAV_ITEMS.map(function (it) {
        const cls = it.href === active ? ' class="active"' : "";
        return `<a href="${it.href}"${cls}>${it.label}</a>`;
    }).join("");
}

document.addEventListener("DOMContentLoaded", function () {
    document.querySelectorAll("nav.top[data-active]").forEach(renderNav);
});
