var GLOBAL={}||"GLOBAL in not can't be null!"

/*Iframe Auto flollow height of target content;    Author:LinkXiao   Date:2015/02/14:01:30*/
GLOBAL.iframeAuto=function(){
    var oIframe=document.getElementById("mainFrame");
    var targetContent=document.iframes?document.iframes["mainFrame"].document:oIframe.contentDocument;
           //alert(targetContent);
    if(oIframe && targetContent) {
        //alert(targetContent.body.scrollHeight);
        oIframe.height=targetContent.body.scrollHeight;
    }
}