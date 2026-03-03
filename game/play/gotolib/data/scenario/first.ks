;一番最初に呼び出されるファイル

[title name="Let's go to the Library!　Now Booting..."]

[stop_keyconfig]

;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"

;ゲームで必ず必要な初期化処理はこのファイルに記述するのがオススメ

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]

[call storage="macro.ks" ]

;初期化終わり

[jump target="normal" ]
/*
[start_keyconfig]
[font face="IBMVGA" effect="none" color="0xc4c4c4" ][delay speed="0" ]
Starting gotolib[delay speed="250"]...[r]
[delay speed="10" ][wait time="400" ]
ブートモードを選択してください。[r]
[font color="0x000000"][mark size="5" color="0x000000" ][mark color="0xffffff" ]
[link target="normal" keyfocus="1" ]ノーマルモード[endlink][r]
[link target="safemode" keyfocus="2" ]セーフモード[endlink][r]
[r][font size="8pt" color="0xc4c4c4"][endmark ]
このゲームは、Safariでは正常に実行されない場合があります。[r]
もしも、Safariブラウザを使用してゲームをプレイしようとしている場合は、セーフモードでプレイしてください。[r](もしくは別のブラウザを使う。)[r]
Web版において、OSやブラウザの設定によっては正常な状態でプレイすることができません。[r]
原因は判明しておりません。[r]
Chromium系ブラウザでは、セキュリティで保護されていないコンテンツの許可をしていただけると、正常にプレイすることができることが確認できております。[r]
ユーザ各々で対処をお願いします。
[resetdelay ][resetfont][s]
[stop_keyconfig]
*/

*normal
;UserInterface
[bg storage="Loading.png" time="500" ]
[cm]
@layopt layer="message" visible=false

;for debug only
;[jump target="start" ]
[dialog type="alert" text="このゲームでは音声が流れます。NSFWではありませんが電車内や図書室でやると後悔しますよ。音量設定をご確認しやがれください。"]
[dialog type="alert" text="Web版にて、Safariブラウザではゲームが正常に動作しない問題が発生しております。別ブラウザを使用してプレイしてくださいませ。" ]
[bgmovie storage="BoukaiKouhouSprash.mp4" loop="false" ]
[wait time="5000" ]
[stop_bgmovie ]
[bg storage="warning.png" time="500" wait="true" ]

*start
[wait time="2000" ]
@jump storage="title.ks"

/*
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

*/
