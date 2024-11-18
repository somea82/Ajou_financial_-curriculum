<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*, javax.sql.*" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Edit Career Path</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 20px;
        }

        .container {
            max-width: 600px;
            margin: 0 auto;
            background: #fff;
            padding: 20px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        .title {
            color: #333;
            font-size: 1.5em;
            margin-bottom: 20px;
            text-align: center;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            color: #333;
        }

        .form-group input, .form-group textarea {
            width: 100%;
            padding: 10px;
            font-size: 1em;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        .form-group textarea {
            height: 100px;
            resize: vertical;
        }

        .submit-btn {
            background-color: #1a73e8;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 1em;
            border-radius: 5px;
            cursor: pointer;
            display: block;
            width: 100%;
            margin-top: 20px;
        }

        .submit-btn:hover {
            background-color: #155bb5;
        }
    </style>
</head>
<body>
<div class="container">
    <h2 class="title">커리어 편집</h2>
    <form action="${pageContext.request.contextPath}/carrer-path/update" method="post">
        <input type="hidden" name="id" value="${careerPath.id}">
        <div class="form-group">
            <label for="job_info">직업 설명</label>
            <input type="text" id="job_info" name="jobInfo" value="${careerPath.jobInfo}">
        </div>
        <div class="form-group">
            <label for="job_ex">직무 예시</label>
            <textarea id="job_ex" name="jobEx">${careerPath.jobEx}</textarea>
        </div>
        <div class="form-group">
            <label for="ncs_code">NCS 코드</label>
            <input type="text" id="ncs_code" name="ncsCode" value="${careerPath.ncsCode}">
        </div>
        <button type="submit" class="submit-btn">저장하기</button>
    </form>
</div>
</body>
</html>
