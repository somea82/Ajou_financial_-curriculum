<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fil/css/admin/subject.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/includeHTML.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/pop-up.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/curriculum.js"></script>
    <script src="${pageContext.request.contextPath}/resources/fil/js/fil.js"></script>
    <script src="${pageContext.request.contextPath}/resources/fil/js/admin/adminCurriculum.js"></script>
</head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<body>

<div class="setting_block">
    <p class="setting_block_title">과목편집</p>
    <div class="setting_block_content">
        <div class="setting_block_left">
            <div class="setting_title">Subject List</div>
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
                                                  onclick="getSubjectInfo('${subjectList[index].code}')">
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
                                                  onclick="getSubjectInfo('${subjectList[index].code}')">
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

        <div style="width: 1%"></div>

        <div class="setting_block_right">
            <form id="mil_create_subject_form">
                <input type="hidden" name="td_id" value="" />
                <input type="hidden" name="track" value="social_media" />
                <div class="setting_title">Subject Info</div>
                <div class="setting_table_wrap">
                    <table>
                        <tr>&nbsp;</tr>
                        <tr>
                            <th>과목 코드</th>
                            <td>
                                <input
                                        type="text"
                                        class="mil_input"
                                        name="mil_subject_code"
                                        id = "subject_code"
                                        value=""
                                        placeholder="과목 코드를 입력해주세요 (ex: DMED100)"
                                />
                            </td>
                        </tr>
                        <td>
                            <button
                                    type="button"
                                    class="mil_btn get_subject_info_by_name_button"
                                    id = "info_btn">
                                과목 가져오기
                            </button>
                            <button
                                    type="button"
                                    class="mil_btn get_subject_info_by_name_button"
                                    id = "info_reset_btn"
                            >
                                내용 초기화
                            </button>
                        </td>
                        <tr>
                            <th>과목 이름</th>
                            <td>
                                <input
                                        type="text"
                                        class="mil_input"
                                        name="mil_subject_name"
                                        id = "subject_name"
                                        value=""
                                        placeholder="띄어쓰기가 줄넘김으로 표시됩니다"
                                />
                                &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <th>권장 이수 학기</th>
                            <td>
                                <select
                                        class="mil_input_select"
                                        name="mil_subject_semester"
                                        id = "subject_semester"
                                >
                                    <option value="1">1-1</option>
                                    <option value="2">1-2</option>
                                    <option value="3">2-1</option>
                                    <option value="4">2-2</option>
                                    <option value="5">3-1</option>
                                    <option value="6">3-2</option>
                                    <option value="7">4-1</option>
                                    <option value="8">4-2</option>
                                </select>
                                <div class="description_container">
                      <span class="description"
                      >과목의 권장 이수 학기를 선택해주세요</span
                      >
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>과목 행</th>
                            <td>
                                <input
                                        class="mil_input"
                                        name="mil_subject_keyword"
                                        id = "row"
                                        rows="1"
                                        cols="50"
                                        placeholder="과목의 행 위치를 입력해주세요"
                                ></input>
                            </td>
                        </tr>
                        <tr>
                            <th>과목 열</th>
                            <td>
                                <input
                                        class="mil_input"
                                        name="mil_subject_keyword"
                                        id = "column"
                                        rows="1"
                                        cols="50"
                                        placeholder="과목의 열 위치를 입력해주세요"
                                ></input>
                            </td>
                        </tr>
                        <tr>
                            <th>과목 요강</th>
                            <td>
                                <textarea
                                        class="mil_input"
                                        name="mil_subject_detail"
                                        id = "subject_detail"
                                        rows="4"
                                        cols="50"
                                        placeholder="과목의 설명을 입력해주세요"
                                ></textarea>
                            </td>
                        </tr>
                        <tr>
                            <th>필수 과목 여부</th>
                            <td>
                                <input
                                        id="major"
                                        type="checkbox"
                                        name="mil_subject_mandatory"
                                        value="0"
                                />
                                <label>
                                    필수 과목
                                </label>
                                <div class="description_container">
                      <span class="description">
                        과목이 필수 과목이면 체크해주세요
                      </span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>원어 과목 여부</th>
                            <td>
                                <input
                                        id="origin"
                                        type="checkbox"
                                        name="mil_subject_origin_language"
                                        value="0"
                                />
                                <label>
                                    원어 과목
                                </label>
                                <div class="description_container">
                      <span class="description">
                        과목이 원어 과목이면 체크해주세요
                      </span>
                                </div>
                            </td>
                        </tr>

                        <tr>
                            <th>선수 과목 1</th>
                            <td >
                                <select
                                        id="presubject_select1"
                                        class="mil_input_select last_select"
                                        name="mil_subject_presubject_select[]"
                                >
                                    <option value="None">None</option>
                                    <c:forEach var="sl" items = "${subjectAllList}">
                                        <option value = "${sl.code}">${sl.name} : ${sl.code}</option></c:forEach>

                                </select>

                                <div class="description_container">
                      <span class="description">
                        과목의 선수 과목을 선택해주세요</span>
                                </div>
                            </td>
                        </tr>
                <tr>
                    <th>선수 과목 2</th>
                    <td >
                        <select
                                id="presubject_select2"
                                class="mil_input_select last_select"
                                name="mil_subject_presubject_select[]"
                        >
                            <option value="None">None</option>
                            <c:forEach var="sl" items = "${subjectAllList}">
                                <option value = "${sl.code}">${sl.name} : ${sl.code}</option></c:forEach>

                                </select>

                                <div class="description_container">
                            <span class="description">
                        과목의 선수 과목을 선택해주세요</span>
                </div>
                </td>
                </tr>
            <tr>
                <th>선수 과목 3</th>
                <td >
                <select
                        id="presubject_select3"
                        class="mil_input_select last_select"
                        name="mil_subject_presubject_select[]"
                >
                    <option value="None">None</option>
                    <c:forEach var="sl" items = "${subjectAllList}">
                        <option value = "${sl.code}">${sl.name} : ${sl.code}</option></c:forEach>

                                </select>

                                <div class="description_container">
                    <span class="description">
                        과목의 선수 과목을 선택해주세요</span>
            </div>
            </td>
            </tr>
                        <tr>
                            <th>연계 과목 1</th>
                            <td >
                                <select
                                        id="related_subject_select1"
                                        class="mil_input_select"
                                        name="mil_subject_relsubject_select"
                                >
                                    <option value="None">None</option>
                                    <c:forEach var="sl" items = "${subjectAllList}">
                                        <option value = "${sl.code}">${sl.name} : ${sl.code}</option></c:forEach>

                                </select>

                                <div class="description_container">
                      <span class="description">
                        과목의 연계 과목을 선택해주세요</span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>연계 과목 2</th>
                            <td >
                                <select
                                        id="related_subject_select2"
                                        class="mil_input_select"
                                        name="mil_subject_relsubject_select"
                                >
                                    <option value="None">None</option>
                                    <c:forEach var="sl" items = "${subjectAllList}">
                                    <option value = "${sl.code}">${sl.name} : ${sl.code}</option></c:forEach>

                                    </select>

                                    <div class="description_container">
                                    <span class="description">
                                    과목의 연계 과목을 선택해주세요</span>
                                    </div>
                            </td>
                        </tr>
                                            <tr>
                        <th>연계 과목 3</th>
                        <td >
                            <select
                                    id="related_subject_select3"
                                    class="mil_input_select"
                                    name="mil_subject_relsubject_select"
                            >
                                <option value="None">None</option>
                                <c:forEach var="sl" items = "${subjectAllList}">
                                <option value = "${sl.code}">${sl.name} : ${sl.code}</option></c:forEach>

                                </select>

                                <div class="description_container">
                                <span class="description">
                                            과목의 연계 과목을 선택해주세요</span>
                                </div>
                        </td>
                    </tr>
                        <tr>
                            <th>동시개설 학과 1</th>
                            <td>
                                <input
                                        class="mil_input"
                                        name="mil_subject_keyword"
                                        id = "joint1"
                                        rows="1"
                                        cols="50"
                                        placeholder="과목이 동시 개설되는 학과를 입력해주세요"
                                ></input>
                            </td>
                        </tr>
                        <tr>
                            <th>동시개설 학과 2</th>
                            <td>
                                <input
                                        class="mil_input"
                                        name="mil_subject_keyword"
                                        id = "joint2"
                                        rows="1"
                                        cols="50"
                                        placeholder="과목이 동시 개설되는 학과를 입력해주세요"
                                ></input>
                            </td>
                        </tr>
                        <tr>
                            <th>동시개설 학과 2</th>
                            <td>
                                <input
                                        class="mil_input"
                                        name="mil_subject_keyword"
                                        id = "joint3"
                                        rows="1"
                                        cols="50"
                                        placeholder="과목이 동시 개설되는 학과를 입력해주세요"
                                ></input>
                            </td>
                        </tr>
                    </table>
                <!-- button type="button" class="mil_btn mil_green_btn mil_create_subject_button">과목 생성</button -->
                <button
                        type="button"
                        class="mil_btn mil_blue_btn mil_modify_subject_button"
                        onclick="SubmitInfoButton();"
                >
                    정보 저장
                </button>
                <button
                        type="button"
                        class="mil_btn mil_green_btn mil_delete_subject_at_curriculum_button"
                        onclick="DeletePositionButton();"

                >
                    커리큘럼에서 제외
                </button>
                <button
                        type="button"
                        class="mil_btn mil_red_btn mil_delete_subject_button"
                        onclick="DeleteSubjectButton();"
                >
                    과목 완전 삭제
                </button>
                <br /><br />
                </div>
            </form>
        </div>
    </div>
</div>

<div class="left_menu">
    <meta name="viewport" content="height=device-height">
    <jsp:include page="include/menu.jsp" />
</div>
</body>
    <script src="${pageContext.request.contextPath}/resources/fil/js/admin/adminCurriculum.js"></script>
<script>
        $('#info_btn').on('click',function(){
            getSubjectInfo( document.getElementById("subject_code").value);
        });
        $('#info_reset_btn').on('click',function(){
            setSubjectInfoReset();
        });
        $('#major').on('click',function(){
            if(document.getElementById("major").checked == true) {
                document.getElementById("major").value = "1";
            }else{document.getElementById("major").value = "0";}
        });
        $('#origin').on('click',function(){
            if(document.getElementById("origin").checked == true) {
                document.getElementById("origin").value = "1";
            }else{document.getElementById("origin").value = "0";}
        });
</script>
</html>