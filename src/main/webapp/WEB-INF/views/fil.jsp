<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ page import="java.net.URLEncoder" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet"  href="${pageContext.request.contextPath}/resources/fil/css/fil.css">

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">

    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/includeHTML.js"></script>
    <script src="${pageContext.request.contextPath}/resources/fil/js/fil.js"></script>


</head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<body>
<header>
	<jsp:include page="./include/fil/header.jsp"/>
</header>
    <section class="main_contents">

        <div class="area_section">
<%--            <table class="area_table">--%>

<%--                <tr>--%>
<%--                    <th class="area_title"><span>MICRO</span></th>--%>
<%--                </tr>--%>
<%--금융 트랙
                <tr>
                    <td class="gi_wrap">
                        <img id="gi_but" src="${pageContext.request.contextPath}/resources/fil/img/areaIcon_finance.png">
                    </td>
                </tr>
  --%>
                <%--마이크로전공 목록생심성
                <c:set var="index" value="0"/>
                <c:forEach var="majorList" items="${majorList}">
                    <tr>
                    <td class="majors" style="color:${majorList.core_color}">
                        <p  onclick="trackClick('${majorList.major_id}','${majorList.name}','${majorList.core_color}')"><c:out value="${majorList.name}"/></p>
                    </td>
                    </tr>
                <c:set var="index" value="${index+1}"/>
                </c:forEach>

                --%>
<%--                <tr><td></td></tr>--%>
<%--                <tr><td></td></tr>--%>
<%--            </table>--%>
        </div>
        <div class="cil_table_section">
            <table>
                <!-- 행: 17, 열 :8 -->
                <tr>
                    <th><span class="class_mark">1-1</span></th>
                    <th><span class="class_mark">1-2</span></th>
                    <th><span class="class_mark">2-1</span></th>
                    <th><span class="class_mark">2-2</span></th>
                    <th><span class="class_mark">3-1</span></th>
                    <th><span class="class_mark">3-2</span></th>
                    <th><span class="class_mark">4-1</span></th>
                    <th><span class="class_mark">4-2</span></th>
                </tr>
                <c:set var="index" value="0"/>
                <c:set var="row" value="2"/>
                <%
                    for(int i=0; i<15; i++)
                    {
                %>
                <tr>
                    <c:set var="col" value="1"/>
                    <c:choose>
                            <c:when test="${row==16}">
                                <td id="mark_td"><a id="tr16td1"><div class="m_mark">M</div><a class="m_text"> 전공 필수</a></a></td>
                                <td id="mark_td"><a id="tr16td2"><div class="c_mark">C</div><a class="c_text"> 핵심 과목</a></a></td>

                                <td><div class="mandatory_micro">
                                <span id=tr16td3 onclick="on_off(1)">금융 프로그래밍 마이크로전공
                                </span></div></td>
                                <td><div class="mandatory_math">
                                <span id=tr16td4 onclick="on_off(2)">수학 과목
                                </span></div></td>

                                <td id="mark_td"><a id="tr13td5"><a class="season"> 2023년 금융공학과 전공 요람기준</a></a></td>
                                <c:set var="col" value="6"/>
                                <%for(int j=0; j<4; j++){ %>
                                <td><div class="mandatory_cont">
                                    <c:if test = "${subjectList[index].row_id==16}">
                                        <c:if test = "${subjectList[index].col_id==col}">
                                            <span id="tr${subjectList[index].row_id}td${subjectList[index].col_id}"
                                                  onclick="getDetail('${subjectList[index].code}')">
                                                <c:out value="${subjectList[index].name}"/>
                                            </span>
                                                <div class="cs" id="cs_tr${subjectList[index].row_id}td${subjectList[index].col_id}"><a class="cs_txt_tr${subjectList[index].row_id}td${subjectList[index].col_id}">C</a></div>
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
                                <td><div class="mandatory_cont">
                                    <c:if test = "${subjectList[index].row_id==row}">
                                        <c:if test = "${subjectList[index].col_id==col}" >
                                            <c:if test = "${subjectList[index].is_mandatory == 0}">
                                                <span id="tr${subjectList[index].row_id}td${subjectList[index].col_id}"
                                                      onclick="getDetail('${subjectList[index].code}')">
                                                    <c:out value="${subjectList[index].name}"/>
                                                </span>
                                                <div class="cs" id="cs_tr${subjectList[index].row_id}td${subjectList[index].col_id}"><a class="cs_txt_tr${subjectList[index].row_id}td${subjectList[index].col_id}">C</a></div>
                                            </c:if>
                                            <c:if test = "${subjectList[index].is_mandatory == 1}">
                                                <span id="tr${subjectList[index].row_id}td${subjectList[index].col_id}" class="mandatory_span"
                                                      onclick="getDetail('${subjectList[index].code}')">
                                                    <c:out value="${subjectList[index].name}"/>
                                                </span>
                                                <div class="cs" id="cs_tr${subjectList[index].row_id}td${subjectList[index].col_id}"><a class="cs_txt_tr${subjectList[index].row_id}td${subjectList[index].col_id}">C</a></div>

                                                <div class="cs_m" ><a>M</a></div>
                                            </c:if>
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
            </table>
        </div>
        <div class="jobs_section">
            <div class="jobs_list">
            <table class="jobs_table">
                <tr>
                    <th class="jobs_title"><span>CAREER PATH</span></th>
                </tr>
                <c:set var="index" value="0"/>
                <c:forEach var="jobList" items="${jobList}">
                    <tr>
                        <td class="jobs" style="color:${jobList.core_color}">
                            <p onclick="trackClick('${jobList.job_id}','${jobList.name}','${jobList.core_color}')">
                                <c:out value="${jobList.name}"/>
                            </p>
                            <button type="button" onclick="location.href='/jobdetail/${index}'">
                                <img src="${pageContext.request.contextPath}/resources/fil/img/search.png">
                            </button>
                        </td>
                    </tr>
                    <c:set var="index" value="${index+1}"/>
                </c:forEach>
            </table>
        </div>
        </div>
        <div>
        </div>
    </section>
<jsp:include page="modal/subjectDetail.jsp" />
</body>
<script src="${pageContext.request.contextPath}/resources/fil/js/fil.js"></script>
<script>
    window.onload=function(){
        <c:set var="index" value="0"/>
        <c:forEach var="majorList" items="${majorList}">
            trackClick('${majorList.major_id}','${majorList.name}','${majorList.core_color}')
        <c:set var="index" value="${index+1}"/>
        </c:forEach>

        <c:set var="index" value="0"/>
        <c:forEach var="mathList" items="${mathList}">
            mathListMaker('${mathList.row_id}','${mathList.col_id}','${mathList.code}','${mathList.name}')
        <c:set var="index" value="${index+1}"/>
        </c:forEach>
        mathLine('#FFF600');

    }
    includeHTML();
</script>
</html>