<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div class="header_wrap">
    <div class="title_wrap">
        <a class="title" id="title" onclick="location.href='/'"><img src="${pageContext.request.contextPath}/resources/fil/img/FIL_logo_3.png"></a>
    </div>
    <div class="login_wrap" >
        <form action="/login" method="get">
        <button type="submit" class="loginbtn">관리자</button>
        </form>
    </div>
    </div>
</body>
</html>

<%--<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="EUC-KR">--%>
<%--    <title>Header</title>--%>
<%--    <!-- 추가된 스타일과 스크립트 -->--%>
<%--    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/modal.css">--%>
<%--    <script src="${pageContext.request.contextPath}/resources/js/modal.js"></script>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="header_wrap">--%>
<%--    <div class="title_wrap">--%>
<%--        <a class="title" id="title" onclick="location.href='/'"><img src="${pageContext.request.contextPath}/resources/fil/img/FIL_logo_3.png"></a>--%>
<%--    </div>--%>
<%--    <div class="login_wrap" >--%>
<%--        <button id="myBtn" class="loginbtn">관리자</button>--%>
<%--    </div>--%>
<%--</div>--%>
<%--<!-- 모달 내용 -->--%>
<%--<div id="myModal" class="modal">--%>
<%--    <div class="modal-content">--%>
<%--        <span class="close">&times;</span>--%>
<%--        <form action="/login" method="post">--%>
<%--            <div class="form-control">--%>
<%--                <label for="username">Username:</label>--%>
<%--                <input type="text" id="username" name="username" required>--%>
<%--            </div>--%>
<%--            <div class="form-control">--%>
<%--                <label for="password">Password:</label>--%>
<%--                <input type="password" id="password" name="password" required>--%>
<%--            </div>--%>
<%--            <div class="form-control">--%>
<%--                <input type="submit" value="Log in">--%>
<%--            </div>--%>
<%--        </form>--%>
<%--    </div>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>
