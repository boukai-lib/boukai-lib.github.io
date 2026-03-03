[iscript]
    f.haruhi1 = false;
    f.haruhi2 = false;
    f.bakemono1 = false;
    f.kino1 = false;
    f.shojofuju1 = false;
    const allquestions = 5;
    f.GameSystem = "../image/link.png"
    f.haruhi = "https://m.media-amazon.com/images/I/71iZkI+3vdL._AC_UF1000,1000_QL80_.jpg";
    f.kino = "https://m.media-amazon.com/images/I/61Y0HpFQFQL.jpg";
    f.bakemono = "https://m.media-amazon.com/images/I/81L9Gme-x+L._AC_UF1000,1000_QL80_.jpg";
    f.shojofuju = "https://m.media-amazon.com/images/I/51tx9IkZlYL._AC_UF1000,1000_QL80_.jpg";
[endscript]

[macro name="random" ]
    [iscript]
        let RandomMax=mp.max;
        f.RandomValue=Math.floor(Math.random() * mp.max);
    [endscript]
[endmacro]
[macro name="bookimg" ]
    [image layer="1"  storage=%book|../image/imgNull.png height="500" left="750" time=%time|0 ]
[endmacro]
[macro name="playgamebgm" ]
    [random max="15" ]
    [iscript]
        f.bgmfilename = "game" + f.RandomValue + ".mp3";
    [endscript ]
    [playbgm storage="&f.bgmfilename" ]
[endmacro]
[macro name="nextgame" ]
    [random max="5"]
    [jump cond="f.RandomValue==0;f.haruhi1==false" storage="scene1.ks" target="haruhi1" ]
    [jump cond="f.RandomValue==1;f.haruhi2==false" storage="scene1.ks" target="haruhi2" ]
    [jump cond="f.RandomValue==2;f.bakemono1==false" storage="scene1.ks" target="bakemono1" ]
    [jump cond="f.RandomValue==3;f.kino1==false" storage="scene1.ks" target="kino1" ]
    [jump cond="f.RandomValue==4;f.shojofuju1==false" storage="scene1.ks" target="shojofuju1" ]
    [jump storage="ending.ks"]
[endmacro]

[return ]