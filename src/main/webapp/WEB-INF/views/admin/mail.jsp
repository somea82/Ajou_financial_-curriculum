<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin/mail.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/includeHTML.js"></script>
    <script src="${pageContext.request.contextPath}/webapp/resources/js/pop-up.js"></script>

    <script src="${pageContext.request.contextPath}/webapp/WEB-INF/views/cil.js"></script>

    <script type="text/javascript">
        addLoadEvent = function(func){if(typeof jQuery!="undefined")jQuery(document).ready(func);else if(typeof wpOnload!='function'){wpOnload=func;}else{var oldonload=wpOnload;wpOnload=function(){oldonload();func();}}};
        var ajaxurl = '/wordpress/wp-admin/admin-ajax.php',
            pagenow = 'mil-editor_page_mileditor_mailing',
            typenow = '',
            adminpage = 'mil-editor_page_mileditor_mailing',
            thousandsSeparator = ',',
            decimalPoint = '.',
            isRtl = 0;
    </script>
    <script type="text/javascript">
        window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2\/72x72\/","ext":".png","svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2\/svg\/","svgExt":".svg","source":{"concatemoji":"http:\/\/media-jobs.ajou.ac.kr\/wordpress\/wp-includes\/js\/wp-emoji-release.min.js?ver=4.6"}};
        !function(a,b,c){function d(a){var c,d,e,f,g,h=b.createElement("canvas"),i=h.getContext&&h.getContext("2d"),j=String.fromCharCode;if(!i||!i.fillText)return!1;switch(i.textBaseline="top",i.font="600 32px Arial",a){case"flag":return i.fillText(j(55356,56806,55356,56826),0,0),!(h.toDataURL().length<3e3)&&(i.clearRect(0,0,h.width,h.height),i.fillText(j(55356,57331,65039,8205,55356,57096),0,0),c=h.toDataURL(),i.clearRect(0,0,h.width,h.height),i.fillText(j(55356,57331,55356,57096),0,0),d=h.toDataURL(),c!==d);case"diversity":return i.fillText(j(55356,57221),0,0),e=i.getImageData(16,16,1,1).data,f=e[0]+","+e[1]+","+e[2]+","+e[3],i.fillText(j(55356,57221,55356,57343),0,0),e=i.getImageData(16,16,1,1).data,g=e[0]+","+e[1]+","+e[2]+","+e[3],f!==g;case"simple":return i.fillText(j(55357,56835),0,0),0!==i.getImageData(16,16,1,1).data[0];case"unicode8":return i.fillText(j(55356,57135),0,0),0!==i.getImageData(16,16,1,1).data[0];case"unicode9":return i.fillText(j(55358,56631),0,0),0!==i.getImageData(16,16,1,1).data[0]}return!1}function e(a){var c=b.createElement("script");c.src=a,c.type="text/javascript",b.getElementsByTagName("head")[0].appendChild(c)}var f,g,h,i;for(i=Array("simple","flag","unicode8","diversity","unicode9"),c.supports={everything:!0,everythingExceptFlag:!0},h=0;h<i.length;h++)c.supports[i[h]]=d(i[h]),c.supports.everything=c.supports.everything&&c.supports[i[h]],"flag"!==i[h]&&(c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&c.supports[i[h]]);c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&!c.supports.flag,c.DOMReady=!1,c.readyCallback=function(){c.DOMReady=!0},c.supports.everything||(g=function(){c.readyCallback()},b.addEventListener?(b.addEventListener("DOMContentLoaded",g,!1),a.addEventListener("load",g,!1)):(a.attachEvent("onload",g),b.attachEvent("onreadystatechange",function(){"complete"===b.readyState&&c.readyCallback()})),f=c.source||{},f.concatemoji?e(f.concatemoji):f.wpemoji&&f.twemoji&&(e(f.twemoji),e(f.wpemoji)))}(window,document,window._wpemojiSettings);
    </script>
    <script type='text/javascript'>
        /* <![CDATA[ */
        var userSettings = {"url":"\/wordpress\/","uid":"1","time":"1676101938","secure":""};/* ]]> */
    </script>
    <script type='text/javascript' src='http://media-jobs.ajou.ac.kr/wordpress/wp-admin/load-scripts.php?c=0&amp;load%5B%5D=jquery-core,jquery-migrate,utils&amp;ver=4.6'></script>
    <script type='text/javascript' src='http://media-jobs.ajou.ac.kr/wordpress/wp-content/plugins/mil_editor/backend/js/admin.script.js?ver=4.6'></script>
    <script type='text/javascript' src='http://media-jobs.ajou.ac.kr/wordpress/wp-content/plugins/mil_editor/backend/js/admin.industry.script.js?ver=4.6'></script>
    <script type='text/javascript' src='http://media-jobs.ajou.ac.kr/wordpress/wp-content/plugins/mil_editor/backend/js/admin.mentor.script.js?ver=4.6'></script>
    <script type='text/javascript' src='http://media-jobs.ajou.ac.kr/wordpress/wp-content/plugins/kboard/pages/cosmosfarm-apis.js?ver=5.2'></script>


    <script>
        if ( window.history.replaceState ) {
            window.history.replaceState( null, null, document.getElementById( 'wp-admin-canonical' ).href + window.location.hash );
        }
    </script>
