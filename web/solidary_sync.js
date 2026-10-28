// 孤立 Sync 分析（判定逻辑对齐 internal/model/common/solidary_sync_event.go）
// Sync 后紧邻的下一个事件（同 trace 执行顺序）不是同 emitter 的 Swap/Mint/Burn → 孤立 Sync
// 依赖 capture_view.html 全局工具：buildParentMap / frameSigHtml / locateLink / addrLinks / esc / renderSig

const PAIR_TOPIC = {
    "0x1c411e9a96e071241c2f21f7726b17ae89e3cab4c78be50e062b03a9fffbbad1": "Sync",
    "0xd78ad95fa46c994b6551d0da85fc275fe613ce37657fb8d5e3d130840159d822": "Swap",
    "0x4c209b5fc8ad50758f13e2e1088ba56a560dff690a1c6fef26394f4c03821c4f": "Mint",
    "0xdccd412f0b1252819cb1fd330b93224ca42612892bb3f4f789976e6d81936496": "Burn"
};

function evTopic0(n) {
    const t = (n.nodeData && n.nodeData.topics && n.nodeData.topics[0]) || "";
    return String(t).toLowerCase();
}
function evAddr(n) {
    return String((n.nodeData && (n.nodeData.contract || n.nodeData.caller)) || "").toLowerCase();
}
function evName(n) {
    const dec = (n.nodeData && n.nodeData.decoded) || {};
    return dec.signature || dec.name || PAIR_TOPIC[evTopic0(n)] || "未知事件";
}

const TRANSFER_TOPIC = "0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef";

// 取 Transfer 的 from/to（优先 decoded 参数，退回 indexed topics）
function evTransferParties(n) {
    const nd = n.nodeData || {};
    const dec = nd.decoded || {};
    const args = dec.argsIn || dec.args || [];
    const pick = (name) => {
        const a = args.find(x => x && String(x.name || "").toLowerCase() === name);
        return a && typeof a.value === "string" ? a.value : "";
    };
    let from = pick("from");
    let to = pick("to");
    const topics = nd.topics || [];
    if (!from && topics[1]) from = "0x" + String(topics[1]).slice(-40);
    if (!to && topics[2]) to = "0x" + String(topics[2]).slice(-40);
    return { from: String(from).toLowerCase(), to: String(to).toLowerCase() };
}

function evTransferValue(n) {
    const dec = (n.nodeData && n.nodeData.decoded) || {};
    const args = dec.argsIn || dec.args || [];
    const a = args.find(x => x && ["value", "amount", "wad"].includes(String(x.name || "").toLowerCase()));
    return a && a.value !== undefined && a.value !== null ? String(a.value) : "";
}

function findTreeNode(list, id) {
    for (const t of (list || [])) {
        if (String(t.id) === String(id)) return t;
        const r = findTreeNode(t.children || [], id);
        if (r) return r;
    }
    return null;
}

function collectSubtreeIds(node, out) {
    out.add(String(node.id));
    for (const c of (node.children || [])) collectSubtreeIds(c, out);
    return out;
}

// 沿树向上找发出事件的调用帧（nodeType=1 且 callee 非空），取最近两帧：所在函数、直接 caller
function enclosingFrames(trace, parentOf, byId, eventId) {
    const frames = [];
    let pid = parentOf.get(eventId);
    while (pid !== undefined && frames.length < 2) {
        const info = byId.get(pid);
        const nd = (info && info.nodeData) || {};
        if (info && info.nodeType === 1 && nd.callee) {
            frames.push(info);
            if (frames.length === 2) break;
        }
        pid = parentOf.get(pid);
    }
    return frames;
}

function findSolidarySyncs(trace) {
    const infos = trace.nodeInfos || [];
    const byId = new Map(infos.map(n => [n.id, n]));
    const orderById = new Map(infos.map((n, i) => [String(n.id), i]));
    const parentOf = buildParentMap(trace);
    const events = infos.filter(n => n.nodeType === 2); // nodeInfos 数组顺序即执行顺序
    const out = [];
    events.forEach((n, k) => {
        if (PAIR_TOPIC[evTopic0(n)] !== "Sync") return;
        const nx = events[k + 1] || null;
        let solidary = true;
        if (nx && evAddr(nx) === evAddr(n) &&
            ["Swap", "Mint", "Burn"].includes(PAIR_TOPIC[evTopic0(nx)])) {
            solidary = false;
        }
        if (solidary) {
            const frames = enclosingFrames(trace, parentOf, byId, n.id);
            out.push({
                sync: n,
                next: nx,
                frames,
                transfers: findTransfersBeforeSync(trace, events, orderById, n, frames[1])
            });
        }
    });
    return out;
}

