/*(C)opylight 望海中学校 図書委員会 広報部門(2025) All Rights Reserved.
※このページには、Template Party様のものを使用しているものがあります。*/

//Template Partyのパーツ

// スライドショー
$(function() {
    $('.slide7-parts').each(function() {
        var $this = $(this);
        var slides = $this.find('.slide-parts'); // クラス名を修正
        var slideCount = slides.length;
        var currentIndex = 0;

        // インジケータを表示する要素を取得
        var indicators = $this.find('.slide-indicators'); // クラス名は変更なし

        // スライドの数に応じたインジケータを生成
        for (var i = 0; i < slideCount; i++) {
            indicators.append('<span class="indicator" data-index="' + i + '"></span>');
        }

        // インジケータの初期状態を設定
        var indicatorElements = indicators.find('.indicator');
        indicatorElements.eq(currentIndex).addClass('active');

        // スライドの初期状態を設定
        slides.eq(currentIndex).css('opacity', 1).addClass('active');

        // インジケータをクリックしたときの動作を設定
        indicatorElements.on('click', function() {
            var clickedIndex = $(this).data('index');

            // 現在のスライドと同じ場合は何もしない
            if (clickedIndex === currentIndex) return;

            // スライドの切り替え
            slides.eq(currentIndex).css('opacity', 0).removeClass('active');
            slides.eq(clickedIndex).css('opacity', 1).addClass('active');

            // インジケータの更新
            indicatorElements.eq(currentIndex).removeClass('active');
            indicatorElements.eq(clickedIndex).addClass('active');

            // 現在のスライドを更新
            currentIndex = clickedIndex;
        });

        // 自動スライドのタイマー
        setInterval(function() {
            var nextIndex = (currentIndex + 1) % slideCount;

            // スライドの切り替え
            slides.eq(currentIndex).css('opacity', 0).removeClass('active');
            slides.eq(nextIndex).css('opacity', 1).addClass('active');

            // インジケータの更新
            indicatorElements.eq(currentIndex).removeClass('active');
            indicatorElements.eq(nextIndex).addClass('active');

            currentIndex = nextIndex;
        }, 5000); // 5秒ごとにスライドを切り替える
    });
});

//Template Party 終わり

//月刊図書のダウンロード
document.getElementById('2025-04-pdf').addEventListener('click', function() {
    var fileUrl = 'paperfile/第三号.pdf'; // ダウンロードするファイルのURL
    var fileName = '第三号.pdf'; // ダウンロードする際のファイル名

    var a = document.createElement('a');
    a.style.display = 'none';
    a.href = fileUrl;
    a.download = fileName;

    document.body.appendChild(a);
    a.click();
    document.body.removeChild(a);
});

document.getElementById('2024-11-pdf').addEventListener('click', function() {
    var fileUrl = 'paperfile/初号.pdf'; // ダウンロードするファイルのURL
    var fileName = '初号.pdf'; // ダウンロードする際のファイル名

    var a = document.createElement('a');
    a.style.display = 'none';
    a.href = fileUrl;
    a.download = fileName;

    document.body.appendChild(a);
    a.click();
    document.body.removeChild(a);
});

document.getElementById('2024-12-pdf').addEventListener('click', function() {
    var fileUrl = 'paperfile/初号.pdf'; // ダウンロードするファイルのURL
    var fileName = '第二号.pdf'; // ダウンロードする際のファイル名

    var a = document.createElement('a');
    a.style.display = 'none';
    a.href = fileUrl;
    a.download = fileName;

    document.body.appendChild(a);
    a.click();
    document.body.removeChild(a);
});

document.getElementById('2025-04-dpcx').addEventListener('click', function() {
    var fileUrl = 'paperfile/第三号.docx'; // ダウンロードするファイルのURL
    var fileName = '第三号.docx'; // ダウンロードする際のファイル名

    var a = document.createElement('a');
    a.style.display = 'none';
    a.href = fileUrl;
    a.download = fileName;

    document.body.appendChild(a);
    a.click();
    document.body.removeChild(a);
});

document.getElementById('2024-11-docx').addEventListener('click', function() {
    var fileUrl = 'paperfile/初号.docx'; // ダウンロードするファイルのURL
    var fileName = '初号.docx'; // ダウンロードする際のファイル名

    var a = document.createElement('a');
    a.style.display = 'none';
    a.href = fileUrl;
    a.download = fileName;

    document.body.appendChild(a);
    a.click();
    document.body.removeChild(a);
});

document.getElementById('2024-12-docx').addEventListener('click', function() {
    var fileUrl = 'paperfile/第二号.docx'; // ダウンロードするファイルのURL
    var fileName = '第二号.docx'; // ダウンロードする際のファイル名

    var a = document.createElement('a');
    a.style.display = 'none';
    a.href = fileUrl;
    a.download = fileName;

    document.body.appendChild(a);
    a.click();
    document.body.removeChild(a);
});

document.getElementById("ott-dl-link").addEventListener("click", function () {
    this.setAttribute("download", "template.ott");
});
