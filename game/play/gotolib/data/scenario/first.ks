;一番最初に呼び出されるファイル

[title name="Let's go to the Library!　Now Booting..."]

[stop_keyconfig]


;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"

;ゲームで必ず必要な初期化処理はこのファイルに記述するのがオススメ

;メッセージボックスは非表示
@layopt layer="message" visible=false

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]

@dialog type="alert" text="このゲームでは音声が流れます。NSFWではありませんが電車内や図書室でやると後悔しますよ。音量設定をご確認しやがれください。"
@dialog type="alert" text="Web版において、OSやブラウザの設定によっては正常な状態でプレイすることができません。原因は判明しておりません。セキュリティで保護されていないコンテンツの許可をしていただけると、正常にプレイすることができると考えられます。ユーザ各々で対処をお願いします。"
@dialog type="confirm" target_cancel="cookie_cancel" text="Web版では、ゲームのセーブにCookieを用いる事があります。"
[bgmovie storage="UsingTyranoScript.mp4"]
@wait_bgmovie
@stop_bgmovie
[bgmovie storage="BoukaiKouhouSprash.mp4"]
@wait_bgmovie
@stop_bgmovie
[bg storage="warning.png" time="500" wait="true" ]
[wait time="1500" ]

@bg storage="Loading.png" time="0" wait="false"

;タイトル画面へ移動
@jump storage="title.ks"

*cookie_cancel
@wait time="500"
[close ask="true" ]
@wait time="250"
@jump














