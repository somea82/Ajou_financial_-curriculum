<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin/curriculum.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/includeHTML.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/pop-up.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/curriculum.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/cil.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/admin/adminCurriculum.js"></script>
</head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<body>

<div class="main_contents">
    <p class="main_contents_title">교과과정 편집</p>
    <div class="content_box">

        <div class="admin_page_header">
            <p class="admin_page_title">디지털미디어 교과과정 편집</p>
            <div class="admin_page_tool_bar">
                <button class="mil_btn mil_add_btn" type="button" onclick="open_pop_add();" style="cursor: pointer;" >+ 추가하기</button>
            </div>
        </div>

        <div id="admin_page_content" class="admin_page_content">
            <table>
                <thead>
                <tr>
                    <th>ID</th>
                    <th>페이지 이름</th>
                    <th>항목</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <c:set var="index" value="0"/>
                <c:forEach var="curriList" items="${curriList}">
                    <tr>
                        <td class="menu_page_id">
                            <c:out value="${curriList.page_id}"/>
                        </td>
                        <td class="menu_name">
                            <c:out value="${curriList.name}"/>
                        </td>
                        <td class="menu_category">
                            <input type="radio" id = "r1" value="track" <c:if test="${curriList.category eq 'track'}">checked</c:if>/><label>track</label>
                            <input type="radio" id = "r2" value="job" <c:if test="${curriList.category eq 'job'}">checked</c:if>/><label>job</label>
                        </td>
                        <td class="menu_action">
                            <button class="mil_btn mil_blue_btn" type="button" onclick="open_pop_subject();" style="cursor: pointer;">과목등록</button>
                            <button class="mil_btn mil_green_btn" type="button" onclick="open_pop_modify();" style="cursor: pointer;">페이지 수정</button>
                            <button class="mil_btn mil_yellow_btn" target="_blank"  type="button" onClick="location.href='/cil'" original-title="교과과정표 보기" style="cursor: pointer;">페이지 보기</button>
                            <button class="mil_btn mil_red_btn mil_page_remove_btn" type="button" data="701"  style="cursor: pointer;" onclick="deleteCurriculum('${curriList.page_id}')">삭제</button>
                        </td>
                    </tr>
                    <c:set var="index" value="${index+1}"/>
                </c:forEach>
                </tbody>
            </table>
        </div>

        <div class="Modal mileditor_wrap" id="Modal_add">
            <meta name="viewport" content="width= 85%">
            <jsp:include page="modal/curriculum_add.jsp" />
        </div>


        <div class="Modal mileditor_wrap" id="Modal_subject">
            <meta name="viewport" content="width= 85%">
            <jsp:include page="modal/curriculum_subjectRegi.jsp" />
        </div>

        <div class="Modal mileditor_wrap" id="Modal_modify">
            <meta name="viewport" content="width= 85%">
            <jsp:include page="modal/curriculum_pageModify.jsp" />
        </div>

    </div>
</div>

<!--
왼쪽 메뉴 소스 header처럼 include 소스로 빼기
-->
<div class="left_menu">
    <meta name="viewport" content="height=device-height">
    <jsp:include page="include/menu.jsp" />
</div>

</body>

</html>