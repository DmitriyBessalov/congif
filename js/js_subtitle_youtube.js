// установить https://chrome.google.com/webstore/detail/custom-javascript-for-web/poakhlngfciodnhlhhgnaaelnpjljija
// И закинуть минифицированный код 1 строкой в расширение


function Sub_title() {
    console.log('Проверка');
    var link_a = document.querySelector('#container > yt-formatted-string');
    if (link_a){
        link_a.style.display='none';
    }
    var subtitle = document.querySelector('div.caption-window.ytp-caption-window-bottom');
    if (subtitle){
        console.log(subtitle.innerText);
        videotitle = document.querySelector('h1.title.style-scope.ytd-video-primary-info-renderer');
        videotitle.innerText=subtitle.innerText;
        
        subtitle.style.opacity=0;
        subtitle.addEventListener("DOMSubtreeModified", function() {
            console.log('Изменение');
            subtitle2 = document.querySelector('div.caption-window.ytp-caption-window-bottom');
            
            if (subtitle2){
                videotitle = document.querySelector('h1.title.style-scope.ytd-video-primary-info-renderer');
                videotitle.innerText=subtitle2.innerText;
            }else{
                console.log('Исчезло');
                setTimeout(Sub_title, 200);
            }
            
        })
    }else{
        console.log('Не найдено');
        setTimeout(Sub_title, 200);
    }
}
setTimeout(Sub_title, 2500);
