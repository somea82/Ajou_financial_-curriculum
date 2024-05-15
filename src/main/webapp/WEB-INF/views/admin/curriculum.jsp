<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/webapp/resources/css/admin/curriculum.css">
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
            pagenow = 'toplevel_page_mileditor',
            typenow = '',
            adminpage = 'toplevel_page_mileditor',
            thousandsSeparator = ',',
            decimalPoint = '.',
            isRtl = 0;
    </script>
    <script type="text/javascript">
        window._wpemojiSettings =
            {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2\/72x72\/",
                "ext":".png","svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2\/svg\/",
                "svgExt":".svg",
                "source":{"concatemoji":"http:\/\/media-jobs.ajou.ac.kr\/wordpress\/wp-includes\/js\/wp-emoji-release.min.js?ver=4.6"}
            };
        !function(a,b,c){function d(a){
            var c,d,e,f,g,h=b.createElement("canvas"),
                i=h.getContext&&h.getContext("2d"),
                j=String.fromCharCode;
            if(!i||!i.fillText)return!1;
            switch(i.textBaseline="top",i.font="600 32px Arial",a)
            {
                case"flag":return i.fillText(j(55356,56806,55356,56826),0,0),
                !(h.toDataURL().length<3e3)&&(i.clearRect(0,0,h.width,h.height),
                    i.fillText(j(55356,57331,65039,8205,55356,57096),0,0),
                    c=h.toDataURL(),
                    i.clearRect(0,0,h.width,h.height),i.fillText(j(55356,57331,55356,57096),0,0),
                    d=h.toDataURL(),c!==d);
                case"diversity":return i.fillText(j(55356,57221),0,0),
                    e=i.getImageData(16,16,1,1).data,f=e[0]+","+e[1]+","+e[2]+","+e[3],
                    i.fillText(j(55356,57221,55356,57343),0,0),
                    e=i.getImageData(16,16,1,1).data,
                    g=e[0]+","+e[1]+","+e[2]+","+e[3],
                f!==g;case"simple":return i.fillText(j(55357,56835),0,0),
            0!==i.getImageData(16,16,1,1).data[0];
                case"unicode8":return i.fillText(j(55356,57135),0,0),
                0!==i.getImageData(16,16,1,1).data[0];
                case"unicode9":return i.fillText(j(55358,56631),0,0),
                0!==i.getImageData(16,16,1,1).data[0]}return!1
        }
            function e(a){
                var c=b.createElement("script");
                c.src=a,
                    c.type="text/javascript",
                    b.getElementsByTagName("head")[0].appendChild(c)
            }
            var f,g,h,i;
            for(
                i=Array("simple","flag","unicode8","diversity","unicode9"),
                    c.supports={everything:!0,everythingExceptFlag:!0},h=0;h<i.length;h++
            )c.supports[i[h]]=d(i[h]),
                c.supports.everything=c.supports.everything&&c.supports[i[h]],
            "flag"!==i[h]&&(c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&c.supports[i[h]]);
            c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&!c.supports.flag,
                c.DOMReady=!1,c.readyCallback=function(){c.DOMReady=!0},
            c.supports.everything||(g=function(){c.readyCallback()},
                b.addEventListener?(b.addEventListener("DOMContentLoaded",g,!1),
                    a.addEventListener("load",g,!1)):(a.attachEvent("onload",g),
                    b.attachEvent("onreadystatechange",
                        function(){
                            "complete"===b.readyState&&c.readyCallback()
                        })),f=c.source||{},
                f.concatemoji?e(f.concatemoji):f.wpemoji&&f.twemoji&&(e(f.twemoji),e(f.wpemoji)))}(window,document,window._wpemojiSettings);
    </script>
    <script>
        if ( window.history.replaceState ) {
            window.history.replaceState( null, null, document.getElementById( 'wp-admin-canonical' ).href + window.location.hash );
        }
    </script>
    <script type="text/javascript">var _wpColorScheme = {"icons":{"base":"#82878c","focus":"#00a0d2","current":"#fff"}};</script>

    <script type='text/javascript'>
        /* <![CDATA[ */
        var userSettings = {"url":"\/wordpress\/","uid":"1","time":"1675492374","secure":""};/* ]]> */
    </script>
    <script type='text/javascript' src='http://media-jobs.ajou.ac.kr/wordpress/wp-admin/load-scripts.php?c=0&amp;load%5B%5D=jquery-core,jquery-migrate,utils&amp;ver=4.6'></script>
    <script type='text/javascript' src='http://media-jobs.ajou.ac.kr/wordpress/wp-content/plugins/mil_editor/backend/js/admin.script.js?ver=4.6'></script>
    <script type='text/javascript' src='http://media-jobs.ajou.ac.kr/wordpress/wp-content/plugins/mil_editor/backend/js/admin.industry.script.js?ver=4.6'></script>
    <script type='text/javascript' src='http://media-jobs.ajou.ac.kr/wordpress/wp-content/plugins/mil_editor/backend/js/admin.mentor.script.js?ver=4.6'></script>
    <script type='text/javascript' src='http://media-jobs.ajou.ac.kr/wordpress/wp-content/plugins/kboard/pages/cosmosfarm-apis.js?ver=5.2'></script>

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

