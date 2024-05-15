<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin/mentor.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/includeHTML.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/pop-up.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/admin/adminMentor.js"></script>
</head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<body>

<div class="setting_mentor_wrap">
    <p class="form_title">멘토관리</p>
    <div id="setting_mentor">
        <p class="form_subtitle">멘토 관리 Tab</p>
        </br></br>
        <form id="create_mentor_form">
            <input type="hidden" name="track" value="" />
            <div class="row">
                <span class="input-addon">멘토 이름</span>
                <input
                        type="text"
                        class="input-text input-addon-select"
                        name="mentor_name"
                        id = "mentor_name"
                        placeholder="멘토 이름을 입력하세요"
                        value="${mentorDetailList.name}"
                />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <select id="set_mentor" class="select-addon" name="set_mentor" onchange="getMentorDetail(this.value)">
                    <option disabled selected value>수정할 멘토 이름 선택</option>
                    <option value="0">선택없음</option>
                    <c:set var="index" value="0"/>
                    <c:forEach var="mentorList" items="${mentorList}">
                            <option value="${mentorList.id}">
                                <c:out value="${mentorList.industry_name}"/>
                                &nbsp;
                                <c:out value="${mentorList.name}"/>
                            </option>
                        <c:set var="index" value="${index+1}"/>
                    </c:forEach>
                </select>
                <br><br>

                <input type="hidden" name="user-id" id="user-id" value="" />
            </div>

            <br />

            <div class="row">
                <span class="input-addon">소속 기업 이름 </span>
                <input
                        type="text"
                        class="input-text"
                        name="industry_name"
                        id="mentor_industry_name"
                        placeholder="멘토가 근무하는 기업 이름을 입력하세요"
                        value=""
                />
            </div>

            <br />

            <div class="row">
                <span class="input-addon">이메일 주소</span>
                <input
                        type="text"
                        class="input-text"
                        name="email"
                        id="mentor_email"
                        placeholder="멘토의 이메일을 입력하세요. 질문 발송에 이용됩니다."
                        value=""
                >
            </div>

            </br>

            <div class="row">
                <span class="input-addon">멘토가 해당하는 AREA</span>
                <select id="mentor_area" class="select-addon" name="area">
                    <option disabled selected value>AREA 선택</option>
                    <option  value="game">GAME</option>
                    <option  value="dd">DIGITAL DESIGN</option>
                    <option  value="df">DIGITAL FILM</option>
                    <option  value="it">IT PROGRAMMING</option>
                    <option  value="ct">CO NVERGENCE TECHNOLOGY</option>
                </select>
            </div>
            </br></br>
            <button type='button' class='create_mentor_button' onclick="submitMentorInfo()">멘토 추가하기</button>
        </form>
    </div>
</div>

<div class="left_menu">
    <meta name="viewport" content="height=device-height">
    <jsp:include page="include/menu.jsp" />
</div>

</body>
</html>