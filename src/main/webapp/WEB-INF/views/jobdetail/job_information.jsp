<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>직업 상세 정보</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
            color: #555;
        }

        td {
            color: #333;
        }

        .btn-container {
            text-align: center;
            margin-top: 20px;
        }

        .btn {
            background-color: #1a73e8;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
        }

        .btn:hover {
            background-color: #155bb5;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>직업 상세 정보</h2>
    <h3><c:out value="${job.smallCategory}" /></h3>

    <table>
        <tr>
            <th>직업 설명</th>
            <td>
                <span>
                <c:if test="${not empty job.jobInfo}">
                    <c:out value="${job.jobInfo}" />
                </c:if>
                </span>
            </td>
        </tr>
        <tr>
            <th>직무 예시</th>
            <td>
                <c:if test="${not empty job.jobEx}">
                    <c:out value="${job.jobEx}" />
                </c:if>
            </td>
        </tr>
        <tr>
            <th>참고 링크</th>
            <td>
                <c:if test="${not empty job.ncsCode}">
                    <a href="${job.ncsCode}" target="_blank">
                        <c:out value="${job.ncsCode}" />
                    </a>
                </c:if>
            </td>
        </tr>
    </table>

    <div class="btn-container">
        <a href="javascript:history.back()" class="btn">돌아가기</a>
    </div>
</div>
</body>
</html>
