//変数宣言・定義
var gotolibPwElem = document.getElementById('gotolib-pw');
var RansuiElem = document.getElementById('RansuiArea');
var RansuiOutElem = document.getElementById('RansuiOutput');
var IsHidden = 1;
var IsDebug = false;
var RansuiBooted;
var RansuiOutput = [
    { result: 1, output: '涼宮ハルヒの憂鬱' },
    { result: 2, output: '化物語 上' },
];
function debugmode() {
    if (IsDebug) {
        IsDebug = false;
        console.log("デバッグモードが無効になりました。");
    }
    else if (!IsDebug) {
        IsDebug = true;
        console.log("デバッグモードが有効になりました。");
    }
    else {
        console.error('エラー: 無効な値です。 ErrorID: BkaiWebError(InvalidValue_debugmode-001)');
    }
}
debugmode();
function updateElementText() {
    if (gotolibPwElem !== null) {
        if (IsHidden === 0) {
            gotolibPwElem.textContent = '*******';
            IsHidden = 1;
            if (IsDebug) {
                console.log("IsHidden: " + IsHidden);
            }
        }
        else if (IsHidden === 1) {
            gotolibPwElem.textContent = 'gotolib';
            IsHidden = 0;
            if (IsDebug) {
                console.log("IsHidden: " + IsHidden);
            }
        }
        else {
            console.error('エラー: 無効な値です。 ErrorID: BkaiWebError(InvalidValue_gotolib-002)');
        }
    }
    else {
        console.error('エラー: 要素が見つかりません。 ErrorID: BkaiWebError(MissingElement_gotolib-001)');
    }
}
function BootRansui() {
    if (RansuiElem) {
        RansuiElem.innerHTML = '<embed src="./apps/RanSui/index.html" width=600px height=300px />';
        RansuiBooted = 1;
        if (IsDebug) {
            console.debug("乱推がブートしました。これより、配列の宣言と定義に入ります。");
        }
    }
    else {
        console.error('エラー: 要素が見つかりません。 ErrorID: BkaiWebError(MissingElement_Ransui-001)');
    }
}
function Ransui(List) {
    var RansuiMaxValue = 2;
    var RansuiResult;
    var i0 = 0;
    var i1 = 0;
    var io = 0;
    var is = 0;
    for (var i = 0; i === 1000; i++) {
        RansuiResult = Math.round(Math.random() * RansuiMaxValue);
        if (RansuiResult === 0) {
            RansuiResult = Math.round((1 + Math.random()));
        }
        if (IsDebug) {
            console.debug("抽選結果: ", RansuiResult);
        }
        is + 1;
        console.log("Hi");
        if (RansuiResult === 0) {
            i0 + 1;
        }
        else if (RansuiResult === 1) {
            i1 + 1;
        }
        else {
            io + 1;
        }
        if (is === 1000) {
            var p0 = i0 / 1000;
            var p1 = i1 / 1000;
            var po = io / 1000;
            console.log("po:", p0, "p1:", p1, "po:", po);
        }
        else {
            console.error("1000回はしっていません。");
        }
    }
}