<div class="main_contents">
    <p class="main_contents_title">교과과정 편집</p>
    <div class="content_box">

        <div class="admin_page_header">
            <p class="admin_page_title">디지털미디어 교과과정 편집</p>
            <div class="admin_page_tool_bar">
                <button class="mil_btn mil_add_btn" type="button" onclick="open_pop_add();" style="cursor: pointer;" >+ 추가하기</button>
            </div>
        </div>

        <div class="admin_page_content">
            <table>
                <thead>
                <tr>
                    <th>ID</th>
                    <th>페이지 이름</th>
                    <th>Shortcode</th>
                    <th>항목</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>701</td>
                    <td>디지털디자이너</td>
                    <td>milpage dg_dg</td>
                    <td>
                        <input type="radio" id="Track" name="TrackOrJobs" value="Track"><label for="Track">Track</label>
                        <input type="radio" id="Jobs" name="TrackOrJobs" value="Jobs"><label for="Jobs">Jobs</label>
                    </td>
                    <td>
                        <button class="mil_btn mil_blue_btn" type="button" onclick="open_pop_subject();" style="cursor: pointer;">과목등록</button>
                        <button class="mil_btn mil_green_btn" type="button" onclick="open_pop_modify();" style="cursor: pointer;">페이지 수정</button>
                        <button class="mil_btn mil_red_btn mil_page_remove_btn" type="button" data="701"  style="cursor: pointer;">삭제</button>
                        <button class="mil_btn mil_yellow_btn" target="_blank"  type="button" onClick="location.href='http://media-jobs.ajou.ac.kr/wordpress/%eb%94%94%ec%a7%80%ed%84%b8%eb%94%94%ec%9e%90%ec%9d%b4%eb%84%88/'" original-title="교과과정표 보기" style="cursor: pointer;">페이지 보기</button>
                    </td>
                </tr>
                <tr>
                    <td>700</td>
                    <td>서비스경험디자이너</td>
                    <td>milpage dg_se</td>
                    <td>
                        <input type="radio" id="Track" name="TrackOrJobs" value="Track"><label for="Track">Track</label>
                        <input type="radio" id="Jobs" name="TrackOrJobs" value="Jobs"><label for="Jobs">Jobs</label>
                    </td>
                    <td>
                        <button class="mil_btn mil_blue_btn" type="button" onclick="open_pop_subject();" style="cursor: pointer;">과목등록</button>
                        <button class="mil_btn mil_green_btn" type="button" onclick="open_pop_modify();" style="cursor: pointer;">페이지 수정</button>
                        <button class="mil_btn mil_red_btn mil_page_remove_btn" type="button" data="700"  style="cursor: pointer;">삭제</button>
                        <button class="mil_btn mil_yellow_btn" target="_blank"  type="button" onClick="location.href='http://media-jobs.ajou.ac.kr/wordpress/%EC%84%9C%EB%B9%84%EC%8A%A4%EA%B2%BD%ED%97%98%EB%94%94%EC%9E%90%EC%9D%B4%EB%84%88/'" original-title="교과과정표 보기" style="cursor: pointer;">페이지 보기</button>
                    </td>
                </tr>
                <tr>
                    <td>699</td>
                    <td>시각디자이너</td>
                    <td>milpage dg_see</td>
                    <td>
                        <input type="radio" id="Track" name="TrackOrJobs" value="Track"><label for="Track">Track</label>
                        <input type="radio" id="Jobs" name="TrackOrJobs" value="Jobs"><label for="Jobs">Jobs</label>
                    </td>
                    <td>
                        <button class="mil_btn mil_blue_btn" type="button" onclick="open_pop_subject();" style="cursor: pointer;">과목등록</button>
                        <button class="mil_btn mil_green_btn" type="button" onclick="open_pop_modify();" style="cursor: pointer;">페이지 수정</button>
                        <button class="mil_btn mil_red_btn mil_page_remove_btn" type="button" data="699"  style="cursor: pointer;">삭제</button>
                        <button class="mil_btn mil_yellow_btn" target="_blank"  type="button" onClick="location.href='http://media-jobs.ajou.ac.kr/wordpress/%ec%8b%9c%ea%b0%81%eb%8b%a4%ec%a7%80%ec%9d%b4%eb%84%88/'" original-title="교과과정표 보기" style="cursor: pointer;">페이지 보기</button>
                    </td>
                </tr>
                <tr>
                    <td>698</td>
                    <td>스마트문화앱콘텐츠제작</td>
                    <td>milpage gm_app</td>
                    <td>
                        <input type="radio" id="Track" name="TrackOrJobs" value="Track"><label for="Track">Track</label>
                        <input type="radio" id="Jobs" name="TrackOrJobs" value="Jobs"><label for="Jobs">Jobs</label>
                    </td>
                    <td>
                        <button class="mil_btn mil_blue_btn" type="button" onclick="open_pop_subject();" style="cursor: pointer;">과목등록</button>
                        <button class="mil_btn mil_green_btn" type="button" onclick="open_pop_modify();" style="cursor: pointer;">페이지 수정</button>
                        <button class="mil_btn mil_red_btn mil_page_remove_btn" type="button" data="698"  style="cursor: pointer;">삭제</button>
                        <button class="mil_btn mil_yellow_btn" target="_blank"  type="button" onClick="location.href='http://media-jobs.ajou.ac.kr/wordpress/%ec%8a%a4%eb%a7%88%ed%8a%b8%eb%ac%b8%ed%99%94%ec%95%b1%ec%bd%98%ed%85%90%ec%b8%a0%ec%a0%9c%ec%9e%91/'" original-title="교과과정표 보기" style="cursor: pointer;">페이지 보기</button>
                    </td>
                </tr>
                <tr>
                    <td>697</td>
                    <td>게임프로그래머</td>
                    <td>milpage gm_pro</td>
                    <td>
                        <input type="radio" id="Track" name="TrackOrJobs" value="Track"><label for="Track">Track</label>
                        <input type="radio" id="Jobs" name="TrackOrJobs" value="Jobs"><label for="Jobs">Jobs</label>
                    </td>
                    <td>
                        <button class="mil_btn mil_blue_btn" type="button" onclick="open_pop_subject();" style="cursor: pointer;">과목등록</button>
                        <button class="mil_btn mil_green_btn" type="button" onclick="open_pop_modify();" style="cursor: pointer;">페이지 수정</button>
                        <button class="mil_btn mil_red_btn mil_page_remove_btn" type="button" data="697"  style="cursor: pointer;">삭제</button>
                        <button class="mil_btn mil_yellow_btn" target="_blank"  type="button" onClick="location.href='http://media-jobs.ajou.ac.kr/wordpress/%ea%b2%8c%ec%9e%84%ea%b8%b0%ed%9a%8d%ec%9e%90/%ea%b2%8c%ec%9e%84%ed%94%84%eb%a1%9c%ea%b7%b8%eb%9e%98%eb%a8%b8/'" original-title="교과과정표 보기" style="cursor: pointer;">페이지 보기</button>
                    </td>
                </tr>
                <tr>
                    <td>696</td>
                    <td>게임그래픽디자이너</td>
                    <td>milpage gm_graphic</td>
                    <td>
                        <input type="radio" id="Track" name="TrackOrJobs" value="Track"><label for="Track">Track</label>
                        <input type="radio" id="Jobs" name="TrackOrJobs" value="Jobs"><label for="Jobs">Jobs</label>
                    </td>
                    <td>
                        <button class="mil_btn mil_blue_btn" type="button" onclick="open_pop_subject();" style="cursor: pointer;">과목등록</button>
                        <button class="mil_btn mil_green_btn" type="button" onclick="open_pop_modify();" style="cursor: pointer;">페이지 수정</button>
                        <button class="mil_btn mil_red_btn mil_page_remove_btn" type="button" data="696"  style="cursor: pointer;">삭제</button>
                        <button class="mil_btn mil_yellow_btn" target="_blank"  type="button" onClick="location.href='http://media-jobs.ajou.ac.kr/wordpress/%ea%b2%8c%ec%9e%84%ea%b7%b8%eb%9e%98%ed%94%bd%eb%94%94%ec%9e%90%ec%9d%b4%eb%84%88/'" original-title="교과과정표 보기" style="cursor: pointer;">페이지 보기</button>
                    </td>
                </tr>
                <tr>
                    <td>693</td>
                    <td>게임기획자</td>
                    <td>milpage gm_plan</td>
                    <td>
                        <input type="radio" id="Track" name="TrackOrJobs" value="Track"><label for="Track">Track</label>
                        <input type="radio" id="Jobs" name="TrackOrJobs" value="Jobs"><label for="Jobs">Jobs</label>
                    </td>
                    <td>
                        <button class="mil_btn mil_blue_btn" type="button" onclick="open_pop_subject();" style="cursor: pointer;">과목등록</button>
                        <button class="mil_btn mil_green_btn" type="button" onclick="open_pop_modify();" style="cursor: pointer;">페이지 수정</button>
                        <button class="mil_btn mil_red_btn mil_page_remove_btn" type="button" data="693"  style="cursor: pointer;">삭제</button>
                        <button class="mil_btn mil_yellow_btn" target="_blank"  type="button" onClick="location.href='http://media-jobs.ajou.ac.kr/wordpress/%ea%b2%8c%ec%9e%84%ea%b8%b0%ed%9a%8d%ec%9e%90/'" original-title="교과과정표 보기" style="cursor: pointer;">페이지 보기</button>
                    </td>
                </tr>
                <tr>
                    <td>687</td>
                    <td>게임클라이언트개발자</td>
                    <td>milpage vc_game_client</td>
                    <td>
                        <input type="radio" id="Track" name="TrackOrJobs" value="Track"><label for="Track">Track</label>
                        <input type="radio" id="Jobs" name="TrackOrJobs" value="Jobs"><label for="Jobs">Jobs</label>
                    </td>
                    <td>
                        <button class="mil_btn mil_blue_btn" type="button" onclick="open_pop_subject();" style="cursor: pointer;">과목등록</button>
                        <button class="mil_btn mil_green_btn" type="button" onclick="open_pop_modify();" style="cursor: pointer;">페이지 수정</button>
                        <button class="mil_btn mil_red_btn mil_page_remove_btn" type="button" data="687"  style="cursor: pointer;">삭제</button>
                        <button class="mil_btn mil_yellow_btn" target="_blank"  type="button" onClick="location.href='http://media-jobs.ajou.ac.kr/wordpress/%ea%b2%8c%ec%9e%84%ed%81%b4%eb%9d%bc%ec%9d%b4%ec%96%b8%ed%8a%b8%ea%b0%9c%eb%b0%9c%ec%9e%90/'" original-title="교과과정표 보기" style="cursor: pointer;">페이지 보기</button>
                    </td>
                </tr>
                <tr>
                    <td>681</td>
                    <td>영상테크니컬디렉터</td>
                    <td>milpage vc_filme_director</td>
                    <td>
                        <input type="radio" id="Track" name="TrackOrJobs" value="Track"><label for="Track">Track</label>
                        <input type="radio" id="Jobs" name="TrackOrJobs" value="Jobs"><label for="Jobs">Jobs</label>
                    </td>
                    <td>
                        <button class="mil_btn mil_blue_btn" type="button" onclick="open_pop_subject();" style="cursor: pointer;">과목등록</button>
                        <button class="mil_btn mil_green_btn" type="button" onclick="open_pop_modify();" style="cursor: pointer;">페이지 수정</button>
                        <button class="mil_btn mil_red_btn mil_page_remove_btn" type="button" data="681"  style="cursor: pointer;">삭제</button>
                        <button class="mil_btn mil_yellow_btn" target="_blank"  type="button" onClick="location.href='http://media-jobs.ajou.ac.kr/wordpress/%ec%98%81%ec%83%81%ed%85%8c%ed%81%ac%eb%8b%88%ec%bb%ac%eb%94%94%eb%a0%89%ed%84%b0/'" original-title="교과과정표 보기" style="cursor: pointer;">페이지 보기</button>
                    </td>
                </tr>
                <tr>
                    <td>678</td>
                    <td>3D그래픽스</td>
                    <td>milpage vc_graphics</td>
                    <td>
                        <input type="radio" id="Track" name="TrackOrJobs" value="Track"><label for="Track">Track</label>
                        <input type="radio" id="Jobs" name="TrackOrJobs" value="Jobs"><label for="Jobs">Jobs</label>
                    </td>
                    <td>
                        <button class="mil_btn mil_blue_btn" type="button" onclick="open_pop_subject();" style="cursor: pointer;">과목등록</button>
                        <button class="mil_btn mil_green_btn" type="button" onclick="open_pop_modify();" style="cursor: pointer;">페이지 수정</button>
                        <button class="mil_btn mil_red_btn mil_page_remove_btn" type="button" data="678"  style="cursor: pointer;">삭제</button>
                        <button class="mil_btn mil_yellow_btn" target="_blank"  type="button" onClick="location.href='http://media-jobs.ajou.ac.kr/wordpress/3d%ea%b7%b8%eb%9e%98%ed%94%bd%ec%8a%a4/'" original-title="교과과정표 보기" style="cursor: pointer;">페이지 보기</button>
                    </td>
                </tr>
                <tr>
                    <td>673</td>
                    <td>데이터사이언스대학원</td>
                    <td>milpage data_graduate</td>
                    <td>
                        <input type="radio" id="Track" name="TrackOrJobs" value="Track"><label for="Track">Track</label>
                        <input type="radio" id="Jobs" name="TrackOrJobs" value="Jobs"><label for="Jobs">Jobs</label>
                    </td>
                    <td>
                        <button class="mil_btn mil_blue_btn" type="button" onclick="open_pop_subject();" style="cursor: pointer;">과목등록</button>
                        <button class="mil_btn mil_green_btn" type="button" onclick="open_pop_modify();" style="cursor: pointer;">페이지 수정</button>
                        <button class="mil_btn mil_red_btn mil_page_remove_btn" type="button" data="673"  style="cursor: pointer;">삭제</button>
                        <button class="mil_btn mil_yellow_btn" target="_blank"  type="button" onClick="location.href='http://media-jobs.ajou.ac.kr/wordpress/%eb%8d%b0%ec%9d%b4%ed%84%b0%ec%82%ac%ec%9d%b4%ec%96%b8%ec%8a%a4%eb%8c%80%ed%95%99%ec%9b%90/'" original-title="교과과정표 보기" style="cursor: pointer;">페이지 보기</button>
                    </td>
                </tr>
                <tr>
                    <td>669</td>
                    <td>데이터엔지니어</td>
                    <td>milpage data_engineer</td>
                    <td>
                        <input type="radio" id="Track" name="TrackOrJobs" value="Track"><label for="Track">Track</label>
                        <input type="radio" id="Jobs" name="TrackOrJobs" value="Jobs"><label for="Jobs">Jobs</label>
                    </td>
                    <td>
                        <button class="mil_btn mil_blue_btn" type="button" onclick="open_pop_subject();" style="cursor: pointer;">과목등록</button>
                        <button class="mil_btn mil_green_btn" type="button" onclick="open_pop_modify();" style="cursor: pointer;">페이지 수정</button>
                        <button class="mil_btn mil_red_btn mil_page_remove_btn" type="button" data="669"  style="cursor: pointer;">삭제</button>
                        <button class="mil_btn mil_yellow_btn" target="_blank"  type="button" onClick="location.href='http://media-jobs.ajou.ac.kr/wordpress/%eb%8d%b0%ec%9d%b4%ed%84%b0%ec%97%94%ec%a7%80%eb%8b%88%ec%96%b4/'" original-title="교과과정표 보기" style="cursor: pointer;">페이지 보기</button>
                    </td>
                </tr>
                <tr>
                    <td>667</td>
                    <td>데이터사이언티스트</td>
                    <td>milpage data_scientist</td>
                    <td>
                        <input type="radio" id="Track" name="TrackOrJobs" value="Track"><label for="Track">Track</label>
                        <input type="radio" id="Jobs" name="TrackOrJobs" value="Jobs"><label for="Jobs">Jobs</label>
                    </td>
                    <td>
                        <button class="mil_btn mil_blue_btn" type="button" onclick="open_pop_subject();" style="cursor: pointer;">과목등록</button>
                        <button class="mil_btn mil_green_btn" type="button" onclick="open_pop_modify();" style="cursor: pointer;">페이지 수정</button>
                        <button class="mil_btn mil_red_btn mil_page_remove_btn" type="button" data="667"  style="cursor: pointer;">삭제</button>
                        <button class="mil_btn mil_yellow_btn" target="_blank"  type="button" onClick="location.href='http://media-jobs.ajou.ac.kr/wordpress/%eb%8d%b0%ec%9d%b4%ed%84%b0%ec%82%ac%ec%9d%b4%ec%96%b8%ed%8b%b0%ec%8a%a4%ed%8a%b8/'" original-title="교과과정표 보기" style="cursor: pointer;">페이지 보기</button>
                    </td>
                </tr>
                <tr>
                    <td>662</td>
                    <td>모션그래픽디자이너</td>
                    <td>milpage df_motion</td>
                    <td>
                        <input type="radio" id="Track" name="TrackOrJobs" value="Track"><label for="Track">Track</label>
                        <input type="radio" id="Jobs" name="TrackOrJobs" value="Jobs"><label for="Jobs">Jobs</label>
                    </td>
                    <td>
                        <button class="mil_btn mil_blue_btn" type="button" onclick="open_pop_subject();" style="cursor: pointer;">과목등록</button>
                        <button class="mil_btn mil_green_btn" type="button" onclick="open_pop_modify();" style="cursor: pointer;">페이지 수정</button>
                        <button class="mil_btn mil_red_btn mil_page_remove_btn" type="button" data="662"  style="cursor: pointer;">삭제</button>
                        <button class="mil_btn mil_yellow_btn" target="_blank"  type="button" onClick="location.href='http://media-jobs.ajou.ac.kr/wordpress/%eb%aa%a8%ec%85%98%ea%b7%b8%eb%9e%98%ed%94%bd%eb%94%94%ec%9e%90%ec%9d%b4%eb%84%88/'" original-title="교과과정표 보기" style="cursor: pointer;">페이지 보기</button>
                    </td>
                </tr>
                <tr>
                    <td>658</td>
                    <td>제작PD</td>
                    <td>milpage df_pd</td>
                    <td>
                        <input type="radio" id="Track" name="TrackOrJobs" value="Track"><label for="Track">Track</label>
                        <input type="radio" id="Jobs" name="TrackOrJobs" value="Jobs"><label for="Jobs">Jobs</label>
                    </td>
                    <td>
                        <button class="mil_btn mil_blue_btn" type="button" onclick="open_pop_subject();" style="cursor: pointer;">과목등록</button>
                        <button class="mil_btn mil_green_btn" type="button" onclick="open_pop_modify();" style="cursor: pointer;">페이지 수정</button>
                        <button class="mil_btn mil_red_btn mil_page_remove_btn" type="button" data="658"  style="cursor: pointer;">삭제</button>
                        <button class="mil_btn mil_yellow_btn" target="_blank"  type="button" onClick="location.href='http://media-jobs.ajou.ac.kr/wordpress/%ec%a0%9c%ec%9e%91pd/'" original-title="교과과정표 보기" style="cursor: pointer;">페이지 보기</button>
                    </td>
                </tr>
                <tr>
                    <td>654</td>
                    <td>브랜드디자인</td>
                    <td>milpage df_brand</td>
                    <td>
                        <input type="radio" id="Track" name="TrackOrJobs" value="Track"><label for="Track">Track</label>
                        <input type="radio" id="Jobs" name="TrackOrJobs" value="Jobs"><label for="Jobs">Jobs</label>
                    </td>
                    <td>
                        <button class="mil_btn mil_blue_btn" type="button" onclick="open_pop_subject();" style="cursor: pointer;">과목등록</button>
                        <button class="mil_btn mil_green_btn" type="button" onclick="open_pop_modify();" style="cursor: pointer;">페이지 수정</button>
                        <button class="mil_btn mil_red_btn mil_page_remove_btn" type="button" data="654"  style="cursor: pointer;">삭제</button>
                        <button class="mil_btn mil_yellow_btn" target="_blank"  type="button" onClick="location.href='http://media-jobs.ajou.ac.kr/wordpress/%eb%b8%8c%eb%9e%9c%eb%93%9c%eb%94%94%ec%9e%90%ec%9d%b8/'" original-title="교과과정표 보기" style="cursor: pointer;">페이지 보기</button>
                    </td>
                </tr>
                <tr>
                    <td>507</td>
                    <td>Media Contents</td>
                    <td>milpage media_contents</td>
                    <td>
                        <input type="radio" id="Track" name="TrackOrJobs" value="Track"><label for="Track">Track</label>
                        <input type="radio" id="Jobs" name="TrackOrJobs" value="Jobs"><label for="Jobs">Jobs</label>
                    </td>
                    <td>
                        <button class="mil_btn mil_blue_btn" type="button" onclick="open_pop_subject();" style="cursor: pointer;">과목등록</button>
                        <button class="mil_btn mil_green_btn" type="button" onclick="open_pop_modify();" style="cursor: pointer;">페이지 수정</button>
                        <button class="mil_btn mil_red_btn mil_page_remove_btn" type="button" data="507"  style="cursor: pointer;">삭제</button>
                        <button class="mil_btn mil_yellow_btn" target="_blank"  type="button" onClick="location.href='http://media-jobs.ajou.ac.kr/wordpress/media_contents/'" original-title="교과과정표 보기" style="cursor: pointer;">페이지 보기</button>
                    </td>
                </tr>
                <tr>
                    <td>177</td>
                    <td>휴먼인터랙션디자인</td>
                    <td>milpage dd_interaction_human</td>
                    <td>
                        <input type="radio" id="Track" name="TrackOrJobs" value="Track"><label for="Track">Track</label>
                        <input type="radio" id="Jobs" name="TrackOrJobs" value="Jobs"><label for="Jobs">Jobs</label>
                    </td>
                    <td>
                        <button class="mil_btn mil_blue_btn" type="button" onclick="open_pop_subject();" style="cursor: pointer;">과목등록</button>
                        <button class="mil_btn mil_green_btn" type="button" onclick="open_pop_modify();" style="cursor: pointer;">페이지 수정</button>
                        <button class="mil_btn mil_red_btn mil_page_remove_btn" type="button" data="177"  style="cursor: pointer;">삭제</button>
                        <button class="mil_btn mil_gray_btn" type="button" original-title="페이지 또는 포스트에 숏코드를 등록 하셔야 교과과정표 보기를 하실 수 있습니다." style="cursor: pointer;">페이지 보기</button>
                    </td>
                </tr>
                <tr>
                    <td>150</td>
                    <td>애니메이션프로듀서</td>
                    <td>milpage df_ani_producer</td>
                    <td>
                        <input type="radio" id="Track" name="TrackOrJobs" value="Track"><label for="Track">Track</label>
                        <input type="radio" id="Jobs" name="TrackOrJobs" value="Jobs"><label for="Jobs">Jobs</label>
                    </td>
                    <td>
                        <button class="mil_btn mil_blue_btn" type="button" onclick="open_pop_subject();" style="cursor: pointer;">과목등록</button>
                        <button class="mil_btn mil_green_btn" type="button" onclick="open_pop_modify();" style="cursor: pointer;">페이지 수정</button>
                        <button class="mil_btn mil_red_btn mil_page_remove_btn" type="button" data="150"  style="cursor: pointer;">삭제</button>
                        <button class="mil_btn mil_gray_btn" type="button" original-title="페이지 또는 포스트에 숏코드를 등록 하셔야 교과과정표 보기를 하실 수 있습니다." style="cursor: pointer;">페이지 보기</button>
                    </td>
                </tr>
                <tr>
                    <td>149</td>
                    <td>CG아티스트</td>
                    <td>milpage df_cg_artist</td>
                    <td>
                        <input type="radio" id="Track" name="TrackOrJobs" value="Track"><label for="Track">Track</label>
                        <input type="radio" id="Jobs" name="TrackOrJobs" value="Jobs"><label for="Jobs">Jobs</label>
                    </td>
                    <td>
                        <button class="mil_btn mil_blue_btn" type="button" onclick="open_pop_subject();" style="cursor: pointer;">과목등록</button>
                        <button class="mil_btn mil_green_btn" type="button" onclick="open_pop_modify();" style="cursor: pointer;">페이지 수정</button>
                        <button class="mil_btn mil_red_btn mil_page_remove_btn" type="button" data="149"  style="cursor: pointer;">삭제</button>
                        <button class="mil_btn mil_yellow_btn" target="_blank"  type="button" onClick="location.href='http://media-jobs.ajou.ac.kr/wordpress/cg%ec%95%84%ed%8b%b0%ec%8a%a4%ed%8a%b8/'" original-title="교과과정표 보기" style="cursor: pointer;">페이지 보기</button>
                    </td>
                </tr>
                <tr>
                    <td>148</td>
                    <td>테크니컬 디렉터</td>
                    <td>milpage df_effect_director</td>
                    <td>
                        <input type="radio" id="Track" name="TrackOrJobs" value="Track"><label for="Track">Track</label>
                        <input type="radio" id="Jobs" name="TrackOrJobs" value="Jobs"><label for="Jobs">Jobs</label>
                    </td>
                    <td>
                        <button class="mil_btn mil_blue_btn" type="button" onclick="open_pop_subject();" style="cursor: pointer;">과목등록</button>
                        <button class="mil_btn mil_green_btn" type="button" onclick="open_pop_modify();" style="cursor: pointer;">페이지 수정</button>
                        <button class="mil_btn mil_red_btn mil_page_remove_btn" type="button" data="148"  style="cursor: pointer;">삭제</button>
                        <button class="mil_btn mil_yellow_btn" target="_blank"  type="button" onClick="location.href='http://media-jobs.ajou.ac.kr/wordpress/%ed%85%8c%ed%81%ac%eb%8b%88%ec%bb%ac-%eb%94%94%eb%a0%89%ed%84%b0/'" original-title="교과과정표 보기" style="cursor: pointer;">페이지 보기</button>
                    </td>
                </tr>
                <tr>
                    <td>146</td>
                    <td>편집</td>
                    <td>milpage df_editing_director</td>
                    <td>
                        <input type="radio" id="Track" name="TrackOrJobs" value="Track"><label for="Track">Track</label>
                        <input type="radio" id="Jobs" name="TrackOrJobs" value="Jobs"><label for="Jobs">Jobs</label>
                    </td>
                    <td>
                        <button class="mil_btn mil_blue_btn" type="button" onclick="open_pop_subject();" style="cursor: pointer;">과목등록</button>
                        <button class="mil_btn mil_green_btn" type="button" onclick="open_pop_modify();" style="cursor: pointer;">페이지 수정</button>
                        <button class="mil_btn mil_red_btn mil_page_remove_btn" type="button" data="146"  style="cursor: pointer;">삭제</button>
                        <button class="mil_btn mil_gray_btn" type="button" original-title="페이지 또는 포스트에 숏코드를 등록 하셔야 교과과정표 보기를 하실 수 있습니다." style="cursor: pointer;">페이지 보기</button>
                    </td>
                </tr>
                <tr>
                    <td>145</td>
                    <td>영상프로듀서</td>
                    <td>milpage df_producer</td>
                    <td>
                        <input type="radio" id="Track" name="TrackOrJobs" value="Track"><label for="Track">Track</label>
                        <input type="radio" id="Jobs" name="TrackOrJobs" value="Jobs"><label for="Jobs">Jobs</label>
                    </td>
                    <td>
                        <button class="mil_btn mil_blue_btn" type="button" onclick="open_pop_subject();" style="cursor: pointer;">과목등록</button>
                        <button class="mil_btn mil_green_btn" type="button" onclick="open_pop_modify();" style="cursor: pointer;">페이지 수정</button>
                        <button class="mil_btn mil_red_btn mil_page_remove_btn" type="button" data="145"  style="cursor: pointer;">삭제</button>
                        <button class="mil_btn mil_yellow_btn" target="_blank"  type="button" onClick="location.href='http://media-jobs.ajou.ac.kr/wordpress/%ec%98%81%ec%83%81%ed%94%84%eb%a1%9c%eb%93%80%ec%84%9c/'" original-title="교과과정표 보기" style="cursor: pointer;">페이지 보기</button>
                    </td>
                </tr>
                <tr>
                    <td>144</td>
                    <td>사용자인터페이스(UI)디자인</td>
                    <td>milpage dd_ux_design</td>
                    <td>
                        <input type="radio" id="Track" name="TrackOrJobs" value="Track"><label for="Track">Track</label>
                        <input type="radio" id="Jobs" name="TrackOrJobs" value="Jobs"><label for="Jobs">Jobs</label>
                    </td>
                    <td>
                        <button class="mil_btn mil_blue_btn" type="button" onclick="open_pop_subject();" style="cursor: pointer;">과목등록</button>
                        <button class="mil_btn mil_green_btn" type="button" onclick="open_pop_modify();" style="cursor: pointer;">페이지 수정</button>
                        <button class="mil_btn mil_red_btn mil_page_remove_btn" type="button" data="144"  style="cursor: pointer;">삭제</button>
                        <button class="mil_btn mil_yellow_btn" target="_blank"  type="button" onClick="location.href='http://media-jobs.ajou.ac.kr/wordpress/%ec%82%ac%ec%9a%a9%ec%9e%90%ec%9d%b8%ed%84%b0%ed%8e%98%ec%9d%b4%ec%8a%a4ui%eb%94%94%ec%9e%90%ec%9d%b8/'" original-title="교과과정표 보기" style="cursor: pointer;">페이지 보기</button>
                    </td>
                </tr>
                <tr>
                    <td>142</td>
                    <td>사운드디자이너</td>
                    <td>milpage gm_sound_designer</td>
                    <td>
                        <input type="radio" id="Track" name="TrackOrJobs" value="Track"><label for="Track">Track</label>
                        <input type="radio" id="Jobs" name="TrackOrJobs" value="Jobs"><label for="Jobs">Jobs</label>
                    </td>
                    <td>
                        <button class="mil_btn mil_blue_btn" type="button" onclick="open_pop_subject();" style="cursor: pointer;">과목등록</button>
                        <button class="mil_btn mil_green_btn" type="button" onclick="open_pop_modify();" style="cursor: pointer;">페이지 수정</button>
                        <button class="mil_btn mil_red_btn mil_page_remove_btn" type="button" data="142"  style="cursor: pointer;">삭제</button>
                        <button class="mil_btn mil_yellow_btn" target="_blank"  type="button" onClick="location.href='http://media-jobs.ajou.ac.kr/wordpress/%ec%82%ac%ec%9a%b4%eb%93%9c%eb%94%94%ec%9e%90%ec%9d%b4%eb%84%88/'" original-title="교과과정표 보기" style="cursor: pointer;">페이지 보기</button>
                    </td>
                </tr>
                <tr>
                    <td>140</td>
                    <td>컨셉아티스트</td>
                    <td>milpage gm_concept_artist</td>
                    <td>
                        <input type="radio" id="Track" name="TrackOrJobs" value="Track"><label for="Track">Track</label>
                        <input type="radio" id="Jobs" name="TrackOrJobs" value="Jobs"><label for="Jobs">Jobs</label>
                    </td>
                    <td>
                        <button class="mil_btn mil_blue_btn" type="button" onclick="open_pop_subject();" style="cursor: pointer;">과목등록</button>
                        <button class="mil_btn mil_green_btn" type="button" onclick="open_pop_modify();" style="cursor: pointer;">페이지 수정</button>
                        <button class="mil_btn mil_red_btn mil_page_remove_btn" type="button" data="140"  style="cursor: pointer;">삭제</button>
                        <button class="mil_btn mil_gray_btn" type="button" original-title="페이지 또는 포스트에 숏코드를 등록 하셔야 교과과정표 보기를 하실 수 있습니다." style="cursor: pointer;">페이지 보기</button>
                    </td>
                </tr>
                <tr>
                    <td>135</td>
                    <td>게임프로듀서</td>
                    <td>milpage gm_producer</td>
                    <td>
                        <input type="radio" id="Track" name="TrackOrJobs" value="Track"><label for="Track">Track</label>
                        <input type="radio" id="Jobs" name="TrackOrJobs" value="Jobs"><label for="Jobs">Jobs</label>
                    </td>
                    <td>
                        <button class="mil_btn mil_blue_btn" type="button" onclick="open_pop_subject();" style="cursor: pointer;">과목등록</button>
                        <button class="mil_btn mil_green_btn" type="button" onclick="open_pop_modify();" style="cursor: pointer;">페이지 수정</button>
                        <button class="mil_btn mil_red_btn mil_page_remove_btn" type="button" data="135"  style="cursor: pointer;">삭제</button>
                        <button class="mil_btn mil_yellow_btn" target="_blank"  type="button" onClick="location.href='http://media-jobs.ajou.ac.kr/wordpress/%ea%b2%8c%ec%9e%84%ed%94%84%eb%a1%9c%eb%93%80%ec%84%9c/'" original-title="교과과정표 보기" style="cursor: pointer;">페이지 보기</button>
                    </td>
                </tr>
                <tr>
                    <td>134</td>
                    <td>게임그래픽디자인</td>
                    <td>milpage gm_graphic_designer</td>
                    <td>
                        <input type="radio" id="Track" name="TrackOrJobs" value="Track"><label for="Track">Track</label>
                        <input type="radio" id="Jobs" name="TrackOrJobs" value="Jobs"><label for="Jobs">Jobs</label>
                    </td>
                    <td>
                        <button class="mil_btn mil_blue_btn" type="button" onclick="open_pop_subject();" style="cursor: pointer;">과목등록</button>
                        <button class="mil_btn mil_green_btn" type="button" onclick="open_pop_modify();" style="cursor: pointer;">페이지 수정</button>
                        <button class="mil_btn mil_red_btn mil_page_remove_btn" type="button" data="134"  style="cursor: pointer;">삭제</button>
                        <button class="mil_btn mil_gray_btn" type="button" original-title="페이지 또는 포스트에 숏코드를 등록 하셔야 교과과정표 보기를 하실 수 있습니다." style="cursor: pointer;">페이지 보기</button>
                    </td>
                </tr>
                <tr>
                    <td>133</td>
                    <td>Game</td>
                    <td>milpage mc_game</td>
                    <td>
                        <input type="radio" id="Track" name="TrackOrJobs" value="Track"><label for="Track">Track</label>
                        <input type="radio" id="Jobs" name="TrackOrJobs" value="Jobs"><label for="Jobs">Jobs</label>
                    </td>
                    <td>
                        <button class="mil_btn mil_blue_btn" type="button" onclick="open_pop_subject();" style="cursor: pointer;">과목등록</button>
                        <button class="mil_btn mil_green_btn" type="button" onclick="open_pop_modify();" style="cursor: pointer;">페이지 수정</button>
                        <button class="mil_btn mil_red_btn mil_page_remove_btn" type="button" data="133"  style="cursor: pointer;">삭제</button>
                        <button class="mil_btn mil_yellow_btn" target="_blank"  type="button" onClick="location.href='http://media-jobs.ajou.ac.kr/wordpress/game/'" original-title="교과과정표 보기" style="cursor: pointer;">페이지 보기</button>
                    </td>
                </tr>
                <tr>
                    <td>132</td>
                    <td>Convergence Technology</td>
                    <td>milpage mc_convergence_tech</td>
                    <td>
                        <input type="radio" id="Track" name="TrackOrJobs" value="Track"><label for="Track">Track</label>
                        <input type="radio" id="Jobs" name="TrackOrJobs" value="Jobs"><label for="Jobs">Jobs</label>
                    </td>
                    <td>
                        <button class="mil_btn mil_blue_btn" type="button" onclick="open_pop_subject();" style="cursor: pointer;">과목등록</button>
                        <button class="mil_btn mil_green_btn" type="button" onclick="open_pop_modify();" style="cursor: pointer;">페이지 수정</button>
                        <button class="mil_btn mil_red_btn mil_page_remove_btn" type="button" data="132"  style="cursor: pointer;">삭제</button>
                        <button class="mil_btn mil_yellow_btn" target="_blank"  type="button" onClick="location.href='http://media-jobs.ajou.ac.kr/wordpress/convergence-technology/'" original-title="교과과정표 보기" style="cursor: pointer;">페이지 보기</button>
                    </td>
                </tr>
                <tr>
                    <td>131</td>
                    <td>IT Programming</td>
                    <td>milpage mc_it_programming</td>
                    <td>
                        <input type="radio" id="Track" name="TrackOrJobs" value="Track"><label for="Track">Track</label>
                        <input type="radio" id="Jobs" name="TrackOrJobs" value="Jobs"><label for="Jobs">Jobs</label>
                    </td>
                    <td>
                        <button class="mil_btn mil_blue_btn" type="button" onclick="open_pop_subject();" style="cursor: pointer;">과목등록</button>
                        <button class="mil_btn mil_green_btn" type="button" onclick="open_pop_modify();" style="cursor: pointer;">페이지 수정</button>
                        <button class="mil_btn mil_red_btn mil_page_remove_btn" type="button" data="131"  style="cursor: pointer;">삭제</button>
                        <button class="mil_btn mil_yellow_btn" target="_blank"  type="button" onClick="location.href='http://media-jobs.ajou.ac.kr/wordpress/it-programming/'" original-title="교과과정표 보기" style="cursor: pointer;">페이지 보기</button>
                    </td>
                </tr>
                <tr>
                    <td>130</td>
                    <td>Digital Design</td>
                    <td>milpage mc_digital_design</td>
                    <td>
                        <input type="radio" id="Track" name="TrackOrJobs" value="Track"><label for="Track">Track</label>
                        <input type="radio" id="Jobs" name="TrackOrJobs" value="Jobs"><label for="Jobs">Jobs</label>
                    </td>
                    <td>
                        <button class="mil_btn mil_blue_btn" type="button" onclick="open_pop_subject();" style="cursor: pointer;">과목등록</button>
                        <button class="mil_btn mil_green_btn" type="button" onclick="open_pop_modify();" style="cursor: pointer;">페이지 수정</button>
                        <button class="mil_btn mil_red_btn mil_page_remove_btn" type="button" data="130"  style="cursor: pointer;">삭제</button>
                        <button class="mil_btn mil_yellow_btn" target="_blank"  type="button" onClick="location.href='http://media-jobs.ajou.ac.kr/wordpress/digital-design/'" original-title="교과과정표 보기" style="cursor: pointer;">페이지 보기</button>
                    </td>
                </tr>
                <tr>
                    <td>129</td>
                    <td>Digital Film</td>
                    <td>milpage mc_digital_film</td>
                    <td>
                        <input type="radio" id="Track" name="TrackOrJobs" value="Track"><label for="Track">Track</label>
                        <input type="radio" id="Jobs" name="TrackOrJobs" value="Jobs"><label for="Jobs">Jobs</label>
                    </td>
                    <td>
                        <button class="mil_btn mil_blue_btn" type="button" onclick="open_pop_subject();" style="cursor: pointer;">과목등록</button>
                        <button class="mil_btn mil_green_btn" type="button" onclick="open_pop_modify();" style="cursor: pointer;">페이지 수정</button>
                        <button class="mil_btn mil_red_btn mil_page_remove_btn" type="button" data="129"  style="cursor: pointer;">삭제</button>
                        <button class="mil_btn mil_yellow_btn" target="_blank"  type="button" onClick="location.href='http://media-jobs.ajou.ac.kr/wordpress/digital-film/'" original-title="교과과정표 보기" style="cursor: pointer;">페이지 보기</button>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>


        <div class="Modal mileditor_wrap" id="Modal_add">
            <form id="admin_create_curriculum_page_form">

                <input type="hidden" name="page_type" value="create">
                <input type="hidden" name="page_id">

                <div class="page">
                    <span class="setting_title">교과과정표 설정</span>
                    <div class="setting_table_wrap">
                        <div class="name">
                            <span>페이지 명</span>
                            <input class="mil_input" name="milpage_name" placeholder="보여질 페이지의 이름입니다 (ex: Game)" rows={1} type="text" />
                        </div>
                        <div class="slug">
                            <span>페이지 슬러그</span>
                            <input class="mil_input" name="milpage_slug" placeholder="게시판 슬러그는 초기 설정값에서 변경할 수 없습니다" rows={1} type="text" />
                        </div>
                        <div class="short-code">
                            <span>페이지 숏코드</span>
                            <input class="mil_input" name="milpage_shortcode" placeholder="이 숏코드를 만든 Page에 붙여넣으면 교과과정표가 보입니다" rows={1} type="text" />
                        </div>
                        <div class="row1">
                            <span class="mandatory">Mandatory</span>
                            <div class="mandatory-color">
                                <div style="display: flex;">
                                    <div class="view_color"></div>
                                    <input type="text" class="mil_input" name="milpage_color_mandatory">
                                </div>
                                <span id="explain1">Mandatory 과목의 배경색을 지정하세요</span>
                                <div style="display: flex;">
                                    <div class="view_color"></div>
                                    <input type="text" class="mil_input" name="milpage_bordercolor_mandatory">
                                </div>
                                <span id="explain2">Mandatory 과목의 선색을 지정하세요</span>
                            </div>
                            <span class="core">Core</span>
                            <div class="core-color">
                                <div style="display: flex;">
                                    <div class="view_color"></div>
                                    <input type="text" class="mil_input" name="milpage_color_core">
                                </div>
                                <span id="explain1">Core 과목의 배경색을 지정하세요</span>
                                <div style="display: flex;">
                                    <div class="view_color"></div>
                                    <input type="text" class="mil_input" name="milpage_bordercolor_core">
                                </div>
                                <span id="explain2">Core 과목의 선색을 지정하세요</span>
                            </div>
                        </div>
                        <div class="row2">
                            <span class="support">Support</span>
                            <div class="support-color">
                                <div style="display: flex;">
                                    <div class="view_color"></div>
                                    <input type="text" class="mil_input" name="milpage_color_support">
                                </div>
                                <span id="explain1">Support 과목의 배경색을 지정하세요</span>
                                <div style="display: flex;">
                                    <div class="view_color"></div>
                                    <input type="text" class="mil_input" name="milpage_bordercolor_support">
                                </div>
                                <span id="explain2">Support 과목의 선색을 지정하세요</span>
                            </div>
                            <span class="type">Type</span>
                            <div class="type-sort">
                                <div>
                                    <input class="game" type="checkbox" name="milpage_page_type[]" value="game">
                                    <label class="game">Game&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                    <input class="digital-film" type="checkbox" name="milpage_page_type[]" value="df">
                                    <label class="digital-film">Digital Film</label>
                                </div>
                                <div>
                                    <input class="digital-design" type="checkbox" name="milpage_page_type[]" value="dd">
                                    <label class="digital-design">Digital Design</label>
                                    <input class="it-programming" type="checkbox" name="milpage_page_type[]" value="it">
                                    <label class="it-programming">IT Programming</label>
                                </div>
                                <span id="explain1">이 교육과정이 포함하고 있는 분야를 선택해주세요. (중복 가능)</span>
                            </div>
                        </div>
                        <div class="row3">
                            <span class="major-details">Major details</span>
                            <div class="select">
                                <select class="selection" name="milpage_major_type">
                                    <option value="digital_media" selected='selected'>&nbsp; 디지털미디어 전공 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
                                    <option value="digital_media">&nbsp; 디지털미디어 전공 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
                                    <option value="digital_media">&nbsp; 디지털미디어 전공 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
                                    <option value="digital_media">&nbsp; 디지털미디어 전공 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
                                </select>
                                <div><span class="explain1">이 교육과정이 속해 있는 세부 전공을 선택해주세요</span></div>
                            </div>
                        </div>
                    </div>
                    <br></br>
                    <div class="bottom">
                        <button type="button" class="mil_btn mil_green_btn mil_create_page_button">페이지 생성</button>
                        <div class="close" onclick="close_pop_add();">
                            <span class="close_btn">취소</span>
                        </div>
                    </div>
                </div>
            </form>


        </div>
        <div class="Modal mileditor_wrap" id="Modal_subject">
            <div class="setting_block" style="display: flex;">
                <div class="setting_block_left">
                    <span class="setting_title">과목등록</span>
                    <br/>
                    <span class="subtitle">과목을 클릭하여 Core인지 Support인지 정해주세요</span>
                    <div id="mil_subject_table_wrap">
                        <table id="mil_subject_table">
                            <thead>
                            <tr>
                                <td><div>1-1</div></td>
                                <td><div>1-2</div></td>
                                <td><div>2-1</div></td>
                                <td><div>2-2</div></td>
                                <td><div>3-1</div></td>
                                <td><div>3-2</div></td>
                                <td><div>4-1</div></td>
                                <td><div>4-2</div></td>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td id="td11"></td>
                                <td id="td12"></td>
                                <td id="td13"></td>
                                <td id="td14"></td>
                                <td id="td15"></td>
                                <td id="td16"></td>
                                <td id="td17"></td>
                                <td id="td18"></td>
                            </tr>
                            <!--2nd row-->
                            <tr>
                                <td id="td21" colspan="2"><div class="table_bg"
                                                               style="width: 150px;">
                                    <span>물리학, 생명과학, 선형대수1, 수학2, 이산수학 중 택 1</span></div></td>
                                <td id="td23"></td>
                                <td id="td24"></td>
                                <td id="td25"></td>
                                <td id="td26"></td>
                                <td id="td27"></td>
                                <td id="td28"></td>
                            </tr>
                            <!--3rd row-->
                            <tr>
                                <td id="td31"></td>
                                <td id="td32"></td>
                                <td id="td33"></td>
                                <td id="td34"></td>
                                <td id="td35"></td>
                                <td id="td36"></td>
                                <td id="td37"></td>
                                <td id="td38"></td>
                            </tr>

                            <!--4th row-->
                            <tr>
                                <td id="td41"></td>
                                <td id="td42"></td>
                                <td id="td43"></td>
                                <td id="td44"></td>
                                <td id="td45"></td>
                                <td id="td46"></td>
                                <td id="td47"></td>
                                <td id="td48"></td>
                            </tr>

                            <!--5th row-->
                            <tr>
                                <td id="td51"></td>
                                <td id="td52"></td>
                                <td id="td53"></td>
                                <td id="td54"></td>
                                <td id="td55"></td>
                                <td id="td56"></td>
                                <td id="td57"></td>
                                <td id="td58"></td>
                            </tr>

                            <!--6th row-->
                            <tr>
                                <td id="td61"></td>
                                <td id="td62"></td>
                                <td id="td63"></td>
                                <td id="td64"></td>
                                <td id="td65"></td>
                                <td id="td66"></td>
                                <td id="td67"></td>
                                <td id="td68"></td>
                            </tr>

                            <!--7th row-->
                            <tr>
                                <td id="td71"></td>
                                <td id="td72"></td>
                                <td id="td73"></td>
                                <td id="td74"></td>
                                <td id="td75"></td>
                                <td id="td76"></td>
                                <td id="td77"></td>
                                <td id="td78"></td>
                            </tr>

                            <!--8th row-->
                            <tr>
                                <td id="td81"></td>
                                <td id="td82"></td>
                                <td id="td83"></td>
                                <td id="td84"></td>
                                <td id="td85"></td>
                                <td id="td86"></td>
                                <td id="td87"></td>
                                <td id="td88"></td>
                            </tr>

                            <!--9th row-->
                            <tr>
                                <td id="td91"></td>
                                <td id="td92"></td>
                                <td id="td93"></td>
                                <td id="td94"></td>
                                <td id="td95"></td>
                                <td id="td96"></td>
                                <td id="td97"></td>
                                <td id="td98"></td>
                            </tr>

                            <!--10th row-->
                            <tr>
                                <td id="td101"></td>
                                <td id="td102"></td>
                                <td id="td103"></td>
                                <td id="td104"></td>
                                <td id="td105"></td>
                                <td id="td106"></td>
                                <td id="td107"></td>
                                <td id="td108"></td>
                            </tr>

                            <!--11th row-->
                            <tr>
                                <td id="td111"></td>
                                <td id="td112"></td>
                                <td id="td113"></td>
                                <td id="td114"></td>
                                <td id="td115"></td>
                                <td id="td116"></td>
                                <td id="td117"></td>
                                <td id="td118"></td>
                            </tr>

                            <!--12th row-->
                            <tr>
                                <td id="td121"></td>
                                <td id="td122"></td>
                                <td id="td123"></td>
                                <td id="td124"></td>
                                <td id="td125"></td>
                                <td id="td126"></td>
                                <td id="td127"></td>
                                <td id="td128"></td>
                            </tr>

                            <!--13th row-->
                            <tr>
                                <td id="td131"></td>
                                <td id="td132"></td>
                                <td id="td133"></td>
                                <td id="td134"></td>
                                <td id="td135"></td>
                                <td id="td136"></td>
                                <td id="td137"></td>
                                <td id="td138"></td>
                            </tr>

                            <!--14th row-->
                            <tr>
                                <td id="td141"></td>
                                <td id="td142"></td>
                                <td id="td143"></td>
                                <td id="td144"></td>
                                <td id="td145"></td>
                                <td id="td146"></td>
                                <td id="td147"></td>
                                <td id="td148"></td>
                            </tr>

                            <!--15th row-->
                            <tr>
                                <td id="td151"></td>
                                <td id="td152"></td>
                                <td id="td153"></td>
                                <td id="td154"></td>
                                <td id="td155"></td>
                                <td id="td156"></td>
                                <td id="td157"></td>
                                <td id="td158"></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <script>
                        var td = document.getElementById('td71');
                        var bg = document.createElement('DIV');
                        bg.className='table_bg';
                        var text_wrap = document.createElement('SPAN');
                        var text = document.createTextNode('컴퓨터프로그래밍및실습');
                        text_wrap.appendChild(text);
                        text_wrap.style.fontSize = '0.8em';
                        text_wrap.style.fontSize = '0.75em';
                        bg.appendChild(text_wrap);
                        td.appendChild(bg);
                        var td = document.getElementById('td63');
                        var bg = document.createElement('DIV');
                        bg.className='table_bg';
                        var text_wrap = document.createElement('SPAN');
                        var text = document.createTextNode('자료구조');
                        text_wrap.appendChild(text);
                        text_wrap.style.fontSize = '0.8em';
                        text_wrap.style.fontSize = '0.8em';
                        bg.appendChild(text_wrap);
                        td.appendChild(bg);
                        var td = document.getElementById('td72');
                        var bg = document.createElement('DIV');
                        bg.className='table_bg';
                        var text_wrap = document.createElement('SPAN');
                        var text = document.createTextNode('객체지향');
                        var linebreak = document.createElement('br');
                        text_wrap.appendChild(text);
                        text_wrap.appendChild(linebreak);
                        jQuery(text_wrap).css('margin-top','-3px');
                        var text = document.createTextNode('프로그래밍및실습');
                        text_wrap.appendChild(text);
                        text_wrap.style.fontSize = '0.8em';
                        text_wrap.style.fontSize = '0.75em';
                        bg.appendChild(text_wrap);
                        td.appendChild(bg);
                        var td = document.getElementById('td115');
                        var bg = document.createElement('DIV');
                        bg.className='table_bg';
                        var text_wrap = document.createElement('SPAN');
                        var text = document.createTextNode('운영체제');
                        text_wrap.appendChild(text);
                        text_wrap.style.fontSize = '0.8em';
                        text_wrap.style.fontSize = '0.8em';
                        bg.appendChild(text_wrap);
                        td.appendChild(bg);
                        var td = document.getElementById('td86');
                        var bg = document.createElement('DIV');
                        bg.className='table_bg';
                        var text_wrap = document.createElement('SPAN');
                        var text = document.createTextNode('데이터베이스');
                        text_wrap.appendChild(text);
                        text_wrap.style.fontSize = '0.8em';
                        text_wrap.style.fontSize = '0.8em';
                        bg.appendChild(text_wrap);
                        td.appendChild(bg);
                        var td = document.getElementById('td26');
                        var bg = document.createElement('DIV');
                        bg.className='table_bg';
                        var text_wrap = document.createElement('SPAN');
                        var text = document.createTextNode('알고리즘');
                        text_wrap.appendChild(text);
                        text_wrap.style.fontSize = '0.8em';
                        text_wrap.style.fontSize = '0.8em';
                        bg.appendChild(text_wrap);
                        td.appendChild(bg);
                        var td = document.getElementById('td98');
                        var bg = document.createElement('DIV');
                        bg.className='table_bg';
                        var text_wrap = document.createElement('SPAN');
                        var text = document.createTextNode('창업현장실습1~2');
                        text_wrap.appendChild(text);
                        text_wrap.style.fontSize = '0.8em';
                        text_wrap.style.fontSize = '0.8em';
                        bg.appendChild(text_wrap);
                        td.appendChild(bg);
                        var td = document.getElementById('td81');
                        var bg = document.createElement('DIV');
                        bg.className='table_bg';
                        var text_wrap = document.createElement('SPAN');
                        var text = document.createTextNode('창의미디어');
                        text_wrap.appendChild(text);
                        text_wrap.style.fontSize = '0.8em';
                        text_wrap.style.fontSize = '0.8em';
                        bg.appendChild(text_wrap);
                        td.appendChild(bg);
                        var td = document.getElementById('td92');
                        var bg = document.createElement('DIV');
                        bg.className='table_bg';
                        var text_wrap = document.createElement('SPAN');
                        var text = document.createTextNode('발상과');
                        var linebreak = document.createElement('br');
                        text_wrap.appendChild(text);
                        text_wrap.appendChild(linebreak);
                        jQuery(text_wrap).css('margin-top','-3px');
                        var text = document.createTextNode('시각화');
                        text_wrap.appendChild(text);
                        text_wrap.style.fontSize = '0.8em';
                        text_wrap.style.fontSize = '0.8em';
                        bg.appendChild(text_wrap);
                        td.appendChild(bg);
                        var td = document.getElementById('td44');
                        var bg = document.createElement('DIV');
                        bg.className='table_bg';
                        var text_wrap = document.createElement('SPAN');
                        var text = document.createTextNode('3D캐릭터애니메이션');
                        text_wrap.appendChild(text);
                        text_wrap.style.fontSize = '0.8em';
                        text_wrap.style.fontSize = '0.8em';
                        bg.appendChild(text_wrap);
                        td.appendChild(bg);
                        var td = document.getElementById('td73');
                        var bg = document.createElement('DIV');
                        bg.className='table_bg';
                        var text_wrap = document.createElement('SPAN');
                        var text = document.createTextNode('스토리텔링');
                        text_wrap.appendChild(text);
                        text_wrap.style.fontSize = '0.8em';
                        text_wrap.style.fontSize = '0.8em';
                        bg.appendChild(text_wrap);
                        td.appendChild(bg);
                        var td = document.getElementById('td83');
                        var bg = document.createElement('DIV');
                        bg.className='table_bg';
                        var text_wrap = document.createElement('SPAN');
                        var text = document.createTextNode('미디어심리학');
                        text_wrap.appendChild(text);
                        text_wrap.style.fontSize = '0.8em';
                        text_wrap.style.fontSize = '0.8em';
                        bg.appendChild(text_wrap);
                        td.appendChild(bg);
                        var td = document.getElementById('td34');
                        var bg = document.createElement('DIV');
                        bg.className='table_bg';
                        var text_wrap = document.createElement('SPAN');
                        var text = document.createTextNode('비주얼커뮤니케이션');
                        var linebreak = document.createElement('br');
                        text_wrap.appendChild(text);
                        text_wrap.appendChild(linebreak);
                        jQuery(text_wrap).css('margin-top','-3px');
                        var text = document.createTextNode('디자인');
                        text_wrap.appendChild(text);
                        text_wrap.style.fontSize = '0.8em';
                        text_wrap.style.fontSize = '0.75em';
                        bg.appendChild(text_wrap);
                        td.appendChild(bg);
                        var td = document.getElementById('td55');
                        var bg = document.createElement('DIV');
                        bg.className='table_bg';
                        var text_wrap = document.createElement('SPAN');
                        var text = document.createTextNode('미디어융합연구');
                        text_wrap.appendChild(text);
                        text_wrap.style.fontSize = '0.8em';
                        text_wrap.style.fontSize = '0.8em';
                        bg.appendChild(text_wrap);
                        td.appendChild(bg);
                        var td = document.getElementById('td135');
                        var bg = document.createElement('DIV');
                        bg.className='table_bg';
                        var text_wrap = document.createElement('SPAN');
                        var text = document.createTextNode('3D캐릭터리깅');
                        text_wrap.appendChild(text);
                        text_wrap.style.fontSize = '0.8em';
                        text_wrap.style.fontSize = '0.8em';
                        bg.appendChild(text_wrap);
                        td.appendChild(bg);
                        var td = document.getElementById('td125');
                        var bg = document.createElement('DIV');
                        bg.className='table_bg';
                        var text_wrap = document.createElement('SPAN');
                        var text = document.createTextNode('영상처리');
                        text_wrap.appendChild(text);
                        text_wrap.style.fontSize = '0.8em';
                        text_wrap.style.fontSize = '0.8em';
                        bg.appendChild(text_wrap);
                        td.appendChild(bg);
                        var td = document.getElementById('td35');
                        var bg = document.createElement('DIV');
                        bg.className='table_bg';
                        var text_wrap = document.createElement('SPAN');
                        var text = document.createTextNode('GPU프로그래밍');
                        text_wrap.appendChild(text);
                        text_wrap.style.fontSize = '0.8em';
                        text_wrap.style.fontSize = '0.8em';
                        bg.appendChild(text_wrap);
                        td.appendChild(bg);
                        var td = document.getElementById('td127');
                        var bg = document.createElement('DIV');
                        bg.className='table_bg';
                        var text_wrap = document.createElement('SPAN');
                        var text = document.createTextNode('창업실습1~2');
                        text_wrap.appendChild(text);
                        text_wrap.style.fontSize = '0.8em';
                        text_wrap.style.fontSize = '0.8em';
                        bg.appendChild(text_wrap);
                        td.appendChild(bg);
                        var td = document.getElementById('td58');
                        var bg = document.createElement('DIV');
                        bg.className='table_bg';
                        var text_wrap = document.createElement('SPAN');
                        var text = document.createTextNode('해외인턴쉽1~2');
                        text_wrap.appendChild(text);
                        text_wrap.style.fontSize = '0.8em';
                        text_wrap.style.fontSize = '0.8em';
                        bg.appendChild(text_wrap);
                        td.appendChild(bg);
                        var td = document.getElementById('td68');
                        var bg = document.createElement('DIV');
                        bg.className='table_bg';
                        var text_wrap = document.createElement('SPAN');
                        var text = document.createTextNode('렌더링이론');
                        text_wrap.appendChild(text);
                        text_wrap.style.fontSize = '0.8em';
                        text_wrap.style.fontSize = '0.8em';
                        bg.appendChild(text_wrap);
                        td.appendChild(bg);
                        var td = document.getElementById('td124');
                        var bg = document.createElement('DIV');
                        bg.className='table_bg';
                        var text_wrap = document.createElement('SPAN');
                        var text = document.createTextNode('영상제작미학');
                        text_wrap.appendChild(text);
                        text_wrap.style.fontSize = '0.8em';
                        text_wrap.style.fontSize = '0.8em';
                        bg.appendChild(text_wrap);
                        td.appendChild(bg);
                        var td = document.getElementById('td64');
                        var bg = document.createElement('DIV');
                        bg.className='table_bg';
                        var text_wrap = document.createElement('SPAN');
                        var text = document.createTextNode('디지털타이포그래피');
                        text_wrap.appendChild(text);
                        text_wrap.style.fontSize = '0.8em';
                        text_wrap.style.fontSize = '0.8em';
                        bg.appendChild(text_wrap);
                        td.appendChild(bg);
                        var td = document.getElementById('td114');
                        var bg = document.createElement('DIV');
                        bg.className='table_bg';
                        var text_wrap = document.createElement('SPAN');
                        var text = document.createTextNode('미디어와창업');
                        text_wrap.appendChild(text);
                        text_wrap.style.fontSize = '0.8em';
                        text_wrap.style.fontSize = '0.8em';
                        bg.appendChild(text_wrap);
                        td.appendChild(bg);
                        var td = document.getElementById('td65');
                        var bg = document.createElement('DIV');
                        bg.className='table_bg';
                        var text_wrap = document.createElement('SPAN');
                        var text = document.createTextNode('게임엔진프로그래밍');
                        text_wrap.appendChild(text);
                        text_wrap.style.fontSize = '0.8em';
                        text_wrap.style.fontSize = '0.8em';
                        bg.appendChild(text_wrap);
                        td.appendChild(bg);
                        var td = document.getElementById('td134');
                        var bg = document.createElement('DIV');
                        bg.className='table_bg';
                        var text_wrap = document.createElement('SPAN');
                        var text = document.createTextNode('게임의이해');
                        text_wrap.appendChild(text);
                        text_wrap.style.fontSize = '0.8em';
                        text_wrap.style.fontSize = '0.8em';
                        bg.appendChild(text_wrap);
                        td.appendChild(bg);
                        var td = document.getElementById('td82');
                        var bg = document.createElement('DIV');
                        bg.className='table_bg';
                        var text_wrap = document.createElement('SPAN');
                        var text = document.createTextNode('그래픽디자인');
                        text_wrap.appendChild(text);
                        text_wrap.style.fontSize = '0.8em';
                        text_wrap.style.fontSize = '0.8em';
                        bg.appendChild(text_wrap);
                        td.appendChild(bg);
                        var td = document.getElementById('td103');
                        var bg = document.createElement('DIV');
                        bg.className='table_bg';
                        var text_wrap = document.createElement('SPAN');
                        var text = document.createTextNode('3D그래픽디자인');
                        text_wrap.appendChild(text);
                        text_wrap.style.fontSize = '0.8em';
                        text_wrap.style.fontSize = '0.8em';
                        bg.appendChild(text_wrap);
                        td.appendChild(bg);
                        var td = document.getElementById('td43');
                        var bg = document.createElement('DIV');
                        bg.className='table_bg';
                        var text_wrap = document.createElement('SPAN');
                        var text = document.createTextNode('디지털사운드기초');
                        text_wrap.appendChild(text);
                        text_wrap.style.fontSize = '0.8em';
                        text_wrap.style.fontSize = '0.8em';
                        bg.appendChild(text_wrap);
                        td.appendChild(bg);
                        var td = document.getElementById('td36');
                        var bg = document.createElement('DIV');
                        bg.className='table_bg';
                        var text_wrap = document.createElement('SPAN');
                        var text = document.createTextNode('정보디자인');
                        text_wrap.appendChild(text);
                        text_wrap.style.fontSize = '0.8em';
                        text_wrap.style.fontSize = '0.8em';
                        bg.appendChild(text_wrap);
                        td.appendChild(bg);
                        var td = document.getElementById('td67');
                        var bg = document.createElement('DIV');
                        bg.className='table_bg';
                        var text_wrap = document.createElement('SPAN');
                        var text = document.createTextNode('모션그래픽디자인');
                        text_wrap.appendChild(text);
                        text_wrap.style.fontSize = '0.8em';
                        text_wrap.style.fontSize = '0.8em';
                        bg.appendChild(text_wrap);
                        td.appendChild(bg);
                        var td = document.getElementById('td104');
                        var bg = document.createElement('DIV');
                        bg.className='table_bg';
                        var text_wrap = document.createElement('SPAN');
                        var text = document.createTextNode('3D어셋크리에이션');
                        text_wrap.appendChild(text);
                        text_wrap.style.fontSize = '0.8em';
                        text_wrap.style.fontSize = '0.8em';
                        bg.appendChild(text_wrap);
                        td.appendChild(bg);
                        var td = document.getElementById('td106');
                        var bg = document.createElement('DIV');
                        bg.className='table_bg';
                        var text_wrap = document.createElement('SPAN');
                        var text = document.createTextNode('VR스튜디오');
                        text_wrap.appendChild(text);
                        text_wrap.style.fontSize = '0.8em';
                        text_wrap.style.fontSize = '0.8em';
                        bg.appendChild(text_wrap);
                        td.appendChild(bg);
                        var td = document.getElementById('td95');
                        var bg = document.createElement('DIV');
                        bg.className='table_bg';
                        var text_wrap = document.createElement('SPAN');
                        var text = document.createTextNode('영상연출');
                        text_wrap.appendChild(text);
                        text_wrap.style.fontSize = '0.8em';
                        text_wrap.style.fontSize = '0.8em';
                        bg.appendChild(text_wrap);
                        td.appendChild(bg);
                        var td = document.getElementById('td46');
                        var bg = document.createElement('DIV');
                        bg.className='table_bg';
                        var text_wrap = document.createElement('SPAN');
                        var text = document.createTextNode('영상편집론');
                        text_wrap.appendChild(text);
                        text_wrap.style.fontSize = '0.8em';
                        text_wrap.style.fontSize = '0.8em';
                        bg.appendChild(text_wrap);
                        td.appendChild(bg);
                        var td = document.getElementById('td94');
                        var bg = document.createElement('DIV');
                        bg.className='table_bg';
                        var text_wrap = document.createElement('SPAN');
                        var text = document.createTextNode('컴퓨터그래픽스');
                        text_wrap.appendChild(text);
                        text_wrap.style.fontSize = '0.8em';
                        text_wrap.style.fontSize = '0.8em';
                        bg.appendChild(text_wrap);
                        td.appendChild(bg);
                        var td = document.getElementById('td66');
                        var bg = document.createElement('DIV');
                        bg.className='table_bg';
                        var text_wrap = document.createElement('SPAN');
                        var text = document.createTextNode('미디어집중교육1');
                        text_wrap.appendChild(text);
                        text_wrap.style.fontSize = '0.8em';
                        text_wrap.style.fontSize = '0.8em';
                        bg.appendChild(text_wrap);
                        td.appendChild(bg);
                        var td = document.getElementById('td47');
                        var bg = document.createElement('DIV');
                        bg.className='table_bg';
                        var text_wrap = document.createElement('SPAN');
                        var text = document.createTextNode('미디어집중교육2');
                        text_wrap.appendChild(text);
                        text_wrap.style.fontSize = '0.8em';
                        text_wrap.style.fontSize = '0.8em';
                        bg.appendChild(text_wrap);
                        td.appendChild(bg);
                        var td = document.getElementById('td37');
                        var bg = document.createElement('DIV');
                        bg.className='table_bg';
                        var text_wrap = document.createElement('SPAN');
                        var text = document.createTextNode('영상사운드제작');
                        text_wrap.appendChild(text);
                        text_wrap.style.fontSize = '0.8em';
                        text_wrap.style.fontSize = '0.8em';
                        bg.appendChild(text_wrap);
                        td.appendChild(bg);
                        var td = document.getElementById('td76');
                        var bg = document.createElement('DIV');
                        bg.className='table_bg';
                        var text_wrap = document.createElement('SPAN');
                        var text = document.createTextNode('공간음향제작');
                        text_wrap.appendChild(text);
                        text_wrap.style.fontSize = '0.8em';
                        text_wrap.style.fontSize = '0.8em';
                        bg.appendChild(text_wrap);
                        td.appendChild(bg);
                        var td = document.getElementById('td116');
                        var bg = document.createElement('DIV');
                        bg.className='table_bg';
                        var text_wrap = document.createElement('SPAN');
                        var text = document.createTextNode('인터랙션디자인');
                        text_wrap.appendChild(text);
                        text_wrap.style.fontSize = '0.8em';
                        text_wrap.style.fontSize = '0.8em';
                        bg.appendChild(text_wrap);
                        td.appendChild(bg);
                        var td = document.getElementById('td57');
                        var bg = document.createElement('DIV');
                        bg.className='table_bg';
                        var text_wrap = document.createElement('SPAN');
                        var text = document.createTextNode('UX디자인');
                        text_wrap.appendChild(text);
                        text_wrap.style.fontSize = '0.8em';
                        text_wrap.style.fontSize = '0.8em';
                        bg.appendChild(text_wrap);
                        td.appendChild(bg);
                        var td = document.getElementById('td105');
                        var bg = document.createElement('DIV');
                        bg.className='table_bg';
                        var text_wrap = document.createElement('SPAN');
                        var text = document.createTextNode('영상합성');
                        text_wrap.appendChild(text);
                        text_wrap.style.fontSize = '0.8em';
                        text_wrap.style.fontSize = '0.8em';
                        bg.appendChild(text_wrap);
                        td.appendChild(bg);
                        var td = document.getElementById('td88');
                        var bg = document.createElement('DIV');
                        bg.className='table_bg';var text_wrap = document.createElement('SPAN');var text = document.createTextNode('미디어현장실습1~6');text_wrap.appendChild(text);text_wrap.style.fontSize = '0.8em';text_wrap.style.fontSize = '0.8em';bg.appendChild(text_wrap);td.appendChild(bg);var td = document.getElementById('td87');var bg = document.createElement('DIV');bg.className='table_bg';var text_wrap = document.createElement('SPAN');var text = document.createTextNode('애니메이션이론');text_wrap.appendChild(text);text_wrap.style.fontSize = '0.8em';text_wrap.style.fontSize = '0.8em';bg.appendChild(text_wrap);td.appendChild(bg);var td = document.getElementById('td78');var bg = document.createElement('DIV');bg.className='table_bg';var text_wrap = document.createElement('SPAN');var text = document.createTextNode('미디어경영');text_wrap.appendChild(text);text_wrap.style.fontSize = '0.8em';text_wrap.style.fontSize = '0.8em';bg.appendChild(text_wrap);td.appendChild(bg);var td = document.getElementById('td75');var bg = document.createElement('DIV');bg.className='table_bg';var text_wrap = document.createElement('SPAN');var text = document.createTextNode('미디어산업혁명기획');text_wrap.appendChild(text);text_wrap.style.fontSize = '0.8em';text_wrap.style.fontSize = '0.8em';bg.appendChild(text_wrap);td.appendChild(bg);var td = document.getElementById('td108');var bg = document.createElement('DIV');bg.className='table_bg';var text_wrap = document.createElement('SPAN');var text = document.createTextNode('인터네셔널세미나');text_wrap.appendChild(text);text_wrap.style.fontSize = '0.8em';text_wrap.style.fontSize = '0.8em';bg.appendChild(text_wrap);td.appendChild(bg);var td = document.getElementById('td77');var bg = document.createElement('DIV');bg.className='table_bg';var text_wrap = document.createElement('SPAN');var text = document.createTextNode('미디어프로젝트');text_wrap.appendChild(text);text_wrap.style.fontSize = '0.8em';text_wrap.style.fontSize = '0.8em';bg.appendChild(text_wrap);td.appendChild(bg);var td = document.getElementById('td11');var bg = document.createElement('DIV');bg.className='table_bg';var text_wrap = document.createElement('SPAN');var text = document.createTextNode('수학1');text_wrap.appendChild(text);text_wrap.style.fontSize = '0.8em';text_wrap.style.fontSize = '0.8em';bg.appendChild(text_wrap);td.appendChild(bg);var td = document.getElementById('td12');var bg = document.createElement('DIV');bg.className='table_bg';var text_wrap = document.createElement('SPAN');var text = document.createTextNode('확률및통계1');text_wrap.appendChild(text);text_wrap.style.fontSize = '0.8em';text_wrap.style.fontSize = '0.8em';bg.appendChild(text_wrap);td.appendChild(bg);var td = document.getElementById('td45');var bg = document.createElement('DIV');bg.className='table_bg';var text_wrap = document.createElement('SPAN');var text = document.createTextNode('인포그래픽스');text_wrap.appendChild(text);text_wrap.style.fontSize = '0.8em';text_wrap.style.fontSize = '0.8em';bg.appendChild(text_wrap);td.appendChild(bg);var td = document.getElementById('td117');var bg = document.createElement('DIV');bg.className='table_bg';var text_wrap = document.createElement('SPAN');var text = document.createTextNode('해외봉사실천1~2');text_wrap.appendChild(text);text_wrap.style.fontSize = '0.8em';text_wrap.style.fontSize = '0.8em';bg.appendChild(text_wrap);td.appendChild(bg);var td = document.getElementById('td53');var bg = document.createElement('DIV');bg.className='table_bg';var text_wrap = document.createElement('SPAN');var text = document.createTextNode('미디어통계');text_wrap.appendChild(text);text_wrap.style.fontSize = '0.8em';text_wrap.style.fontSize = '0.8em';bg.appendChild(text_wrap);td.appendChild(bg);var td = document.getElementById('td74');var bg = document.createElement('DIV');bg.className='table_bg';var text_wrap = document.createElement('SPAN');var text = document.createTextNode('미디어애널리틱스');text_wrap.appendChild(text);text_wrap.style.fontSize = '0.8em';text_wrap.style.fontSize = '0.8em';bg.appendChild(text_wrap);td.appendChild(bg);var td = document.getElementById('td85');var bg = document.createElement('DIV');bg.className='table_bg';var text_wrap = document.createElement('SPAN');var text = document.createTextNode('미디어조사방법론');text_wrap.appendChild(text);text_wrap.style.fontSize = '0.8em';text_wrap.style.fontSize = '0.8em';bg.appendChild(text_wrap);td.appendChild(bg);var td = document.getElementById('td93');var bg = document.createElement('DIV');bg.className='table_bg';var text_wrap = document.createElement('SPAN');var text = document.createTextNode('모바일프로그래밍');text_wrap.appendChild(text);text_wrap.style.fontSize = '0.8em';text_wrap.style.fontSize = '0.8em';bg.appendChild(text_wrap);td.appendChild(bg);var td = document.getElementById('td96');var bg = document.createElement('DIV');bg.className='table_bg';var text_wrap = document.createElement('SPAN');var text = document.createTextNode('데이터사이언스개론');text_wrap.appendChild(text);text_wrap.style.fontSize = '0.8em';text_wrap.style.fontSize = '0.8em';bg.appendChild(text_wrap);td.appendChild(bg);var td = document.getElementById('td54');var bg = document.createElement('DIV');bg.className='table_bg';var text_wrap = document.createElement('SPAN');var text = document.createTextNode('미디어융합기획');text_wrap.appendChild(text);text_wrap.style.fontSize = '0.8em';text_wrap.style.fontSize = '0.8em';bg.appendChild(text_wrap);td.appendChild(bg);var td = document.getElementById('td97');var bg = document.createElement('DIV');bg.className='table_bg';var text_wrap = document.createElement('SPAN');var text = document.createTextNode('데이터시각화');text_wrap.appendChild(text);text_wrap.style.fontSize = '0.8em';text_wrap.style.fontSize = '0.8em';bg.appendChild(text_wrap);td.appendChild(bg);var td = document.getElementById('td107');var bg = document.createElement('DIV');bg.className='table_bg';var text_wrap = document.createElement('SPAN');var text = document.createTextNode('시리어스게임분석');text_wrap.appendChild(text);text_wrap.style.fontSize = '0.8em';text_wrap.style.fontSize = '0.8em';bg.appendChild(text_wrap);td.appendChild(bg);var td = document.getElementById('td84');var bg = document.createElement('DIV');bg.className='table_bg';var text_wrap = document.createElement('SPAN');var text = document.createTextNode('뉴미디어와');var linebreak = document.createElement('br');text_wrap.appendChild(text);text_wrap.appendChild(linebreak);jQuery(text_wrap).css('margin-top','-3px');var text = document.createTextNode('디지털방송');text_wrap.appendChild(text);text_wrap.style.fontSize = '0.8em';text_wrap.style.fontSize = '0.75em';bg.appendChild(text_wrap);td.appendChild(bg);var td = document.getElementById('td56');var bg = document.createElement('DIV');bg.className='table_bg';var text_wrap = document.createElement('SPAN');var text = document.createTextNode('컴퓨터비젼');text_wrap.appendChild(text);text_wrap.style.fontSize = '0.8em';text_wrap.style.fontSize = '0.8em';bg.appendChild(text_wrap);td.appendChild(bg);var td = document.getElementById('td24');var bg = document.createElement('DIV');bg.className='table_bg';var text_wrap = document.createElement('SPAN');var text = document.createTextNode('크리에이티브미디어');var linebreak = document.createElement('br');text_wrap.appendChild(text);text_wrap.appendChild(linebreak);jQuery(text_wrap).css('margin-top','-3px');var text = document.createTextNode('프로그래밍');var linebreak = document.createElement('br');text_wrap.appendChild(text);text_wrap.appendChild(linebreak);jQuery(text_wrap).css('margin-top','-6px');var text = document.createTextNode('');text_wrap.appendChild(text);text_wrap.style.fontSize = '0.8em';text_wrap.style.fontSize = '0.75em';bg.appendChild(text_wrap);td.appendChild(bg);var td = document.getElementById('td25');var bg = document.createElement('DIV');bg.className='table_bg';var text_wrap = document.createElement('SPAN');var text = document.createTextNode('몰입형미디어');var linebreak = document.createElement('br');text_wrap.appendChild(text);text_wrap.appendChild(linebreak);jQuery(text_wrap).css('margin-top','-3px');var text = document.createTextNode('프로그래밍');var linebreak = document.createElement('br');text_wrap.appendChild(text);text_wrap.appendChild(linebreak);jQuery(text_wrap).css('margin-top','-6px');var text = document.createTextNode('');text_wrap.appendChild(text);text_wrap.style.fontSize = '0.8em';text_wrap.style.fontSize = '0.75em';bg.appendChild(text_wrap);td.appendChild(bg);var td = document.getElementById('td27');var bg = document.createElement('DIV');bg.className='table_bg';var text_wrap = document.createElement('SPAN');var text = document.createTextNode('미디어소프트웨어');var linebreak = document.createElement('br');text_wrap.appendChild(text);text_wrap.appendChild(linebreak);jQuery(text_wrap).css('margin-top','-3px');var text = document.createTextNode('엔지니어링');var linebreak = document.createElement('br');text_wrap.appendChild(text);text_wrap.appendChild(linebreak);jQuery(text_wrap).css('margin-top','-6px');var text = document.createTextNode('');text_wrap.appendChild(text);text_wrap.style.fontSize = '0.8em';text_wrap.style.fontSize = '0.75em';bg.appendChild(text_wrap);td.appendChild(bg);var td = document.getElementById('td137');var bg = document.createElement('DIV');bg.className='table_bg';var text_wrap = document.createElement('SPAN');var text = document.createTextNode('기계학습');text_wrap.appendChild(text);text_wrap.style.fontSize = '0.8em';text_wrap.style.fontSize = '0.8em';bg.appendChild(text_wrap);td.appendChild(bg);var td = document.getElementById('td48');var bg = document.createElement('DIV');bg.className='table_bg';var text_wrap = document.createElement('SPAN');var text = document.createTextNode('데이터마이닝');text_wrap.appendChild(text);text_wrap.style.fontSize = '0.8em';text_wrap.style.fontSize = '0.8em';bg.appendChild(text_wrap);td.appendChild(bg);var td = document.getElementById('td126');var bg = document.createElement('DIV');bg.className='table_bg';var text_wrap = document.createElement('SPAN');var text = document.createTextNode('인디게임제작');text_wrap.appendChild(text);text_wrap.style.fontSize = '0.8em';text_wrap.style.fontSize = '0.8em';bg.appendChild(text_wrap);td.appendChild(bg);
                    </script>
                    <script>
                        jQuery('#td34').find('div').css({'background-color': '#3462DC'});jQuery('#td64').find('div').css({'background-color': '#3462DC'});jQuery('#td36').find('div').css({'background-color': '#3462DC'});jQuery('#td67').find('div').css({'background-color': '#3462DC'});jQuery('#').find('div').css({'background-color': '#3462DC'});jQuery('#td116').find('div').css({'background-color': '#3462DC'});jQuery('#td57').find('div').css({'background-color': '#3462DC'});jQuery('#td45').find('div').css({'background-color': '#3462DC'});jQuery('#td85').find('div').css({'background-color': '#3462DC'});jQuery('#td54').find('div').css({'background-color': '#3462DC'});jQuery('#td97').find('div').css({'background-color': '#3462DC'});jQuery('#td71').find('div').css({'background-color': '#3462DC80'});jQuery('#td82').find('div').css({'background-color': '#3462DC80'});jQuery('#td77').find('div').css({'background-color': '#3462DC80'});
                    </script>
                </div>

                <div style="width: 7%;">
                </div>

                <div class="setting_block_right">
                    <section class="regidit_subject-type">
                        <span class="setting_title">과목 Type 설정</span>
                        <br/>
                        <input type="hidden" name="page_id" value=701>
                        <input type="hidden" name="track" value=media_contents>
                        <input type="hidden" name="td_id">
                        <br/>
                        <div style="display: flex;">
                            <input type="radio" name="milpage_subject_type" value="core">Core
                        </div>
                        <div style="display: flex;">
                            <input type="radio" name="milpage_subject_type" value="support">Support
                        </div>
                        <br/>
                        <button type="button" class="mil_btn mil_green_btn milpage_regidit_type_button">등록</button>
                        <button type="button" class="mil_btn mil_blue_btn milpage_modify_type_button">수정</button>
                        <button type="button" class="mil_btn mil_red_btn milpage_delete_type_button">삭제</button>
                    </section>
                </div>
            </div>
            <div class="close" onclick="close_pop_subject();">
                <span class="close_btn">close</span>
            </div>
        </div>
        <div class="Modal Modal_modify" id="Modal_modify">
            <div class="page">
            </div>
            <div class="close" onclick="close_pop_modify();">
                <span class="close_btn">close</span>
            </div>
        </div>
        <div class="Modal Modal_enter" id="Modal_enter">
            <div class="page">
            </div>
            <div class="close" onclick="close_pop_enter();">
                <span class="close_btn">close</span>
            </div>
        </div>

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
    var commonL10n = {"warnDelete":"\uc774\ub4e4 \uc544\uc774\ud15c\uc744 \uc601\uad6c\uc801\uc73c\ub85c \uc0ad\uc81c\ud558\ub824\uace0 \ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.\n  \uc911\uc9c0\ud558\ub824\uba74 '\ucde8\uc18c'\ub97c, \uc0ad\uc81c\ub294 'OK'.","dismiss":"\uc774 \uc54c\ub9bc \ubb34\uc2dc\ud558\uae30."};var heartbeatSettings = {"nonce":"db69962c6b"};var authcheckL10n = {"beforeunload":"\uc138\uc158\uc774 \ub9cc\ub8cc\ub410\uc2b5\ub2c8\ub2e4. \uc774 \ud398\uc774\uc9c0\uc5d0\uc11c \ub2e4\uc2dc \ub85c\uadf8\uc778\ud558\uac70\ub098 \ub85c\uadf8\uc778 \ud398\uc774\uc9c0\ub85c \uc774\ub3d9\ud560 \uc218 \uc788\uc2b5\ub2c8\ub2e4.","interval":"180"};/* ]]> */
</script>
<script type='text/javascript' src='http://media-jobs.ajou.ac.kr/wordpress/wp-admin/load-scripts.php?c=0&amp;load%5B%5D=hoverIntent,common,admin-bar,svg-painter,heartbeat,wp-auth-check&amp;ver=4.6'></script>
<script type="text/javascript">if(typeof wpOnload=='function')wpOnload();</script>

</body>
</html>
