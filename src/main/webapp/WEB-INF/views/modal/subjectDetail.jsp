<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fil/css/fil.css">
<script src="${pageContext.request.contextPath}/resources/fil/js/fil.js"></script>
<script src="${pageContext.request.contextPath}/resources/jquery/jquery-3.5.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/jquery/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
</head>
<%
	request.setCharacterEncoding("utf-8");
%>
<body>
<div id ="detailModal" class="detailModal">
<div class="black_bg"></div>
	<!--<div class="modal_side_wrap" id="modal_side_wrap">
		<div class="modal_header">
			<p>PRE COURSES</p>
		</div>
		<div class="modal_body">
				<table>
					<tr>
						<td class="sub_pre_subject"></td>
					</tr>
					<tr>
						<td class="main_pre_subject"></td>
					</tr>
					<tr>
						<td class="main_subject"></td>
					</tr>
				</table>
			</div>
		</div>
	</div>-->
	<div class="modal_wrap" id="modal_wrap">
	   <div class="modal_header">
	   	<p>COURSE INFORMATION</p>
	   </div>
	   <div class="modal_body">
		   <div class="modal_left_wrap">	
		   	<div class="course_wrap">
		   		<p class="title">교과명</p>
		   		<p class="course_cont"></p>
		   	</div>
		   	<div class="keyword_wrap">
		   		<p class="title">원어강의</p>
		   		<p class="keyword_cont"></p>
		   	</div>
		   	<div class="details_wrap">
		   		<p class="title">세부 내용</p>
		   		<p class="detail_cont"></p>
		   	</div>
		   </div>
		   <div class="modal_right_wrap">
		   	<div class="tools_wrap">
		   		<p class="title">공동 개설학과</p>
		   		<p class="tools_cont"></p>
		   	</div>
		   	<div class="pre_wrap">
		   		<p class="title">선수과목</p>
		   		<p class="pre_cont"></p>
		   	</div>
		   	<div class="related_wrap">
		   		<p class="title">연계과목</p>
		   		<p class="related_cont"></p>
		   	</div>
		   </div>
		</div>
	</div>
</div>
<script>  
	//$("#detailModal").draggable();
	
	$(document).mouseup(function (e){
	  var backGround = $(".detailModal");
	  var layerPopup = $(".modal_wrap");
	  var sidePopup = $(".modal_side_wrap");
	  
	  if(layerPopup.has(e.target).length === 0){
		layerPopup.attr("style", "display:none");
		sidePopup.attr("style", "display:none");
	  	backGround.find(".black_bg").attr("style", "display:none");

	  }
	});
</script>
</body>
</html>