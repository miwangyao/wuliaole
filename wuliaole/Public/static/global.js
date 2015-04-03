window.WH = window.WH || {};
window.WH.Global = window.WH.Global || {};
window.WH.Global.config = {
    accountUrl:'http://account.wh.silkcloud.cn/account/basic-info/',
    loginText:"注册/登录",
    loginUrl:"http://account.wh.silkcloud.cn/auth/login/",
    customBuiduUrl:"http://www.baidu.com/s?ie=utf-8&wd=",
    customSiteUrl:"http://www.silkcloud.cn",
    footerHTML : (function(){/*
     <div class="g-footer">
     <div class="g-footer__wrapper">
     <div class="g-footer__wrapper--bottom">
     <div class="g-footer__copyright">Copyright © 2014 无聊了有限公司. 沪ICP备15012636号</div>    
 <div class="g-footer__link">
     <a href="mailto:yaomiwang@qq.com">联系我们</a>
     </div>
     </div>
     </div>
     </div>
     */}).toString().replace(/^.+?\*|\\(?=\/)|\*.+?$/gi, ""),
    headerHTML : (function(){/*
     <div class="g-header">
     <div class="g-header__logo"><a href="/"></a></div>

     <div class="g-header__action">
     <div class="g-header__action--link">

     </div>
     </div>
     </div>
     <div class="clearfix"></div>
     */}).toString().replace(/^.+?\*|\\(?=\/)|\*.+?$/gi, "")
};
window.WH.Global.getCookie = function(objName){//获取指定名称的cookie的值
    var arrStr = document.cookie.split("; ");
    for(var i = 0;i < arrStr.length;i ++){
        var temp = arrStr[i].split("=");
        if(temp[0] == objName) return decodeURIComponent(temp[1]);
    }
}
window.WH.Global.init = function () {
    var headerHtml = WH.Global.config.headerHTML,footerHtml = WH.Global.config.footerHTML,username = window.WH.Global.getCookie('track_nick');
    if(username !== undefined && username !== null && username !== ''){
        headerHtml = headerHtml.replace("[[URL]]", window.WH.Global.config.accountUrl).replace("[[TEXT]]", username);
    } else {
        headerHtml = headerHtml.replace("[[URL]]", window.WH.Global.config.loginUrl).replace("[[TEXT]]", window.WH.Global.config.loginText);
    }
    document.getElementById("g-header").innerHTML=headerHtml;
    document.getElementById("g-footer").innerHTML=footerHtml;
}
document.body.onload = WH.Global.init();
function g_search_click(){
    var word = document.getElementById("g-search-input").value;
    if(word !=''){
        window.self.location = WH.Global.config.customBuiduUrl+encodeURIComponent(word+" "+WH.Global.config.customSiteUrl);
    }
}
function g_search_keydown(e){
    var word = document.getElementById("g-search-input").value;
    var keyCode = window.event ? e.keyCode : e.which;
    if(word !='' && keyCode == 13){
        window.self.location = WH.Global.config.customBuiduUrl+encodeURIComponent(word+" "+WH.Global.config.customSiteUrl);
    }

}