// 直接 caller 帧的子树内、Sync 之前、from/to 为 Sync 发出地址的 Transfer 事件
function findTransfersBeforeSync(trace, events, orderById, syncEvent, callerFrame) {
    if (!callerFrame) return [];
    const treeNode = findTreeNode(trace.trace, callerFrame.id);
    if (!treeNode) return [];
    const scopeIds = collectSubtreeIds(treeNode, new Set());
    const pairAddr = String((syncEvent.nodeData && syncEvent.nodeData.contract) || "").toLowerCase();
    const syncIdx = orderById.get(String(syncEvent.id));
    const found = [];
    for (const ev of events) {
        if (orderById.get(String(ev.id)) >= syncIdx) break; // events 按执行顺序，后面的必然更晚
        if (!scopeIds.has(String(ev.id))) continue;
        if (evTopic0(ev) !== TRANSFER_TOPIC) continue;
        const { from, to } = evTransferParties(ev);
        if ((from && from === pairAddr) || (to && to === pairAddr)) found.push(ev);
    }
    return found;
}

function renderSolidary(found, labelMap) {
    if (!found.length) {
        return `<div class="sol-none">未发现孤立 Sync：所有 Sync 后均紧跟同地址 Swap/Mint/Burn。</div>`;
    }
    return found.map((f, i) => {
        const pair = (f.sync.nodeData && f.sync.nodeData.contract) || "";
        const [enc, caller] = f.frames;
        const encNd = (enc && enc.nodeData) || {};
        const callerNd = (caller && caller.nodeData) || {};
        let html = `<div class="sol-card">
            <div class="sol-title">孤立 Sync #${i + 1} · 事件 ${locateLink(2, f.sync.id)}</div>
            <div class="sol-row"><span class="k">Sync 发出地址</span><span>${addrLinks(pair, labelMap)}</span></div>`;
        if (enc) {
            html += `<div class="sol-row"><span class="k">Sync 所在函数</span>
                <span style="color:#9254de;font-weight:600;">${frameSigHtml(enc)}</span>
                <span>${addrLinks(encNd.callee, labelMap)}</span>${locateLink(1, enc.id)}</div>`;
        } else {
            html += `<div class="sol-row"><span class="k">Sync 所在函数</span><span class="sol-next">未在 trace 树中找到调用帧</span></div>`;
        }
        if (caller) {
            html += `<div class="sol-row"><span class="k">直接 caller</span>
                <span style="color:#9254de;font-weight:600;">${frameSigHtml(caller)}</span>
                <span>${addrLinks(callerNd.callee, labelMap)}</span>${locateLink(1, caller.id)}</div>`;
        } else {
            html += `<div class="sol-row"><span class="k">直接 caller</span>
                <span class="sol-next">入口交易</span></div>`;
        }
        if (caller && f.transfers && f.transfers.length) {
            f.transfers.forEach(tr => {
                const trNd = tr.nodeData || {};
                const token = trNd.contract || "";
                const parties = evTransferParties(tr);
                const val = evTransferValue(tr);
                html += `<div class="sol-row"><span class="k">Sync 前 Transfer</span>
                    <span class="sol-next">${addrLinks(token, labelMap)} ${addrLinks(parties.from, labelMap)} → ${addrLinks(parties.to, labelMap)}${val ? ` · <span class="value-tag">${esc(val)}</span>` : ""}${locateLink(2, tr.id)}</span></div>`;
            });
        } else if (caller) {
            html += `<div class="sol-row"><span class="k">Sync 前 Transfer</span>
                <span class="sol-next">直接 caller 下、Sync 之前未发现 from/to 为 Sync 发出地址的 Transfer</span></div>`;
        }
        if (f.next) {
            const nextAddr = (f.next.nodeData && f.next.nodeData.contract) || "";
            html += `<div class="sol-row"><span class="k">下一事件</span>
                <span class="sol-next">${esc(evName(f.next))} @ ${addrLinks(nextAddr, labelMap)}
                （非同地址 Swap/Mint/Burn，故判定为孤立）${locateLink(2, f.next.id)}</span></div>`;
        } else {
            html += `<div class="sol-row"><span class="k">下一事件</span><span class="sol-next">无（Sync 为 trace 最后一个事件）</span></div>`;
        }
        return html + `</div>`;
    }).join("");
}

function runSolidary() {
    const panel = document.getElementById("solidaryPanel");
    panel.style.display = "block";
    if (!window.gCurrent || !window.gCurrent.trace) {
        panel.innerHTML = `<div class="sol-none" style="background:#fef0f0;border-color:#fbc4c4;color:#f56c6c;">请先加载一条 trace capture。</div>`;
        return;
    }
    try {
        const found = findSolidarySyncs(window.gCurrent.trace);
        panel.innerHTML = `<div class="hint" style="margin-bottom:8px;">发现 <b>${found.length}</b> 个孤立 Sync（判定：Sync 后紧邻事件非同 emitter 的 Swap/Mint/Burn，对齐 solidary_sync_event 收集逻辑）</div>`
            + renderSolidary(found, window.gCurrent.labelMap);
        panel.scrollIntoView({ behavior: "smooth", block: "start" });
    } catch (err) {
        panel.innerHTML = `<div class="sol-none" style="background:#fef0f0;border-color:#fbc4c4;color:#f56c6c;">分析失败：${esc(err.message)}</div>`;
    }
}
