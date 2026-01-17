*start

@stopbgm
[cm]
[clearfix]
[start_keyconfig]

[mask time="250"  graphic="../bgimage/Loading.png" ]

[bg storage="credit.png"]

;メニューボタンの表示
@showmenubutton

;メッセージウィンドウの設定
[position layer="message0" left=160 top=50 width=1000 height=600 page=fore visible=true]

;文字が表示される領域を調整
[position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]

;メッセージウィンドウの表示
@layopt layer=message0 visible=true

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=28 bold=true x=180 y=65]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]

[wait time="200" ]
[mask_off]

[playbgm loop="true" storage="credit.mp3" cond="f.gamemode!='safe'"]

#望海中学校_図書委員会_広報部門
使わせていただいた素材やソフトウェアです。[r][l]
BGM: MusMus, らき☆すた より。[r][l]
SE: Microsoft Windows(R) より。[r][l]
TesMo: VRoid Studioを使い作成、および撮影。[r][l]
画像: 一部GIMPを使用して自作。[l]一部Tyrano デフォルトを流用。[r][l]
一部フォント: IBM PCより。[r][l]
ゲームエンジン: Tyrano Script を使用。[r][l]
ゲームビルダー: Tyrano Studio を使用。[r][l]
テキストエディタ: Visual Studio Code を使用。[r][l]
ソースコード管理: Git, GitHub を使用。[r][l]
テスト環境: Windows 11[r][l]
[dialog type="confirm" text="タイトルに戻ります。よろしいですか?" storage="title.ks" ]
@s
