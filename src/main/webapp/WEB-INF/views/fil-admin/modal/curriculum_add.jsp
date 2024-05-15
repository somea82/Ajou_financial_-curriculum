<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fil/css/admin/curriculum.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/includeHTML.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/pop-up.js"></script>
    <script src="${pageContext.request.contextPath}/resources/fil/js/curriculum.js"></script>

</head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<body>

    <form id="admin_create_curriculum_page_form">

        <input type="hidden" name="page_type" value="create">
        <input type="hidden" name="page_id">

        <div class="page">
            <span class="setting_title">교과과정표 설정</span>
            <div class="close" onclick="close_pop_add();">
                <span class="close_btn" style="cursor: pointer;"> X </span>
            </div>

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
                            <label class="game">Finance Track&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                            <input class="digital-film" type="checkbox" name="milpage_page_type[]" value="df">
                            <label class="digital-film">Programming Track</label>
                        </div>
                        <span id="explain1">이 교육과정이 포함하고 있는 트랙을 선택해주세요. (중복 가능)</span>
                    </div>
                </div>
                <div class="row3">
                    <span class="major-details">Major details</span>
                    <div class="select">
                        <select class="selection" name="milpage_major_type">
                            <option value="digital_media" selected='selected'>&nbsp; 금융공학 전공 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
                            <option value="digital_media">&nbsp; 금융공학 전공 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
                            <option value="digital_media">&nbsp; 금융공학 전공 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
                            <option value="digital_media">&nbsp; 금융공학 전공 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
                        </select>
                        <div><span class="explain1">이 교육과정이 속해 있는 세부 전공을 선택해주세요</span></div>
                    </div>
                </div>
            </div>
            <br></br>
            <div class="bottom">
                <button type="button" class="mil_btn mil_green_btn mil_create_page_button" style="cursor: pointer">페이지 생성</button>
            </div>
        </div>
    </form>


</body>
</html>