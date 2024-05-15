<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fil/css/admin/menu.css">
<div class="left_menu">
    <div class="fil_logo">
        <div class="title" onclick="location.href='/admin'"  style=" cursor: pointer;">
            <p class="title1">FI</p>
            <p class="title2">L</p>
        </div>
        <div>
            <p class="sub_title">관리자페이지</p>
        </div>

    </div>
    <a href='/admin'><div class="menu1" >교과과정 편집</div></a>
    <a href="/admin/subject"><div class="menu2"><p>과목편집</p></div></a>
</div>