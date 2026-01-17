*start

[cm]
[clearfix]
[start_keyconfig]

[mask time="250"  graphic="../bgimage/Loading.png" ]

[bg storage="room.jpg" time="100" ]
[bg storage="room.jpg" time="0" ]

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
[chara_face name="tesmo" face="funny" storage="chara/tesmo/finger-funny.png" ]
[chara_face name="tesmo" face="surprised" storage="chara/tesmo/finger-surprised.png" ]

[wait time="200" ]
[mask_off]

[playbgm loop="true" storage="game.m4a" cond="f.gamemode!='safe'"]

#
[chara_show name="tesmo" face="glad"  height="620" reflect="true" time="0" ]
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

[glink target="startbad" enterse="choose.mp3" text="A. 東中学校出身、涼宮ハルヒです。" ]
[glink target="startgreat"  enterse="choose.mp3" text="B. 東中出身涼宮ハルヒ、ただの人間には興味ありません。この中に、宇宙人・未来人・異世界人・超能力者がいたら、あたしのところに来なさい。以上！" ]
[glink target="startbad" enterse="choose.mp3" text="C. 東中出身涼宮ハルヒ、ただの人間には興味ありません。この中に、宇宙人・未来人・界隈人・超能力者がいたら、あたしのところに来なさい。以上！" ]

@s

*startgreat
@er
[playse storage="tada.mp3"]
#TesMo
[chara_mod name="tesmo" face="glad" ]
正解![p]
[chara_mod name="tesmo" face="normal" ]
平成中期のライトノベルなのに、どうして知っているんですか？[p]
まさか、この学校にはハルヒをよみやがる変人がいるのか...？(ブーメラン)[p]
実は、図書室にあるので、当時を知る人は当時を思い出して下しあ。[p]
@jump target="test"

*startbad
@er
;BSoDスキップ
;@jump target="toobad"
[layopt layer="message" visible="false"]
[hidemenubutton]
[pausebgm]
[chara_hide_all]
[screen_full]
[bg storage="../image/BSoD.png" time="0"]
[playse storage="bad.mp3" ]
@l 
[bg storage="room.jpg" time="0"]
[layopt layer="message" visible="true"]
[showmenubutton ]
[resumebgm]
[chara_show name="tesmo" height="620" reflect="true" ]
*toobad
#TesMo
[chara_mod name="tesmo" face="sad" ]
不正解![p]
[chara_mod name="tesmo" face="normal" ]
平成中期のライトノベルなので、わからないかもですね。[p]
図書室にあるので、ぜひ借りてみてください。[r][p]
[jump target="test" ]

*test
[chara_hide_all]
@er
#GameSystem
申し訳ないことに、このゲームは広報部門の少ない人材で制作を行っているため、問題数が非常に少なく、同じ問題が幾回も出る可能性があります。[p]
また、問題数が少ないこと、現在はまだ開発段階という理由で、これから先はループとなっております。[p]
現在の弊ゲームの仕様上、仕方のないことではありますので、どうか怒らないでください。[p]
[chara_show name="tesmo" height="620" reflect="true"]
#TesMo

*next
[chara_show name="tesmo" face="normal" ]
[chara_mod name="tesmo" face="normal" ]
[random max="3"]
[jump cond="f.RandomValue==0" target="haruhi1" ]
[jump cond="f.RandomValue==1" target="haruhi2" ]
[jump cond="f.RandomValue==3" target="bakemono1" ]
[jump cond="f.RandomValue==2" target="kino1" ]

@s

*haruhi1
[chara_mod name="tesmo" face="normal" ]
[ruby text="たに"]谷[ruby text="かわ" ]川 [ruby text="ながる" ]流 作、"[ruby text="すず"]涼[ruby text="みや" ]宮ハルヒの[ruby text="ゆう" ]憂[ruby text="うつ" ]鬱" からの出題です。[p]
[ruby text="なが" ]長[ruby text="と" ]門[ruby text="ゆ" ]有[ruby text="き" ]希とは何か。[l]正しいものを次の選択肢から選びなさい。[r]
[glink target="haruhi1great" enterse="choose.mp3" text="A. 対有機生命体コンタクト用ヒューマノイド・インターフェース" ]
[glink target="haruhi1bad"  enterse="choose.mp3" text="B. 対有機生命体襲撃用ヒューマノイド・ロボット" ]
[glink target="haruhi1bad" enterse="choose.mp3" text="C. 対有機生命体コンタクト用ヒューマノイド・ロボット" ]
@s

*haruhi1great
#TesMo
[chara_mod name="tesmo" face="glad" ]
[playse storage="tada.mp3"]
正解![r][l]
[chara_mod name="tesmo" face="normal" ]
おっ、[l]凄いですね。[r][l]
これも正解するとは。[p]
ハルヒ既読者の団とかできないかな...?[p]
[jump target="next"]

*haruhi1bad
#TesMo
[chara_mod name="tesmo" face="sad" ]
[playse storage="bad.mp3" ]
不正解![p]
[chara_mod name="tesmo" face="normal" ]
長門有希を知らぬ人間が、出てくる時代とは。[p]
時代の流れは速いものですね。[p]
@jump target="next"

