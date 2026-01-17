
[cm]

@title name="図書室へ行こう! - Ver. 1.0 Test Release"
@clearstack
[bg storage="title_test.png" time="500" wait="false"]
[playse storage="boot.mp3" cond="f.gamemode!='safe'"]
@wait time = 3500 cond="f.gamemode!='safe'"

*start 

[playbgm storage="title.mp3" loop="true" cond="f.gamemode!='safe'" ]
[button x=175 y=320 graphic="title/button_start.png" enterimg="title/button_start2.png"  target="gamestart" keyfocus="1"]
[button x=175 y=410 graphic="title/button_load.png" enterimg="title/button_load2.png" role="load" keyfocus="2"]
[button x=175 y=500 graphic="title/button_config.png" enterimg="title/button_config2.png" role="sleepgame" storage="config.ks" keyfocus="3"]
[button x=175 y=590 graphic="title/button_credit.png" enterimg="title/button_credit2.png" storage="credit.ks" keyfocus="4" ]

[s]

*gamestart
;一番最初のシナリオファイルへジャンプする
@stopbgm
@jump storage="scene1.ks"



