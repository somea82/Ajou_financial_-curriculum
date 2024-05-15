<!-- 
	멘토 관리
 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/cil.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/includeHTML.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/cil.js"></script>
</head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<body>
<header>
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<jsp:include page="../include/header.jsp" />
</header>
	<section>
		<div><jsp:include page="../include/menu.jsp" /></div>
		<div class="mainCont">
			<div>
				<table>
				<tr><td><h3>멘토 관리</h3></td></tr>
				<tr><td class="title"><p>멘토 이름</p></td></tr>
				<tr><td class="input"><input type="text" placeholder="멘토 이름을 입력하세요."></input></td></tr>
				<tr><td class="title"><p>소속 기업이름</p></td></tr>
				<tr><td class="input"><input type="text" placeholder="멘토가 근무하는 기업이름을 입력하세요."></input></td></tr>
				<tr><td class="title"><p>이메일 주소</p></td></tr>
				<tr><td class="input"><input type="text" placeholder="멘토의 이메일을 입력하세요.질문 발송에 이용됩니다."></input></td></tr>
				<tr><td class="title"><p>멘토가 해당하는 AREA</p></td></tr>
				<tr><td class="input">
				<select>
					<option></option>
				</select>
				</td></tr>
				<tr><td class="submit"><button>멘토 추가하기</button></td></tr>
				</table>
			</div>
		</div>
	</section>
</body>
</html>