*haruhi2
[chara_mod name="tesmo" face="normal" ]
[ruby text="たに"]谷[ruby text="かわ" ]川 [ruby text="ながる" ]流 作、"[ruby text="すず"]涼[ruby text="みや" ]宮ハルヒの[ruby text="ゆう" ]憂[ruby text="うつ" ]鬱" からの出題です。[p]
SOS団とは何か。[l]次の選択肢から正しいものを選んでください。[r]
[glink target="haruhi2bad" enterse="choose.mp3" text="A. 世界の不思議なものをみつけるための涼宮ハルヒの団" ]
[glink target="haruhi2badAlpha" enterse="choose.mp3" text="B. Security & Operating System 団" ]
[glink target="haruhi2great" enterse="choose.mp3" text="C. 世界を大いに盛り上げるための涼宮ハルヒの団" ]
@s

*haruhi2great
#TesMo
[chara_mod name="tesmo" face="glad" ]
[playse storage="tada.mp3" ]
正解![p]
[chara_mod name="tesmo" face="normal" ]
存在するはずの記憶が呼び戻されましたか？[p]
[chara_mod name="tesmo" face="glad" ]
世界をこれからも大いに盛り上げていただきたいですね。[p]
[jump target="next" ]

*haruhi2bad
#TesMo
[chara_mod name="tesmo" face="sad" ]
[playse storage="bad.mp3" ]
不正解![p]
[chara_mod name="tesmo" face="normal" ]
SOSじゃないですよ。[r][l]
[font color="0xFF0000"]S[resetfont]ekaino [font color="0xFF0000"]F[resetfont]ushigina mono wo mitsukeru tameno [font color="0xFF0000"]S[resetfont]uzumiya haruhi no Dan...[p]
[chara_mod name="tesmo" face="funny" ]
SFS団じゃないですか(笑)[p]
@jump target="next"

*haruhi2badAlpha
#TesMo
[chara_mod name="tesmo" face="sad" ]
[playse storage="bad.mp3" ]
不正解![p]
[chara_mod name="tesmo" face="normal" ]
SOS団と読めますが、SOS団は本当はちがうんですよ。[p]
[chara_mod name="tesmo" face="glad" ]
是非とも "[ruby text="すず"]涼[ruby text="みや" ]宮ハルヒの[ruby text="ゆう" ]憂[ruby text="うつ" ]鬱" 読んでみてくださいね。[p]
@jump target="next"

*kino1
[chara_mod name="tesmo" face="normal" ]
[ruby text="し"]時[ruby text="ぐ"]雨[ruby text="さわ"]沢 [ruby text="けい"]恵[ruby text="いち"]一 作、"キノの[ruby text="たび"]旅" からの出題です。[p]
シズ が連れている犬は何という名前か。[r]
[glink target="kino1great" enterse="choose.mp3" text="A. 陸" ]
[glink target="kino1bad"  enterse="choose.mp3" text="B. 海" ]
[glink target="kino1bad" enterse="choose.mp3" text="C. 空" ]
@s

*kino1great
[chara_mod name="tesmo" face="glad"  ]
[playse storage="tada.mp3"]
正解![p]
[chara_mod name="tesmo" face="surprised" ]
もしや、[l]あなたもキノを読んだことがある？[p]
キノ、[l]面白いですよね。[p]
@jump target="next"

*kino1bad
[chara_mod name="tesmo" face="sad" ]
[playse storage="bad.mp3" ]
不正解![p]
[chara_mod name="tesmo" face="glad" ]
キノの旅はすごく面白いので、是非とも読んでみてください。[r][l]
2巻以降の巻も図書室にあるので、ぜひ読んでみてください。[p]
@jump target="next"

*bakemono1
[chara_mod name="tesmo" face="normal" ]
[ruby text="にし" ]西[ruby text="お" ]尾 [ruby text="い" ]維[ruby text="しん" ]新 作、"[ruby text="ばけ" ]化[ruby text="もの" ]物[ruby text="がたり" ]語 上"からの出題です。[p]
[ruby text="せん" ]戦[ruby text="じょう" ]場ヶ[ruby text="はら" ]原ひたぎは、「あるもの」と出会って体重をなくしてしまいます。[r][l]
その「あるもの」とは何か。[r]
[glink target="bakemono1bad" enterse="choose.mp3" text="A. 紙" ]
[glink target="bakemono1bad" enterse="choose.mp3" text="B. 火事" ]
[glink target="bakemono1great" enterse="choose.mp3" text="C. 蟹" ]
@s

*bakemono1great
[chara_mod name="tesmo" face="glad" ]
[playse storage="tada.mp3"]
正解![p]
[chara_mod name="tesmo" face="normal" ]
化物語は人気作(だと思っている)ので、まあ余裕ですよね..[p]
化物語は上下巻構成ですが、どちらも大変面白いので、是非とも読んでみてくださいね。[p]
@jump target="next"

*bakemono1bad
[chara_mod name="tesmo" face="sad" ]
[playse storage="bad.mp3" ]
不正解![p]
[chara_mod name="tesmo" face="normal" ]
化物語はとんでもなく面白いので、絶対読んだほうがいいですよ。[p]
[ruby text="にし" ]西[ruby text="お" ]尾 [ruby text="い" ]維[ruby text="しん" ]新さんの本はだいたい面白いので、小説や文庫をよむ "はじめのいっぽ" にもいいかもしれません。[p]
@jump target="next"

*bakemono2

*ameku1
