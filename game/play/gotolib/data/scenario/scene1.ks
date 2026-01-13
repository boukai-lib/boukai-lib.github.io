*start

[cm  ]
[clearfix]
[start_keyconfig]

[iscript]
let haruhi1 = ""
let kino1 = ""
let bakemono1 = ""
let ameku1 = ""
[endscript]

[bg storage="room.jpg" time="100"]
[bg storage="room.jpg" time="0"]

;メニューボタンの表示
@showmenubutton

;メッセージウィンドウの設定
[position layer="message0" left=160 top=500 width=1000 height=200 page=fore visible=true]

;文字が表示される領域を調整
[position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]


;メッセージウィンドウの表示
@layopt layer=message0 visible=true

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=28 bold=true x=180 y=510]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]

;このゲームで登場するキャラクターを宣言
;TesMo
[chara_new  name="tesmo" storage="chara/tesmo/finger.png" jname="TesMo"  ]
;キャラクターの表情登録
[chara_face name="tesmo" face="normal" storage="chara/tesmo/finger.png" ]
[chara_face name="tesmo" face="glad" storage="chara/tesmo/finger-glad.png"  ]
[chara_face name="tesmo" face="sad" storage="chara/tesmo/finger-sad.png" ]

[chara_show name="tesmo" face="glad"  height="620" reflect="true" time="0" ]

[playbgm loop="true" storage="game.m4a" ]

#
Welcome to the game![p]
[chara_mod name="tesmo" face="normal" ]
"図書室へ行こう!" へようこそ![p]

#TesMo
私の名前はTesMo。[l][r]このゲームの案内人です。[p]
このゲームは、図書室へ実際に行って、[l]本を借り、[l]その本を読んでいただき、[l]その本から読み取った情報でクイズに答えてもらうというゲームです！[p]

早速ですが、一つ問題を解いてみましょう。[p]
[ruby text="たに"]谷[ruby text="かわ" ]川 [ruby text="ながる" ]流 作、"[ruby text="すず"]涼[ruby text="みや" ]宮ハルヒの[ruby text="ゆう" ]憂[ruby text="うつ" ]鬱" からの出題です。[p]
クラスの自己紹介シーンにて、涼宮ハルヒが言ったセリフを次の中から選び、選択肢をクリックしなさい。[r][l]
ちなみに、電子書籍の試し読み機能を使えば答えがわかります。

[glink target="startbad" enterse="choose.wav" text="A. 東中学校出身、涼宮ハルヒです。" ]
[glink target="startgreat"  enterse="choose.wav" text="B. 東中出身涼宮ハルヒ、ただの人間には興味ありません。この中に、宇宙人・未来人・異世界人・超能力者がいたら、あたしのところに来なさい。以上！" ]
[glink target="startbad" enterse="choose.wav" text="C. 東中出身涼宮ハルヒ、ただの人間には興味ありません。この中に、宇宙人・未来人・界隈人・超能力者がいたら、あたしのところに来なさい。以上！" ]

@s

*startgreat
@er
[playse storage="tada.wav"]
#TesMo
[chara_mod name="tesmo" face="glad" ]
正解![p]
[chara_mod name="tesmo" face="normal" ]
平成中期のライトノベルなのに、どうして知っているんですか？[p]
まさか、この学校にはハルヒをよみやがる変人がいるのか...？(ブーメラン)[p]
実は、図書室にあるので、当時を知る人は当時を思い出して下しあ。[p]
@jump target="beta"

*startbad
@er
;BSoDスキップ
;@jump target="toobad"
@layopt layer="message" visible=false
[hidemenubutton]
@pausebgm
@chara_hide_all
@screen_full
[bg storage="../image/BSoD.png" time="0"]
[playse storage="bad.wav" ]
@l 
[bg storage="room.jpg" time="0"]
@layopt layer="message" visible="true"
[showmenubutton ]
@resumebgm
[chara_show name="tesmo" height="620" reflect="true" ]
*toobad
#TesMo
[chara_mod name="tesmo" face="sad" ]
不正解![p]
[chara_mod name="tesmo" face="normal" ]
平成中期のライトノベルなので、わからないかもですね。[p]
図書室にあるので、ぜひ借りてみてください。[r][p]
@jump target="beta"

*beta
@chara_hide_all
@er
#GAME_SYSTEM
申し訳ないことに、このｹﾞｰﾑはﾍﾞｰﾀ版であることの定めか、ｺｺから先は、ｹﾞｰﾑの未完成を要因とするﾙｰﾌﾟとなります。[r][l]
正規ﾘﾘｰｽをお待ちください。[p]
@chara_show name="tesmo" height="620" reflect="true"

