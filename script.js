var element = document.getElementById('gotolib-pw');
var IsHidden = 1;
var IsDebug = false;
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
function updateElementText() {
    if (element !== null) {
        if (IsHidden === 0) {
            element.textContent = '*******';
            IsHidden = 1;
            if (IsDebug) {
                console.log("IsHidden: " + IsHidden);
            }
        }
        else if (IsHidden === 1) {
            element.textContent = 'gotolib';
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
