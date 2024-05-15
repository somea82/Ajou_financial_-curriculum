<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin/main-dash.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/includeHTML.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/pop-up.js"></script>
</head>
<header>
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <jsp:include page="../include/menu.jsp" />
</header>
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

    <div class="dashboard_wrap">
        <div style="display: flex;">
            <p class="title">대시보드</p>
            <div class="date">
                <input type="date" name="schedule" min="2020.01.01" max="2024.12.31" />
            </div>
        </div>

        <div class="content_box">
            <div class="join">
                <p>가입자 수</p>
                <p id="number">2,481</p>
                <p id="today-number">(12)</p>

            </div>
            <div class="mentor">
                <p>멘토 수</p>
                <p id="number">397</p>

            </div>
            <div class="average-connect">
                <p>평균 접속 시간</p>
                <p id="number">34</p>

            </div>
            <div class="secession">
                <p>탈퇴한 회원 수</p>
                <p id="number">1</p>

            </div>
            <div class="student-id">
                <p>학번 별 회원 수</p>

            </div>
        </div>
    </div>

    <div class="row">
        <div class="tutorial_wrap">
            <p class="title">튜토리얼</p>
            <div class="content_box">

            </div>
        </div>
        <div class="announcement_wrap">
            <p class="title">공지사항</p>
            <div class="content_box">
                <div class="list5">
                    <p id="number">5</p>
                    <p id="title">공지제목 입니다</p>
                    <p id="date">2023.02.20</p>
                </div>
                <div class="list4">
                    <p id="number">4</p>
                    <p id="title">공지제목 입니다</p>
                    <p id="date">2023.02.20</p>
                </div>
                <div class="list3">
                    <p id="number">3</p>
                    <p id="title">공지제목 입니다</p>
                    <p id="date">2023.02.20</p>
                </div>
                <div class="list2">
                    <p id="number">2</p>
                    <p id="title">공지제목 입니다</p>
                    <p id="date">2023.02.20</p>
                </div>
                <div class="list1">
                    <p id="number">1</p>
                    <p id="title">공지제목 입니다</p>
                    <p id="date">2023.02.20</p>
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
    var commonL10n = {"warnDelete":"\uc774\ub4e4 \uc544\uc774\ud15c\uc744 \uc601\uad6c\uc801\uc73c\ub85c \uc0ad\uc81c\ud558\ub824\uace0 \ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.\n  \uc911\uc9c0\ud558\ub824\uba74 '\ucde8\uc18c'\ub97c, \uc0ad\uc81c\ub294 'OK'.","dismiss":"\uc774 \uc54c\ub9bc \ubb34\uc2dc\ud558\uae30."};var heartbeatSettings = {"nonce":"04d416c604"};var authcheckL10n = {"beforeunload":"\uc138\uc158\uc774 \ub9cc\ub8cc\ub410\uc2b5\ub2c8\ub2e4. \uc774 \ud398\uc774\uc9c0\uc5d0\uc11c \ub2e4\uc2dc \ub85c\uadf8\uc778\ud558\uac70\ub098 \ub85c\uadf8\uc778 \ud398\uc774\uc9c0\ub85c \uc774\ub3d9\ud560 \uc218 \uc788\uc2b5\ub2c8\ub2e4.","interval":"180"};/* ]]> */
</script>
<script type='text/javascript' src='http://media-jobs.ajou.ac.kr/wordpress/wp-admin/load-scripts.php?c=0&amp;load%5B%5D=hoverIntent,common,admin-bar,svg-painter,heartbeat,wp-auth-check&amp;ver=4.6'></script>
</body>
</html>
</body>
</html>