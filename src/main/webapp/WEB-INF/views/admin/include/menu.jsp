<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin/menu.css">
<div class="left_menu">
    <div class="mil_logo">
        <div class="title" onclick="location.href='/admin/main'"  style=" cursor: pointer;">
            <p class="title1">MI</p>
            <p class="title2">L</p>
        </div>
        <div>
            <p class="sub_title">관리자페이지</p>
        </div>

    </div>
    <a href='/admin/curriculum'><div class="menu1">교과과정 편집</div></a>
    <a href="/admin/subject"><div class="menu2"><p>과목편집</p></div></a>
    <a href="/admin/video"><div class="menu3"><p>전문가영상관리</p></div></a>
    <a href="/admin/mentor"><div class="menu4"><p>멘토관리</p></div></a>
    <a href="/admin/mail"><div class="menu5"><p>전체메일발송</p></div></a>
</div>