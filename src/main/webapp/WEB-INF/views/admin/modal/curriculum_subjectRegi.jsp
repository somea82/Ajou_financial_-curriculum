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

</head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<body>

<div class="setting_block" style="display: flex;">

    <div class="close" onclick="close_pop_subject() ;" style="cursor: pointer">
        <span class="close_btn"> X </span>
    </div>

    <div class="setting_block_left">
        <span class="setting_title">과목등록</span>
        <br/>
        <span class="subtitle">과목을 클릭하여 Core인지 Support인지 정해주세요</span>
        <div id="mil_subject_table_wrap">
            <table id="mil_subject_table">
                <thead>
                <tr>
                    <td><div>1-1</div></td>
                    <td><div>1-2</div></td>
                    <td><div>2-1</div></td>
                    <td><div>2-2</div></td>
                    <td><div>3-1</div></td>
                    <td><div>3-2</div></td>
                    <td><div>4-1</div></td>
                    <td><div>4-2</div></td>
                </tr>
                </thead>
                <tbody>
                <c:set var="index" value="0"/>
                <c:set var="row" value="2"/>
                <%
                    for(int i=0; i<15; i++)
                    {
                %>
                <tr>
                    <c:set var="col" value="1"/>
                    <c:choose>
                        <c:when test="${row==2}">
                            <td onclick="HighlightTD(this);"><span class="must_math">수학1</span></td>
                            <td onclick="HighlightTD(this);"><span class="must_math">확률 및 통계1</span></td>
                            <c:set var="col" value="3"/>
                            <%for(int j=0; j<6; j++){ %>
                            <td onclick="HighlightTD(this);"><div class="mandatory_cont">
                                <c:if test = "${subjectList[index].row_id==row}">
                                    <c:if test = "${subjectList[index].col_id==col}">
                                            <span id="tr${subjectList[index].row_id}td${subjectList[index].col_id}"
                                                  onclick="getDetail('${subjectList[index].subject}')">
                                                <c:out value="${subjectList[index].name}"/>
                                            </span>
                                        <c:set var="index" value="${index+1}"/>
                                    </c:if>
                                </c:if>
                            </div>
                            </td>
                            <c:set var="col" value="${col+1}"/>
                            <%} %>
                        </c:when>
                        <c:when test="${row==16}">
                            <td id="mark_td" onclick="HighlightTD(this);"><a id="tr13td1"></a></td>
                            <td id="mark_td" class="addLine" onclick="HighlightTD(this);"><a id="tr13td2"></a></td>
                            <td id="mark_td" onclick="HighlightTD(this);"><a id="tr13td3"></a></td>
                            <c:set var="col" value="4"/>
                            <%for(int j=0; j<5; j++){ %>
                            <td onclick="HighlightTD(this);"><div class="mandatory_cont">
                                <c:if test = "${subjectList[index].row_id==16}">
                                    <c:if test = "${subjectList[index].col_id==col}">
                                            <span id="tr${subjectList[index].row_id}td${subjectList[index].col_id}"
                                                  onclick="getDetail('${subjectList[index].subject}')">
                                                <c:out value="${subjectList[index].name}"/>
                                            </span>
                                        <c:set var="index" value="${index+1}"/>
                                    </c:if>
                                </c:if>
                            </div>
                            </td>
                            <c:set var="col" value="${col+1}"/>
                            <%} %>
                        </c:when>
                        <c:otherwise>
                            <%for(int j=0; j<8; j++){ %>
                            <td onclick="HighlightTD(this, '#3462DC');"><div class="mandatory_cont">
                                <c:if test = "${subjectList[index].row_id==row}">
                                    <c:if test = "${subjectList[index].col_id==col}">
                                            <span id="tr${subjectList[index].row_id}td${subjectList[index].col_id}"
                                                  onclick="getDetail('${subjectList[index].subject}')">
                                                <c:out value="${subjectList[index].name}"/>
                                            </span>
                                        <c:set var="index" value="${index+1}"/>
                                    </c:if>
                                </c:if>
                            </div>
                            </td>
                            <c:set var="col" value="${col+1}"/>
                            <%} %>
                        </c:otherwise>
                    </c:choose>
                    <c:set var="row" value="${row+1}"/>
                </tr>
                <%
                    }
                %>
                </tbody>
            </table>
        </div>
    </div>

    <div style="width: 7%;">
    </div>

    <div class="setting_block_right">
        <section class="regidit_subject-type">
            <span class="setting_title">과목 Type 설정</span>
            <br/>
            <input type="hidden" name="page_id" value=701>
            <input type="hidden" name="track" value=media_contents>
            <input type="hidden" name="td_id">
            <br/>
            <div style="display: flex;">
                <input type="radio" name="milpage_subject_type" value="core">Core
            </div>
            <div style="display: flex;">
                <input type="radio" name="milpage_subject_type" value="support">Support
            </div>
            <br/>
            <button type="button" class="mil_btn mil_green_btn milpage_regidit_type_button" onclick="saveSubject()" style="cursor: pointer;">저장</button>
            <button type="button" class="mil_btn mil_red_btn milpage_delete_type_button" onclick="deleteSubject()" style="cursor: pointer;">삭제</button>
        </section>
    </div>
</div>

</body>
</html>