</head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<body>
<script type="text/javascript">
    document.body.className = document.body.className.replace('no-js','js');
</script>

<script type="text/javascript">
    (function() {
        var request, b = document.body, c = 'className', cs = 'customize-support', rcs = new RegExp('(^|\\s+)(no-)?'+cs+'(\\s+|$)');

        request = true;

        b[c] = b[c].replace( rcs, ' ' );
        b[c] += ( window.postMessage && request ? ' ' : ' no-' ) + cs;
    }());
</script>

<div class="setting_mailing_wrap">
    <p class="form_title">전체메일발송</p>
    <div id="setting_mailing">
        <p class="form_subtitle">전체 메일 발송 Tab</p>
        </br></br>
        <form id="mailing_form">
            <input type="hidden" name="track" value="" />
            <div class="row">
                <span class="input-addon">제목</span>
                <input
                        type="text"
                        class="input-text input-addon-select"
                        name="mail_subject"
                        placeholder="메일 제목을 입력하세요"
                        value=""
                />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span class="highlight" style="font-size: 0.7rem; color: #3462dc">※추가로 붙는 것 없음 <span style="font-size: 0.1rem; color: black">(ex.[MIL], [공지] 등)</span></span>
                <br><br>
            </div>

            <br />

            <div class="row">
                <span class="input-addon">받는 사람</span>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <select id="set_mailing_target" class="select-addon" name="mailing_target">
                    <option disabled selected value>회원그룹 선택</option>
                    <option value="students">학생 그룹</option>
                    <option value="mentors">멘토 그룹</option>
                    <option value="all">전체 그룹</option>
                </select>
            </div>

            <br />

            <div class="row">
                <span class="input-addon" style="margin-top: -80px">내용</span>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <textarea
                        rows="8"
                        cols="50"
                        class="input-textarea"
                        name="mailing_contents"
                        placeholder="메일 내용을 입력하세요.">
                  </textarea>
            </div>

            </br></br>
            <button type='button' class='mailing_button'>메일 발송하기</button>
        </form>
    </div>
</div>

<div class="left_menu">
    <meta name="viewport" content="height=device-height">
    <jsp:include page="include/menu.jsp" />
</div>

<script type="text/javascript">
    (function ($) {
        $(document).ajaxSend(function (event, jqxhr, settings) {
            if (settings.url &&
                -1 < settings.url.indexOf('admin-ajax.php') &&
                ! ( settings.url.indexOf( '_fs_blog_admin' ) > 0 )
            ) {
                if (settings.url.indexOf('?') > 0) {
                    settings.url += '&';
                } else {
                    settings.url += '?';
                }

                settings.url += '_fs_blog_admin=true';

            }
        });
    })(jQuery);
</script>
<script type="text/javascript">
    (function ($) {
        $('.fs-submenu-item.wp-support-forum').parent().attr('target', '_blank');
    })(jQuery);
</script>
<script type='text/javascript'>
    /* <![CDATA[ */
    var commonL10n = {"warnDelete":"\uc774\ub4e4 \uc544\uc774\ud15c\uc744 \uc601\uad6c\uc801\uc73c\ub85c \uc0ad\uc81c\ud558\ub824\uace0 \ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.\n  \uc911\uc9c0\ud558\ub824\uba74 '\ucde8\uc18c'\ub97c, \uc0ad\uc81c\ub294 'OK'.","dismiss":"\uc774 \uc54c\ub9bc \ubb34\uc2dc\ud558\uae30."};var heartbeatSettings = {"nonce":"04d416c604"};var authcheckL10n = {"beforeunload":"\uc138\uc158\uc774 \ub9cc\ub8cc\ub410\uc2b5\ub2c8\ub2e4. \uc774 \ud398\uc774\uc9c0\uc5d0\uc11c \ub2e4\uc2dc \ub85c\uadf8\uc778\ud558\uac70\ub098 \ub85c\uadf8\uc778 \ud398\uc774\uc9c0\ub85c \uc774\ub3d9\ud560 \uc218 \uc788\uc2b5\ub2c8\ub2e4.","interval":"180"};/* ]]> */
</script>
<script type='text/javascript' src='http://media-jobs.ajou.ac.kr/wordpress/wp-admin/load-scripts.php?c=0&amp;load%5B%5D=hoverIntent,common,admin-bar,svg-painter,heartbeat,wp-auth-check&amp;ver=4.6'></script>

</body>
</html>