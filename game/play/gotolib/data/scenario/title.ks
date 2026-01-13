
[cm]

@title name="図書室へ行こう! - Ver. 1.0 Beta-3"
@clearstack
[bg storage="betatitle.png" time=500 wait="false"]
@playse storage="boot.wav"
@wait time = 3500

*start 

[playbgm storage="title.mp3" loop="true" ]
[button x=175 y=370 graphic="title/button_start.png" enterimg="title/button_start2.png"  target="gamestart" keyfocus="1"]
[button x=175 y=460 graphic="title/button_load.png" enterimg="title/button_load2.png" role="load" keyfocus="2"]
[button x=175 y=550 graphic="title/button_config.png" enterimg="title/button_config2.png" role="sleepgame" storage="config.ks" keyfocus="5"]

[s]

*gamestart
;一番最初のシナリオファイルへジャンプする
@stopbgm
@jump storage="scene1.ks"



