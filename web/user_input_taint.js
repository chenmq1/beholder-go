// 用户输入调用分析（callee 地址 + selector 沿调用栈 calldata 向上溯源）
// 依赖 capture_view.html 全局工具：buildParentMap / frameSigHtml / locateLink / addrLinks / esc
function hexNo0x(s) { return String(s || "").toLowerCase().replace("0x", ""); }

// 判断 frameId 是否为交易入口帧：其父为合成根节点（depth=-1，caller 与 calldata 均为空）或不存在
function isEntryFrame(frameId, parentOf, byId) {
    const pid = parentOf.get(frameId);
    if (pid === undefined) return true;
    const p = byId.get(pid);
    if (!p) return true;
    const nd = p.nodeData || {};
    return !nd.caller && !nd.calldata;
}

function findUserInputCalls(trace) {
    const infos = trace.nodeInfos || [];
    const byId = new Map(infos.map(n => [n.id, n]));
    const parentOf = buildParentMap(trace);
    const calls = infos.filter(n => n.nodeType === 1 && n.nodeData && n.nodeData.callee);
    const results = [];
    for (const c of calls) {
        const a = hexNo0x(c.nodeData.callee);
        const s = hexNo0x(c.nodeData.selector);
        if (!a) continue;
        const chain = [];
        let missFrame = null;
        let pid = parentOf.get(c.id);
        while (pid !== undefined) {
            const p = byId.get(pid);
            const cd = hexNo0x(p && p.nodeData && p.nodeData.calldata);
            const hitA = cd.includes(a);
            const hasSel = !!s;
            const hitS = hasSel ? cd.includes(s) : true;
            if (hitA && hitS) {
                chain.push({ frame: p, hitA, hasSel, hitS });
                pid = parentOf.get(pid);
            } else {
                missFrame = p || null;
                break;
            }
        }
        if (chain.length) {
            const top = chain[chain.length - 1].frame;
            results.push({ start: c, chain, missFrame, reachedEntry: isEntryFrame(top.id, parentOf, byId) });
        }
    }
    results.sort((x, y) => (y.reachedEntry - x.reachedEntry) || (y.chain.length - x.chain.length));
    return { total: calls.length, results };
}

function renderTaint(r, labelMap) {
    if (!r.results.length) {
        return `<div class="sol-none">扫描 ${r.total} 个 CALL 节点，未发现 callee 地址与 selector 同时出现在任一父帧 calldata 中的调用（无用户输入驱动的内部调用）。</div>`;
    }
    const reached = r.results.filter(x => x.reachedEntry).length;
    let html = `<div class="hint" style="margin-bottom:8px;">扫描 ${r.total} 个 CALL 节点，命中 ${r.results.length} 个，其中 <b style="color:#529b2e;">${reached}</b> 个传播到交易入口 calldata（用户输入）</div>`;
    html += r.results.map((x, i) => {
        const nd = x.start.nodeData;
        let h = `<div class="sol-card">
            <div class="sol-title" style="color:#722ed1;">用户输入调用 #${i + 1} · 传播 ${x.chain.length} 层
                <span class="taint-badge ${x.reachedEntry ? "hit" : "miss"}">${x.reachedEntry ? "到达交易输入" : "未到入口"}</span></div>
            <div class="sol-row"><span class="k">起点调用</span>
                <span style="color:#9254de;font-weight:600;">${frameSigHtml(x.start)}</span>
                <span>${addrLinks(nd.callee, labelMap)}</span>${locateLink(1, x.start.id)}</div>`;
        x.chain.forEach((it, lv) => {
            const fnd = (it.frame.nodeData || {});
            h += `<div class="sol-row"><span class="k">上溯 ${lv + 1} 层</span>
                <span style="color:#9254de;font-weight:600;">${frameSigHtml(it.frame)}</span>
                <span>${addrLinks(fnd.callee, labelMap)}</span>
                <span class="taint-token">地址 ✓</span>${it.hasSel ? `<span class="taint-token sel">selector ${it.hitS ? "✓" : "✗"}</span>` : ""}
                ${locateLink(1, it.frame.id)}</div>`;
        });
        if (!x.reachedEntry && x.missFrame) {
            const mnd = (x.missFrame.nodeData || {});
            h += `<div class="sol-row"><span class="k">传播中断于</span>
                <span class="sol-next">${frameSigHtml(x.missFrame)} ${mnd.callee ? addrLinks(mnd.callee, labelMap) : ""}（其 calldata 不再同时包含地址与 selector）${locateLink(1, x.missFrame.id)}</span></div>`;
        }
        return h + `</div>`;
    }).join("");
    return html;
}

function runTaint() {
    const panel = document.getElementById("taintPanel");
    panel.style.display = "block";
    if (!window.gCurrent || !window.gCurrent.trace) {
        panel.innerHTML = `<div class="sol-none" style="background:#fef0f0;border-color:#fbc4c4;color:#f56c6c;">请先加载一条 trace capture。</div>`;
        return;
    }
    try {
        const r = findUserInputCalls(window.gCurrent.trace);
        panel.innerHTML = renderTaint(r, window.gCurrent.labelMap);
        panel.scrollIntoView({ behavior: "smooth", block: "start" });
    } catch (err) {
        panel.innerHTML = `<div class="sol-none" style="background:#fef0f0;border-color:#fbc4c4;color:#f56c6c;">分析失败：${esc(err.message)}</div>`;
    }
}