*next
@er
#TesMo
次の問題は、あなたが次の選択肢から選んだ本から出題しますので、選択肢のいずれかを選択してください。
[glink text="涼宮ハルヒの憂鬱" target="haruhi1"]
[glink text="キノの旅 (1巻)" target="kino1"]
[glink text="化物語 上" target="bakemono1"]
;[glink text="天久鷹央の推理カルテ (1巻)" target="ameku1"]

@s

*haruhi1
[ruby text="たに"]谷[ruby text="かわ" ]川 [ruby text="ながる" ]流 作、"[ruby text="すず"]涼[ruby text="みや" ]宮ハルヒの[ruby text="ゆう" ]憂[ruby text="うつ" ]鬱" からの出題です。[p]
長門有希とは何か。[l]正しいものを次の選択肢から選びなさい。[r]
[glink target="haruhi1great" enterse="choose.wav" text="A. 対有機生命体コンタクト用ヒューマノイド・インターフェース" ]
[glink target="haruhi1bad"  enterse="choose.wav" text="B. 対有機生命体襲撃用ヒューマノイド・ロボット" ]
[glink target="haruhi1bad" enterse="choose.wav" text="C. 対有機生命体コンタクト用ヒューマノイド・ロボット" ]
@s

*haruhi1great
#TesMo
[playse storage="tada.wav"]
正解![r][l]
おっ、[l]凄いですね。[r][l]
これも正解するとは。[p]
もしやあなたは、長門は俺の嫁とかいうタイプなんじゃないですか？[p]
@jump target="next"

*haruhi1bad
#TesMo
[playse storage="bad.wav" ]
不正解![p]
ああ、[l]悲しかな。[r][l]
長門有希を知らぬ人間が、出てくる時代とは。[p]
時代の流れは速いもの也。[p]
@jump target="next"

*kino1
[ruby text="し"]時[ruby text="ぐ"]雨[ruby text="さわ"]沢 [ruby text="けい"]恵[ruby text="いち"]一 作、"キノの[ruby text="たび"]旅" からの出題です。[p]
シズ が連れている犬は何という名前か。[r]
[glink target="kino1great" enterse="choose.wav" text="A. 陸" ]
[glink target="kino1bad"  enterse="choose.wav" text="B. 海" ]
[glink target="kino1bad" enterse="choose.wav" text="C. 空" ]
@s

*kino1great
[playse storage="tada.wav"]
正解![p]
もしや、[l]あなたもキノを読んだことがある？[p]
キノ、[l]面白いですよね。[p]
@jump target="next"

*kino1bad
[playse storage="bad.wav" ]
不正解![p]
キノの旅はすごく面白いので、是非とも読んでみてください。[r][l]
2巻以降の巻も図書室にあるので、ぜひ読んでみてください。[p]
@jump target="next"

*bakemono1
[ruby text="にし" ]西[ruby text="お" ]尾 [ruby text="い" ]維[ruby text="しん" ]新 作、"[ruby text="ばけ" ]化[ruby text="もの" ]物[ruby text="がたり" ]語 上"からの出題です。[p]
[ruby text="せん" ]戦[ruby text="じょう" ]場ヶ[ruby text="はら" ]原ひたぎは、「あるもの」と出会って体重をなくしてしまいます。[r][l]
その「あるもの」とは何か。[r]
[glink target="bakemono1bad" enterse="choose.wav" text="A. 紙" ]
[glink target="bakemono1bad" enterse="choose.wav" text="B. 火事" ]
[glink target="bakemono1great" enterse="choose.wav" text="C. 蟹" ]
@s

*bakemono1great
[playse storage="tada.wav"]
正解![p]
化物語は人気作(だと思っている)ので、まあ余裕ですよね..[p]
なぜか図書室には、化物語の続きの巻たる"傷物語"がないらしいのです。(2025/12時点で。)[p]
傷物語を図書室においてもらうために本のリクエストで組織票をぶち込みましょう！(冗談)[p]
@jump target="next"

*bakemono1bad
[playse storage="bad.wav" ]
不正解![p]
化物語はとんでもなく面白いので、絶対読んだほうがいいですよ。[p]
[ruby text="にし" ]西[ruby text="お" ]尾 [ruby text="い" ]維[ruby text="しん" ]新さんの本はだいたい面白いので、小説や文庫をよむ "はじめのいっぽ" にもいいかもしれません。
@jump target="next"

*ameku1
