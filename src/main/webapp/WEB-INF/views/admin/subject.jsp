<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin/subject.css">
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
                                        value=""
                                        placeholder="과목 코드를 입력해주세요 (ex: DMED100)"
                                />
                            </td>
                        </tr>
                        <tr>
                            <th>과목 이름</th>
                            <td>
                                <input
                                        type="text"
                                        class="mil_input"
                                        name="mil_subject_name"
                                        value=""
                                        placeholder="띄어쓰기가 줄넘김으로 표시됩니다"
                                />
                                &nbsp;&nbsp;
                            </td>
                            <td>
                                <button
                                        type="button"
                                        class="mil_btn get_subject_info_by_name_button">
                                    과목 가져오기
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <th>권장 이수 학기</th>
                            <td>
                                <select
                                        class="mil_input_select"
                                        name="mil_subject_semester"
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
                            <th>과목 키워드</th>
                            <td>
                                <input
                                        class="mil_input"
                                        name="mil_subject_keyword"
                                        rows="1"
                                        cols="50"
                                        placeholder="과목의 키워드를 입력해주세요"
                                ></input>
                            </td>
                        </tr>
                        <tr>
                            <th>과목 요강</th>
                            <td>
                                <input
                                        class="mil_input"
                                        name="mil_subject_detail"
                                        rows="4"
                                        cols="50"
                                        placeholder="과목의 설명을 입력해주세요"
                                ></input>
                            </td>
                        </tr>
                        <tr>
                            <th>전공 과목 여부</th>
                            <td>
                                <input
                                        id="major"
                                        type="checkbox"
                                        name="mil_subject_mandatory"
                                        value="T"
                                >
                                <label>
                                    전공 과목
                                </label>
                                <div class="description_container">
                      <span class="description">
                        과목이 전공 과목이면 체크해주세요
                      </span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>사용 프로그램</th>
                            <td>
                                <input
                                        type="text"
                                        class="mil_input"
                                        name="mil_subject_tool"
                                        value=""
                                        placeholder="과목에서 사용하는 프로그램을 입력해주세요 (ex:
                      Maya)"
                                />
                            </td>
                        </tr>
                        <tr>
                            <th>선수 과목</th>
                            <td id="presubject_selects">
                                <select
                                        class="mil_input_select last_select"
                                        name="mil_subject_presubject_select[]"
                                >
                                    <option value="None">None</option>
                                    <option value="CAJ0114">아주희망</option>
                                    <option value="CSE104">컴퓨터프로그래밍및실습</option>
                                    <option value="CSE134">컴퓨터프로그램설계</option>
                                    <option value="CSE200">자료구조</option>
                                    <option value="CSE231">객체지향 프로그래밍및실습</option>
                                    <option value="CSE311">운영체제</option>
                                    <option value="CSE332">데이터베이스</option>
                                    <option value="CSE350">알고리즘</option>
                                    <option value="DGMC474">창업현장실습1~2</option>
                                    <option value="DGMD10">창의미디어</option>
                                    <option value="DGMD121">발상과 시각화</option>
                                    <option value="DGMD2110">3D캐릭터애니메이션</option>
                                    <option value="DGMD22">스토리텔링</option>
                                    <option value="DGMD23">미디어심리학</option>
                                    <option value="DGMD25">비주얼커뮤니케이션 디자인</option>
                                    <option value="DGMD30">미디어융합연구</option>
                                    <option value="DGMD31">게임FX</option>
                                    <option value="DGMD319">3D캐릭터리깅</option>
                                    <option value="DGMD34">영상처리</option>
                                    <option value="DGMD344">GPU프로그래밍</option>
                                    <option value="DGMD43">기계학습및 데이터마이닝</option>
                                    <option value="DGMD471">창업실습1~2</option>
                                    <option value="DGMD491">해외인턴쉽1~2</option>
                                    <option value="DKFE21">렌더링이론</option>
                                    <option value="DMED100">디지털미디어</option>
                                    <option value="DMED130">디자인기초</option>
                                    <option value="DMED201">영상제작미학</option>
                                    <option value="DMED202">디지털타이포그래피</option>
                                    <option value="DMED204">미디어와창업2</option>
                                    <option value="DMED205">미디어와창업</option>
                                    <option value="DMED210">게임엔진프로그래밍</option>
                                    <option value="DMED212">게임의이해</option>
                                    <option value="DMED230">그래픽디자인</option>
                                    <option value="DMED235">피지컬인터랙션디자인</option>
                                    <option value="DMED240">3D그래픽디자인</option>
                                    <option value="DMED242">게임애니메이션</option>
                                    <option value="DMED244">크로키</option>
                                    <option value="DMED256">영상미학</option>
                                    <option value="DMED270">컴퓨터프로그래밍</option>
                                    <option value="DMED310">게임기획이론</option>
                                    <option value="DMED311">게임프로그래밍2</option>
                                    <option value="DMED312">게임스토리텔링</option>
                                    <option value="DMED316">게임기획개론</option>
                                    <option value="DMED317">게임스토리텔링</option>
                                    <option value="DMED323">앱프로젝트</option>
                                    <option value="DMED324">디지털사운드기초</option>
                                    <option value="DMED330">정보디자인</option>
                                    <option value="DMED331">모션그래픽디자인</option>
                                    <option value="DMED336">인포그래픽스</option>
                                    <option value="DMED347">3D어셋크리에이션</option>
                                    <option value="DMED348">VR스튜디오</option>
                                    <option value="DMED350">영상연출</option>
                                    <option value="DMED356">영상편집론</option>
                                    <option value="DMED370">컴퓨터그래픽스</option>
                                    <option value="DMED388">창의적콘텐츠디자인2</option>
                                    <option value="DMED389">창의적콘텐츠디자인1</option>
                                    <option value="DMED401">미디어집중교육1</option>
                                    <option value="DMED402">미디어집중교육2</option>
                                    <option value="DMED404"></option>
                                    <option value="DMED413">게임상호작용디자인</option>
                                    <option value="DMED420">영상사운드제작</option>
                                    <option value="DMED421">영상사운드제작</option>
                                    <option value="DMED422">공간음향제작</option>
                                    <option value="DMED434">인터랙션디자인</option>
                                    <option value="DMED437">UX디자인</option>
                                    <option value="DMED438">뉴미디어와모션그래픽스</option>
                                    <option value="DMED441">영상합성</option>
                                    <option value="DMED462">미디어현장실습1~6</option>
                                    <option value="DMED471">애니메이션이론</option>
                                    <option value="DMED483">이머징미디어특론</option>
                                    <option value="DMED484">인터내셔널세미나</option>
                                    <option value="DMED485">창업실습1,2</option>
                                    <option value="DMED486">미디어경영</option>
                                    <option value="DMED4911">미디어산업혁명기획</option>
                                    <option value="DMED493">미디어현장실습1~6</option>
                                    <option value="DMED497">창업실습1~2</option>
                                    <option value="DMED498">인터네셔널세미나</option>
                                    <option value="DMED499">미디어프로젝트</option>
                                    <option value="DMED666">수학1</option>
                                    <option value="DMED788">확률및통계1</option>
                                    <option value="DMEDO3312">인포그래픽스</option>
                                    <option value="ENG111">영어1</option>
                                    <option value="ENG112">영어2</option>
                                    <option value="G066">선형대수</option>
                                    <option value="INFO401">해외인턴쉽1</option>
                                    <option value="INFO402">해외인턴쉽</option>
                                    <option value="INFO403">해외봉사실천1~2</option>
                                    <option value="INFO404">해외봉사실천2</option>
                                    <option value="KOR101">글쓰기</option>
                                    <option value="MATH102">수학1</option>
                                    <option value="MATH251">확률과통계1</option>
                                    <option value="MIBS101">소셜미디어</option>
                                    <option value="MIBS131">미디어통계</option>
                                    <option value="MIBS221">소셜미디어 프로그래밍</option>
                                    <option value="MIBS231">미디어애널리틱스</option>
                                    <option value="MIBS232">소셜미디어애널리틱스</option>
                                    <option value="MIBS252">소셜미디어휴먼</option>
                                    <option value="MIBS253">미디어조사방법론</option>
                                    <option value="MIBS311">소셜미디어기획</option>
                                    <option value="MIBS312">광고이론및제작</option>
                                    <option value="MIBS321">모바일 프로그래밍2</option>
                                    <option value="MIBS322">모바일프로그래밍</option>
                                    <option value="MIBS323">웹앱프로그래밍</option>
                                    <option value="MIBS324">소셜앱프로젝트</option>
                                    <option value="MIBS325">소셜앱프로젝트</option>
                                    <option value="MIBS331">애널리틱스프로젝트</option>
                                    <option value="MIBS332">시리어스게임 애널리틱스</option>
                                    <option value="MIBS351">미디어이론</option>
                                    <option value="MIBS352">창의성과데이터</option>
                                    <option value="MIBS353">사물인터넷 구축및활용</option>
                                    <option value="MIBS354">
                                        데이터와과학적 창의프로젝트
                                    </option>
                                    <option value="MIBS374">인지과학응용</option>
                                    <option value="MIBS381">창업현장실습1</option>
                                    <option value="MIBS382">창업현장실습2</option>
                                    <option value="MIBS412">미디어및UCC</option>
                                    <option value="MIBS421">데이터사이언스개론</option>
                                    <option value="MIBS422">미디어융합기획</option>
                                    <option value="MIBS431">데이터시각화</option>
                                    <option value="MIBS432">데이터사이언스 이론과응용</option>
                                    <option value="MIBS433">시리어스게임분석</option>
                                    <option value="MIBS461">뉴미디어기획</option>
                                    <option value="MIBS462">뉴미디어와 디지털방송</option>
                                    <option value="MIBS463">데이터사이언스와 UX</option>
                                    <option value="MIBS465">텍스트마이닝과 감정분석</option>
                                    <option value="MIBS471">러닝사이언스</option>
                                    <option value="MIBS483">
                                        엔터테인먼트엔지니 어링디자인세미나
                                    </option>
                                    <option value="SCE431">컴퓨터비젼</option>
                                    <option value="TEAT444">
                                        크리에이티브미디어 프로그래밍
                                    </option>
                                    <option value="TEST555">몰입형미디어 프로그래밍</option>
                                    <option value="TEST666">
                                        미디어소프트웨어 엔지니어링
                                    </option>
                                    <option value="TEST777">기계학습</option>
                                    <option value="TEST888">데이터마이닝</option>
                                    <option value="TESTCODE01">데이터마이닝</option>
                                    <option value="TMDD543">인디게임제작</option>
                                </select>
                                <br />
                                <script>
                                    jQuery(".last_select").change(function () {
                                        if (jQuery(this).val() != "None") {
                                            jQuery(this).removeClass("last_select");
                                            var option = jQuery("<option>");
                                            option.val("None");
                                            option.text("None");
                                            var select = jQuery("<select>");
                                            select.addClass("mil_input_select last_select");
                                            select.attr(
                                                "name",
                                                "mil_subject_presubject_select[]"
                                            );
                                            select.append(option);

                                            var option = jQuery("<option>").val("CAJ0114");
                                            option.text("아주희망");
                                            select.append(option);
                                            var option = jQuery("<option>").val("CSE104");
                                            option.text("컴퓨터프로그래밍및실습");
                                            select.append(option);
                                            var option = jQuery("<option>").val("CSE134");
                                            option.text("컴퓨터프로그램설계");
                                            select.append(option);
                                            var option = jQuery("<option>").val("CSE200");
                                            option.text("자료구조");
                                            select.append(option);
                                            var option = jQuery("<option>").val("CSE231");
                                            option.text("객체지향 프로그래밍및실습");
                                            select.append(option);
                                            var option = jQuery("<option>").val("CSE311");
                                            option.text("운영체제");
                                            select.append(option);
                                            var option = jQuery("<option>").val("CSE332");
                                            option.text("데이터베이스");
                                            select.append(option);
                                            var option = jQuery("<option>").val("CSE350");
                                            option.text("알고리즘");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DGMC474");
                                            option.text("창업현장실습1~2");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DGMD10");
                                            option.text("창의미디어");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DGMD121");
                                            option.text("발상과 시각화");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DGMD2110");
                                            option.text("3D캐릭터애니메이션");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DGMD22");
                                            option.text("스토리텔링");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DGMD23");
                                            option.text("미디어심리학");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DGMD25");
                                            option.text("비주얼커뮤니케이션 디자인");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DGMD30");
                                            option.text("미디어융합연구");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DGMD31");
                                            option.text("게임FX");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DGMD319");
                                            option.text("3D캐릭터리깅");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DGMD34");
                                            option.text("영상처리");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DGMD344");
                                            option.text("GPU프로그래밍");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DGMD43");
                                            option.text("기계학습및 데이터마이닝");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DGMD471");
                                            option.text("창업실습1~2");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DGMD491");
                                            option.text("해외인턴쉽1~2");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DKFE21");
                                            option.text("렌더링이론");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED100");
                                            option.text("디지털미디어");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED130");
                                            option.text("디자인기초");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED201");
                                            option.text("영상제작미학");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED202");
                                            option.text("디지털타이포그래피");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED204");
                                            option.text("미디어와창업2");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED205");
                                            option.text("미디어와창업");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED210");
                                            option.text("게임엔진프로그래밍");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED212");
                                            option.text("게임의이해");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED230");
                                            option.text("그래픽디자인");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED235");
                                            option.text("피지컬인터랙션디자인");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED240");
                                            option.text("3D그래픽디자인");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED242");
                                            option.text("게임애니메이션");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED244");
                                            option.text("크로키");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED256");
                                            option.text("영상미학");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED270");
                                            option.text("컴퓨터프로그래밍");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED310");
                                            option.text("게임기획이론");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED311");
                                            option.text("게임프로그래밍2");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED312");
                                            option.text("게임스토리텔링");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED316");
                                            option.text("게임기획개론");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED317");
                                            option.text("게임스토리텔링");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED323");
                                            option.text("앱프로젝트");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED324");
                                            option.text("디지털사운드기초");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED330");
                                            option.text("정보디자인");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED331");
                                            option.text("모션그래픽디자인");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED336");
                                            option.text("인포그래픽스");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED347");
                                            option.text("3D어셋크리에이션");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED348");
                                            option.text("VR스튜디오");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED350");
                                            option.text("영상연출");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED356");
                                            option.text("영상편집론");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED370");
                                            option.text("컴퓨터그래픽스");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED388");
                                            option.text("창의적콘텐츠디자인2");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED389");
                                            option.text("창의적콘텐츠디자인1");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED401");
                                            option.text("미디어집중교육1");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED402");
                                            option.text("미디어집중교육2");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED404");
                                            option.text("  ");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED413");
                                            option.text("게임상호작용디자인");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED420");
                                            option.text("영상사운드제작");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED421");
                                            option.text("영상사운드제작");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED422");
                                            option.text("공간음향제작");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED434");
                                            option.text("인터랙션디자인");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED437");
                                            option.text("UX디자인");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED438");
                                            option.text("뉴미디어와모션그래픽스");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED441");
                                            option.text("영상합성");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED462");
                                            option.text("미디어현장실습1~6");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED471");
                                            option.text("애니메이션이론");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED483");
                                            option.text("이머징미디어특론");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED484");
                                            option.text("인터내셔널세미나");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED485");
                                            option.text("창업실습1,2");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED486");
                                            option.text("미디어경영");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED4911");
                                            option.text("미디어산업혁명기획");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED493");
                                            option.text("미디어현장실습1~6");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED497");
                                            option.text("창업실습1~2");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED498");
                                            option.text("인터네셔널세미나");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED499");
                                            option.text("미디어프로젝트");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED666");
                                            option.text("수학1");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMED788");
                                            option.text("확률및통계1");
                                            select.append(option);
                                            var option = jQuery("<option>").val("DMEDO3312");
                                            option.text("인포그래픽스");
                                            select.append(option);
                                            var option = jQuery("<option>").val("ENG111");
                                            option.text("영어1");
                                            select.append(option);
                                            var option = jQuery("<option>").val("ENG112");
                                            option.text("영어2");
                                            select.append(option);
                                            var option = jQuery("<option>").val("G066");
                                            option.text("선형대수");
                                            select.append(option);
                                            var option = jQuery("<option>").val("INFO401");
                                            option.text("해외인턴쉽1");
                                            select.append(option);
                                            var option = jQuery("<option>").val("INFO402");
                                            option.text("해외인턴쉽");
                                            select.append(option);
                                            var option = jQuery("<option>").val("INFO403");
                                            option.text("해외봉사실천1~2");
                                            select.append(option);
                                            var option = jQuery("<option>").val("INFO404");
                                            option.text("해외봉사실천2");
                                            select.append(option);
                                            var option = jQuery("<option>").val("KOR101");
                                            option.text("글쓰기");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MATH102");
                                            option.text("수학1");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MATH251");
                                            option.text("확률과통계1");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS101");
                                            option.text("소셜미디어");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS131");
                                            option.text("미디어통계");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS221");
                                            option.text("소셜미디어 프로그래밍");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS231");
                                            option.text("미디어애널리틱스");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS232");
                                            option.text("소셜미디어애널리틱스");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS252");
                                            option.text("소셜미디어휴먼");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS253");
                                            option.text("미디어조사방법론");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS311");
                                            option.text("소셜미디어기획");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS312");
                                            option.text("광고이론및제작");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS321");
                                            option.text("모바일 프로그래밍2");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS322");
                                            option.text("모바일프로그래밍");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS323");
                                            option.text("웹앱프로그래밍");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS324");
                                            option.text("소셜앱프로젝트");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS325");
                                            option.text("소셜앱프로젝트");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS331");
                                            option.text("애널리틱스프로젝트");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS332");
                                            option.text("시리어스게임 애널리틱스");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS351");
                                            option.text("미디어이론");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS352");
                                            option.text("창의성과데이터");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS353");
                                            option.text("사물인터넷 구축및활용");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS354");
                                            option.text("데이터와과학적 창의프로젝트");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS374");
                                            option.text("인지과학응용");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS381");
                                            option.text("창업현장실습1");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS382");
                                            option.text("창업현장실습2");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS412");
                                            option.text("미디어및UCC");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS421");
                                            option.text("데이터사이언스개론");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS422");
                                            option.text("미디어융합기획");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS431");
                                            option.text("데이터시각화");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS432");
                                            option.text("데이터사이언스 이론과응용");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS433");
                                            option.text("시리어스게임분석");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS461");
                                            option.text("뉴미디어기획");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS462");
                                            option.text("뉴미디어와 디지털방송");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS463");
                                            option.text("데이터사이언스와 UX");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS465");
                                            option.text("텍스트마이닝과 감정분석");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS471");
                                            option.text("러닝사이언스");
                                            select.append(option);
                                            var option = jQuery("<option>").val("MIBS483");
                                            option.text("엔터테인먼트엔지니 어링디자인세미나");
                                            select.append(option);
                                            var option = jQuery("<option>").val("SCE431");
                                            option.text("컴퓨터비젼");
                                            select.append(option);
                                            var option = jQuery("<option>").val("TEAT444");
                                            option.text("크리에이티브미디어 프로그래밍 ");
                                            select.append(option);
                                            var option = jQuery("<option>").val("TEST555");
                                            option.text("몰입형미디어 프로그래밍 ");
                                            select.append(option);
                                            var option = jQuery("<option>").val("TEST666");
                                            option.text("미디어소프트웨어 엔지니어링 ");
                                            select.append(option);
                                            var option = jQuery("<option>").val("TEST777");
                                            option.text("기계학습");
                                            select.append(option);
                                            var option = jQuery("<option>").val("TEST888");
                                            option.text("데이터마이닝");
                                            select.append(option);
                                            var option = jQuery("<option>").val("TESTCODE01");
                                            option.text("데이터마이닝");
                                            select.append(option);
                                            var option = jQuery("<option>").val("TMDD543");
                                            option.text("인디게임제작");
                                            select.append(option);
                                            select.insertBefore(
                                                jQuery("#presubject_selects .description_container")
                                            );
                                            jQuery(this).unbind("change");
                                            jQuery(".last_select").change(arguments.callee);
                                        }
                                    });
                                </script>
                                <div class="description_container">
                      <span class="description">
                        과목의 선수 과목을 선택해주세요</span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>연계 과목</th>
                            <td>
                                <select
                                        class="mil_input_select"
                                        name="mil_subject_relsubject_select"
                                >
                                    <option value="None">None</option>
                                    <option value="CAJ0114">아주희망</option>
                                    <option value="CSE104">컴퓨터프로그래밍및실습</option>
                                    <option value="CSE134">컴퓨터프로그램설계</option>
                                    <option value="CSE200">자료구조</option>
                                    <option value="CSE231">객체지향 프로그래밍및실습</option>
                                    <option value="CSE311">운영체제</option>
                                    <option value="CSE332">데이터베이스</option>
                                    <option value="CSE350">알고리즘</option>
                                    <option value="DGMC474">창업현장실습1~2</option>
                                    <option value="DGMD10">창의미디어</option>
                                    <option value="DGMD121">발상과 시각화</option>
                                    <option value="DGMD2110">3D캐릭터애니메이션</option>
                                    <option value="DGMD22">스토리텔링</option>
                                    <option value="DGMD23">미디어심리학</option>
                                    <option value="DGMD25">비주얼커뮤니케이션 디자인</option>
                                    <option value="DGMD30">미디어융합연구</option>
                                    <option value="DGMD31">게임FX</option>
                                    <option value="DGMD319">3D캐릭터리깅</option>
                                    <option value="DGMD34">영상처리</option>
                                    <option value="DGMD344">GPU프로그래밍</option>
                                    <option value="DGMD43">기계학습및 데이터마이닝</option>
                                    <option value="DGMD471">창업실습1~2</option>
                                    <option value="DGMD491">해외인턴쉽1~2</option>
                                    <option value="DKFE21">렌더링이론</option>
                                    <option value="DMED100">디지털미디어</option>
                                    <option value="DMED130">디자인기초</option>
                                    <option value="DMED201">영상제작미학</option>
                                    <option value="DMED202">디지털타이포그래피</option>
                                    <option value="DMED204">미디어와창업2</option>
                                    <option value="DMED205">미디어와창업</option>
                                    <option value="DMED210">게임엔진프로그래밍</option>
                                    <option value="DMED212">게임의이해</option>
                                    <option value="DMED230">그래픽디자인</option>
                                    <option value="DMED235">피지컬인터랙션디자인</option>
                                    <option value="DMED240">3D그래픽디자인</option>
                                    <option value="DMED242">게임애니메이션</option>
                                    <option value="DMED244">크로키</option>
                                    <option value="DMED256">영상미학</option>
                                    <option value="DMED270">컴퓨터프로그래밍</option>
                                    <option value="DMED310">게임기획이론</option>
                                    <option value="DMED311">게임프로그래밍2</option>
                                    <option value="DMED312">게임스토리텔링</option>
                                    <option value="DMED316">게임기획개론</option>
                                    <option value="DMED317">게임스토리텔링</option>
                                    <option value="DMED323">앱프로젝트</option>
                                    <option value="DMED324">디지털사운드기초</option>
                                    <option value="DMED330">정보디자인</option>
                                    <option value="DMED331">모션그래픽디자인</option>
                                    <option value="DMED336">인포그래픽스</option>
                                    <option value="DMED347">3D어셋크리에이션</option>
                                    <option value="DMED348">VR스튜디오</option>
                                    <option value="DMED350">영상연출</option>
                                    <option value="DMED356">영상편집론</option>
                                    <option value="DMED370">컴퓨터그래픽스</option>
                                    <option value="DMED388">창의적콘텐츠디자인2</option>
                                    <option value="DMED389">창의적콘텐츠디자인1</option>
                                    <option value="DMED401">미디어집중교육1</option>
                                    <option value="DMED402">미디어집중교육2</option>
                                    <option value="DMED404"></option>
                                    <option value="DMED413">게임상호작용디자인</option>
                                    <option value="DMED420">영상사운드제작</option>
                                    <option value="DMED421">영상사운드제작</option>
                                    <option value="DMED422">공간음향제작</option>
                                    <option value="DMED434">인터랙션디자인</option>
                                    <option value="DMED437">UX디자인</option>
                                    <option value="DMED438">뉴미디어와모션그래픽스</option>
                                    <option value="DMED441">영상합성</option>
                                    <option value="DMED462">미디어현장실습1~6</option>
                                    <option value="DMED471">애니메이션이론</option>
                                    <option value="DMED483">이머징미디어특론</option>
                                    <option value="DMED484">인터내셔널세미나</option>
                                    <option value="DMED485">창업실습1,2</option>
                                    <option value="DMED486">미디어경영</option>
                                    <option value="DMED4911">미디어산업혁명기획</option>
                                    <option value="DMED493">미디어현장실습1~6</option>
                                    <option value="DMED497">창업실습1~2</option>
                                    <option value="DMED498">인터네셔널세미나</option>
                                    <option value="DMED499">미디어프로젝트</option>
                                    <option value="DMED666">수학1</option>
                                    <option value="DMED788">확률및통계1</option>
                                    <option value="DMEDO3312">인포그래픽스</option>
                                    <option value="ENG111">영어1</option>
                                    <option value="ENG112">영어2</option>
                                    <option value="G066">선형대수</option>
                                    <option value="INFO401">해외인턴쉽1</option>
                                    <option value="INFO402">해외인턴쉽</option>
                                    <option value="INFO403">해외봉사실천1~2</option>
                                    <option value="INFO404">해외봉사실천2</option>
                                    <option value="KOR101">글쓰기</option>
                                    <option value="MATH102">수학1</option>
                                    <option value="MATH251">확률과통계1</option>
                                    <option value="MIBS101">소셜미디어</option>
                                    <option value="MIBS131">미디어통계</option>
                                    <option value="MIBS221">소셜미디어 프로그래밍</option>
                                    <option value="MIBS231">미디어애널리틱스</option>
                                    <option value="MIBS232">소셜미디어애널리틱스</option>
                                    <option value="MIBS252">소셜미디어휴먼</option>
                                    <option value="MIBS253">미디어조사방법론</option>
                                    <option value="MIBS311">소셜미디어기획</option>
                                    <option value="MIBS312">광고이론및제작</option>
                                    <option value="MIBS321">모바일 프로그래밍2</option>
                                    <option value="MIBS322">모바일프로그래밍</option>
                                    <option value="MIBS323">웹앱프로그래밍</option>
                                    <option value="MIBS324">소셜앱프로젝트</option>
                                    <option value="MIBS325">소셜앱프로젝트</option>
                                    <option value="MIBS331">애널리틱스프로젝트</option>
                                    <option value="MIBS332">시리어스게임 애널리틱스</option>
                                    <option value="MIBS351">미디어이론</option>
                                    <option value="MIBS352">창의성과데이터</option>
                                    <option value="MIBS353">사물인터넷 구축및활용</option>
                                    <option value="MIBS354">
                                        데이터와과학적 창의프로젝트
                                    </option>
                                    <option value="MIBS374">인지과학응용</option>
                                    <option value="MIBS381">창업현장실습1</option>
                                    <option value="MIBS382">창업현장실습2</option>
                                    <option value="MIBS412">미디어및UCC</option>
                                    <option value="MIBS421">데이터사이언스개론</option>
                                    <option value="MIBS422">미디어융합기획</option>
                                    <option value="MIBS431">데이터시각화</option>
                                    <option value="MIBS432">데이터사이언스 이론과응용</option>
                                    <option value="MIBS433">시리어스게임분석</option>
                                    <option value="MIBS461">뉴미디어기획</option>
                                    <option value="MIBS462">뉴미디어와 디지털방송</option>
                                    <option value="MIBS463">데이터사이언스와 UX</option>
                                    <option value="MIBS465">텍스트마이닝과 감정분석</option>
                                    <option value="MIBS471">러닝사이언스</option>
                                    <option value="MIBS483">
                                        엔터테인먼트엔지니 어링디자인세미나
                                    </option>
                                    <option value="SCE431">컴퓨터비젼</option>
                                    <option value="TEAT444">
                                        크리에이티브미디어 프로그래밍
                                    </option>
                                    <option value="TEST555">몰입형미디어 프로그래밍</option>
                                    <option value="TEST666">
                                        미디어소프트웨어 엔지니어링
                                    </option>
                                    <option value="TEST777">기계학습</option>
                                    <option value="TEST888">데이터마이닝</option>
                                    <option value="TESTCODE01">데이터마이닝</option>
                                    <option value="TMDD543">인디게임제작</option>
                                </select>
                                <br />
                                <!-- <textarea
                                  class="mil_input"
                                  name="mil_subject_relsubject"
                                  rows="4"
                                  cols="50"
                                ></textarea> -->
                                <div class="description_container">
                      <span class="description">
                        과목의 연계 과목을 선택해주세요</span>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>

                <!-- button type="button" class="mil_btn mil_green_btn mil_create_subject_button">과목 생성</button -->
                <button
                        type="button"
                        class="mil_btn mil_blue_btn mil_modify_subject_button"
                >
                    정보 저장
                </button>
                <button
                        type="button"
                        class="mil_btn mil_green_btn mil_delete_subject_at_curriculum_button"
                >
                    커리큘럼에서 제외
                </button>
                <button
                        type="button"
                        class="mil_btn mil_red_btn mil_delete_subject_button"
                >
                    과목 완전 삭제
                </button>
                <br /><br />
            </form>
        </div>
    </div>
</div>


<div class="left_menu">
    <meta name="viewport" content="height=device-height">
    <jsp:include page="include/menu.jsp" />
</div>

</body>
</html>