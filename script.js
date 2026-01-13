/*(C)opylight 望海中学校 図書委員会 広報部門(2026) All Rights Reserved. */


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
