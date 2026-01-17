;一番最初に呼び出されるファイル

[title name="Let's go to the Library!　Now Booting..."]

[stop_keyconfig]

;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"

;ゲームで必ず必要な初期化処理はこのファイルに記述するのがオススメ

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]

;questions
[iscript]
    var CongQ = 0;
    const allquestions = 4;
[endscript]

;マクロ
[macro name="random" ]
    [iscript]
        var RandomMax=mp.max;
        f.RandomValue=Math.floor(Math.random() * mp.max);
    [endscript]
[endmacro]
[macro name="addcong" ]
    [iscript]
        var CongQ = CongQ + 1;
        if (CongQ == allquestions) {
            f.Conged = true;
        }
    [endscript]
[endmacro]

;初期化終わり

[start_keyconfig]
[font face="IBMVGA" effect="none" ][delay speed="0" ]
Starting gotolib[delay speed="250"]...[r]
[delay speed="10" ][wait time="400" ]
Choose Boot Mode.[r]
[link target="*normal" keyfocus="1" ]1. Normal Mode[endlink][r]
[link target="*safemode" keyfocus="2" ]2. Safe Mode[endlink][r]
[r]
This game often won't run on the iOS/iPadOS Safari browser.[r]
If you use Safari, we recommend choosing 'Safe Mode'[r](or using different browser.)
[resetdelay ][resetfont][s]
[stop_keyconfig]

*normal

;UserInterface
[bg storage="Loading.png" time="500" ]
[cm]
@layopt layer="message" visible=false
@dialog type="alert" text="このゲームでは音声が流れます。NSFWではありませんが電車内や図書室でやると後悔しますよ。音量設定をご確認しやがれください。"
@dialog type="alert" text="Web版において、OSやブラウザの設定によっては正常な状態でプレイすることができません。原因は判明しておりません。Chromium系ブラウザでは、セキュリティで保護されていないコンテンツの許可をしていただけると、正常にプレイすることができることが確認できております。iOS/iPadOS Safariはプレイ不可です。ユーザ各々で対処をお願いします。"
@dialog type="confirm" target_cancel="cookie_cancel" text="Web版では、ゲームのセーブにWeb Storageを用います。"
[bgmovie storage="BoukaiKouhouSprash.mp4" loop="false" ]
[wait time="5000" ]
[stop_bgmovie ]
[bg storage="warning.png" time="500" wait="true" ]
[wait time="2000" ]
@jump storage="title.ks"

;タイトル画面へ移動
*safemode
[cm]
@layopt layer="message" visible=false
[bg storage="Loading.png" time="500" ]
[iscript]
    f.gamemode = 'safe'
[endscript]
[wait time="200" ]
@jump storage="title.ks"

*cookie_cancel
@wait time="500"
[close ask="true" ]
@wait time="250"
@jump














