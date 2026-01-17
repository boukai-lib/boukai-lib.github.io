var LOCATIONS = [
    { id: 'l1', name: 'カウンター', description: 'ここで本の貸出・返却ができます。<br>うるさい委員は廊下で(言葉を用いて)殴りましょう。', left: 12, top: 55 },
    { id: 'l2', name: '新書', description: '回転する本棚があり、新書（のようなもの）が入っています。<br><small>ここにある本を読む人はいるのでしょうか...?</small>', left: 9.2, top: 8.5 },
    { id: 'l3', name: '大型本/SDGs', description: '大型の絵本や、SDGsに関する資料があります。<br>ただし、借りれるかは別である。', left: 33, top: 8.5 },
    { id: 'l4', name: '日本文学(単行本)', description: '日本文学のうち、単行本サイズのものがあります。<br>青い鳥文庫みたいな児童向け文庫もここにあったりします。"ワンピース"とか。', left: 65, top: 8.5 },
    { id: 'l5', name: '外<br>国<br>文<br>学<br><br>単<br>行<br>本', name_s: '外国文学(単行本)', description: '"ハリーポッター"とかの外国の文学がここにあります。ディズニーは別。', left: 96.75, top: 50 },
    { id: 'l6', name: '明石ブックリスト', description: '<a href=http://www.edi.akashi.hyogo.jp/kyoiku/iinkai/masterplan2/pdf/plan_data.pdf>明石ブックリスト</a>の本が置いてあります。<br><small>ここにある本を読む人はいるのでしょうか...?</small>', left: 96.75, top: 80 },
    { id: 'l7', name: '日本文学(文庫)', description: '日本文学のうち、文庫サイズのものが置いてあります。<br>単行本よりも、薄く、軽く、持ちやすいです。', left: 55, top: 94 },
    { id: 'l8', name: '外国文学(文庫)', description: '外国文学のうち、文庫サイズのものが置いてあります。<br>ディズニーはここ。', left: 33, top: 94 },
    { id: 'l9', name: '事典', description: '事典が置いてあります。日本語がわからない日本語話者の方はどうぞ。', left: 65, top: 22 },
    { id: 'l10', name: 'マンガ', description: 'マンガが置いてあります。漫画って言っても手塚治虫とかですね。', left: 80, top: 94 },
    { id: 'l11', name: '新<br>刊<br>・<br>人<br>気<br>作<br>・<br>映<br>像<br>化<br>作<br>品', name_s: '新刊・人気作・映像化作品', description: '新規入荷作品、人気作品、映像化（アニメ・実写）された本たちです。<br>"ｎ分後シリーズ"や"ソードアート・オンライン"、"薬屋のひとりごと"などはここです。', left: 2, top: 47 },
];
var map = document.getElementById('map');
if (!map)
    throw new Error('map element not found');
var currentPopup = null;
function createMarker(loc) {
    var btn = document.createElement('button');
    btn.className = 'marker';
    btn.type = 'button';
    btn.setAttribute('aria-haspopup', 'dialog');
    btn.setAttribute('aria-controls', "popup-".concat(loc.id));
    btn.style.left = "".concat(loc.left, "%");
    btn.style.top = "".concat(loc.top, "%");
    btn.innerHTML = loc.name;
    btn.addEventListener('click', function (e) {
        e.stopPropagation();
        showPopup(loc, btn);
    });
    map.appendChild(btn);
}
function showPopup(loc, anchor) {
    closePopup();
    var popup = document.createElement('div');
    popup.className = 'popup';
    popup.id = "popup-".concat(loc.id);
    popup.setAttribute('role', 'dialog');
    popup.setAttribute('aria-label', loc.name);
    var close = document.createElement('button');
    close.className = 'close';
    close.type = 'button';
    close.innerHTML = '✕';
    close.addEventListener('click', function (ev) { ev.stopPropagation(); closePopup(); });
    var title = document.createElement('h3');
    title.innerHTML = loc.name_s ? loc.name_s : loc.name;
    var p = document.createElement('p');
    p.innerHTML = loc.description;
    popup.appendChild(close);
    popup.appendChild(title);
    popup.appendChild(p);
    map.appendChild(popup);
    positionPopup(popup, anchor);
    currentPopup = popup;
    // focus management
    close.focus();
}
function positionPopup(popup, anchor) {
    var mapRect = map.getBoundingClientRect();
    var anchorRect = anchor.getBoundingClientRect();
    var popupRect = popup.getBoundingClientRect();
    // calculate desired position: above the anchor by default
    var left = anchor.offsetLeft - popupRect.width / 2 + anchor.offsetWidth / 2;
    var top = anchor.offsetTop - popupRect.height - 12;
    // keep within map bounds
    left = Math.max(8, Math.min(left, map.clientWidth - popupRect.width - 8));
    if (top < 8)
        top = anchor.offsetTop + anchor.offsetHeight + 12;
    popup.style.left = "".concat(left, "px");
    popup.style.top = "".concat(top, "px");
}
function closePopup() {
    if (currentPopup && currentPopup.parentElement) {
        currentPopup.parentElement.removeChild(currentPopup);
        currentPopup = null;
    }
}
// build markers from LOCATIONS
LOCATIONS.forEach(createMarker);
// close popup when clicking outside
document.addEventListener('click', function () { return closePopup(); });
document.addEventListener('keydown', function (e) { if (e.key === 'Escape')
    closePopup(); });
