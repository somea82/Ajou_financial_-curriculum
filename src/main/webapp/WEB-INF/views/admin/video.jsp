<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin/video.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/includeHTML.js"></script>
    <script src="${pageContext.request.contextPath}/webapp/resources/js/pop-up.js"></script>

    <script src="${pageContext.request.contextPath}/resources/js/admin/adminVideo.js"></script>

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
<div class="setting_mentor_video_wrap">
    <p class="form_title">전문가영상관리</p>
    <div id="setting_mentor_video">
        <p class="form_subtitle">전문가 영상 관리 Tab</p>
        </br></br>
        <form id="create_mentor_video_form">
            <input type="hidden" name="track" value="" />
            <div class="row">
                <span class="input-addon">영상 제목</span>
                <input
                        type="text"
                        class="input-text input-addon-select"
                        name="video_title"
                        id="video_title"
                        placeholder="ex) 전문가1. 게임프로그래머"
                        value=""
                />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <select id="set_video" class="select-addon" name="set_video" onchange="getVideoDetail(this.value)">
                    <option disabled selected value>수정할 영상 선택</option>
                    <option value="0">선택없음</option>
                    <c:set var="index" value="0"/>
                    <c:forEach var="videoList" items="${videoList}">
                        <option value="${videoList.id}">
                            <c:out value="${videoList.video_title}"/>
                        </option>
                        <c:set var="index" value="${index+1}"/>
                    </c:forEach>
                </select>
            </div>

            <br />

            <div class="row">
                <span class="input-addon">영상 링크 ID </span>
                <input
                        type="text"
                        class="input-text"
                        name="video_link"
                        id="video_link"
                        placeholder="ex) rCeM57e2BfU"
                        value=""
                />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span style="font-size: 0.7rem">※ https://youtu.be/<span class="highlight" style="color: #3462dc">rCeM57e2BfU</span></span>
                <input type="hidden" name="thumbnail_url" value="" />
            </div>
        </form>

        <div class="row">
            <span class="input-addon">영상 썸네일 이미지 추가</span>
            <div class="column">
                <form
                        id="image_upload_form"
                        enctype="multipart/form-data"
                        method="post">
                    <br />
                    <img src="" class="thumbnail_uploaded" id="thumbnail_url">
                    <input
                            id="input-file-video"
                            class="input-file"
                            type="file"
                            name="upload"
                            value="업로드된 파일: 없음"
                    />
                    <input type="hidden" name="upload_check" value="" />
                    <br />
                </form>
                <span class="description">업로드할 사진파일(png)을 선택하세요. </span>
            </div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span class="highlight" style="font-size: 0.7rem; color: #3462dc">※영문 파일명 사용</span>
        </div>
        </br>
        <div class="row">
            <form id="job_select_form">
                <span class="input-addon">직무 선택</span><br />
                <div id="job_name" name="job_name">
                    <select id="job1" class="select-addon">
                        <option disabled selected value>대분류 선택</option>
                        <option value="선택없음">선택없음</option>
                    </select>
                    <select id="job2" class="select-addon">
                        <option disabled selected value>트랙 선택</option>
                        <option value="선택없음">선택없음</option>
                        <option value="GI">게임&인터렉티브 콘텐츠</option>
                        <option value="CD">콘텐츠 디자인</option>
                        <option value="DE">디지털 엔터테인먼트</option>
                        <option value="VC">비주얼 컴퓨팅</option>
                        <option value="MD">미디어 데이터</option>
                    </select>
                    <select id="job3" class="select-addon">
                        <option disabled selected value>직무(능력단위) 선택</option>
                        <option value="선택없음">선택없음</option>
                        <option value="게임기획자">게임기획자</option>
                        <option value="게임프로그래머">게임프로그래머</option>
                        <option value="게임그래픽디자이너">게임그래픽디자이너</option>
                        <option value="게임사운드디자이너">게임사운드디자이너</option>
                        <option value="앱개발자">앱개발자</option>
                        <option value="웹사이트디자인">웹사이트디자인</option>
                        <option value="휴먼인터랙션디자인">휴먼인터랙션디자인</option>
                        <option value="사용자인터페이스디자인">사용자인터페이스디자인</option>
                        <option value="디지털간행물디자인">디지털간행물디자인</option>
                        <option value="영상연출가">영상연출가</option>
                        <option value="제작PD">제작PD</option>
                        <option value="브랜드디자이너(OAP)">브랜드디자이너(OAP)</option>
                        <option value="CG아티스트">CG아티스트</option>
                        <option value="모션그래픽디자이너">모션그래픽디자이너</option>
                        <option value="사운드슈퍼바이저">사운드슈퍼바이저</option>
                        <option value="미디어 대학원">미디어 대학원</option>
                        <option value="테크니컬 디렉터">테크니컬 디렉터</option>
                        <option value="테크니컬 아티스트">테크니컬 아티스트</option>
                        <option value="그래픽 관련 소프트웨어 개발">그래픽 관련 소프트웨어 개발</option>
                        <option value="데이터사이언스 대학원">데이터사이언스 대학원</option>
                    </select>
                    <!-- <script>
                       jQuery(document).ready(function () {
                          var job_category_name = jQuery("#text-12")
                             .find(".widget_title")
                             .text();
                          var job_category_btn =
                             jQuery("<button>").text(job_category_name);
                          job_category_btn.addClass("job_category_btn");
                          var job_category_div = jQuery("<div>").append(job_category_btn);
                          jQuery("#job_name").append(job_category_div);

                          var job_page_links = jQuery("#text-12").find("a");
                          for (var i = 0; i < job_page_links.length; i++) {
                             var job_name = jQuery(job_page_links[i]).text();
                             var wrap = jQuery("<div>").addClass("wrap-checkbox");
                             var label = jQuery("<label>").attr(
                                "for",
                                "checkbox-" + job_name
                             );
                             var input = jQuery("<input>").attr({
                                type: "checkbox",
                                name: "job_name[]",
                                id: "checkbox-" + job_name,
                                value: job_name,
                             });

                             jQuery(wrap).append(input);
                             jQuery(wrap).append(label);
                             jQuery(job_category_div).append(wrap);
                             label.html(job_name + " &nbsp;&nbsp;&nbsp;");
                             input.css("margin-top", "1px");
                             wrap.css({ "white-space": "nowrap", margin: "7px 3px" });
                          }
                          var job_category_name = jQuery("#nav_menu-41")
                             .find(".widget_title")
                             .text();
                          var job_category_btn =
                             jQuery("<button>").text(job_category_name);
                             job_category_btn.addClass("job_category_btn");
                          var job_category_div = jQuery("<div>").append(job_category_btn);
                          jQuery("#job_name").append(job_category_div);

                          var job_page_links = jQuery("#nav_menu-41").find("a");
                          for (var i = 0; i < job_page_links.length; i++) {
                             var job_name = jQuery(job_page_links[i]).text();
                             var wrap = jQuery("<div>").addClass("wrap-checkbox");
                             var label = jQuery("<label>").attr(
                                "for",
                                "checkbox-" + job_name
                             );
                             var input = jQuery("<input>").attr({
                                type: "checkbox",
                                name: "job_name[]",
                                id: "checkbox-" + job_name,
                                value: job_name,
                             });

                             jQuery(wrap).append(input);
                             jQuery(wrap).append(label);
                             jQuery(job_category_div).append(wrap);
                             label.html(job_name + " &nbsp;&nbsp;&nbsp;");
                             input.css("margin-top", "1px");
                             wrap.css({ "white-space": "nowrap", margin: "7px 3px" });
                          }
                          var job_category_name = jQuery("#text-14")
                             .find(".widget_title")
                             .text();
                          var job_category_btn =
                             jQuery("<button>").text(job_category_name);
                             job_category_btn.addClass("job_category_btn");
                          var job_category_div = jQuery("<div>").append(job_category_btn);
                          jQuery("#job_name").append(job_category_div);

                          var job_page_links = jQuery("#text-14").find("a");
                          for (var i = 0; i < job_page_links.length; i++) {
                             var job_name = jQuery(job_page_links[i]).text();
                             var wrap = jQuery("<div>").addClass("wrap-checkbox");
                             var label = jQuery("<label>").attr(
                                "for",
                                "checkbox-" + job_name
                             );
                             var input = jQuery("<input>").attr({
                                type: "checkbox",
                                name: "job_name[]",
                                id: "checkbox-" + job_name,
                                value: job_name,
                             });

                             jQuery(wrap).append(input);
                             jQuery(wrap).append(label);
                             jQuery(job_category_div).append(wrap);
                             label.html(job_name + " &nbsp;&nbsp;&nbsp;");
                             input.css("margin-top", "1px");
                             wrap.css({ "white-space": "nowrap", margin: "7px 3px" });
                          }

                          var boxes = jQuery(".job_category_btn").parent().find("input");
                          boxes.each(function (index, elem) {
                             var div = jQuery(elem).parent();
                             var job_category_btn = div.siblings("button");
                             if (
                                jQuery(elem).attr("checked") &&
                                !job_category_btn.hasClass("have-some-jobs")
                             )
                             job_category_btn.addClass("have-some-jobs");
                          });

                          jQuery(".job_category_btn").on(
                             "mouseenter mouseleave click",
                             function (e) {
                                if (e.type == "mouseenter")
                                   jQuery(this).css("font-weight", "bold");
                                else if (e.type == "mouseleave")
                                   jQuery(this).css("font-weight", "normal");
                                else if (e.type == "click") {
                                   e.preventDefault();
                                   jQuery(this)
                                      .parent()
                                      .find(".wrap-checkbox")
                                      .toggleClass("wrap-checkbox-active");
                                }
                             }
                          );
                       });
                    </script> -->
                </div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </form>
        </div>
        </br></br>
        <button type="button" class="ii_btn create_mentor_video_button">
            전문가 영상 추가하기
        </button>
    </div>
</div>

<div class="left_menu">
    <meta name="viewport" content="height=device-height">
    <jsp:include page="./include/menu.jsp" />
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
<script type="text/javascript">if(typeof wpOnload=='function')wpOnload();</script>
</body>
</html>