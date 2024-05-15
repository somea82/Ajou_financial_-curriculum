<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .login-form {
            background: white;
            padding: 2em;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            width: 300px;
        }
        .form-control {
            margin-bottom: 1em;
            width: 100%;
        }
        .form-control label {
            display: block;
            margin-bottom: .5em;
            color: #333;
        }
        .form-control input {
            width: 100%;
            padding: .8em;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .form-control input[type="submit"] {
            background-color: #0056b3;
            color: white;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .form-control input[type="submit"]:hover {
            background-color: #004494;
        }
    </style>
</head>
<body>
<div class="login-form">
    <h2>관리자 로그인</h2>
    <form action="/login" method="post">
        <div class="form-control">
            <label for="username">ID</label>
            <input type="text" id="username" name="username" required>
        </div>
        <div class="form-control">
            <label for="password">Password</label>
            <input type="password" id="password" name="password" required>
        </div>
        <div class="form-control">
            <input type="submit" value="Log in">
        </div>
    </form>
</div>
</body>
</html>

