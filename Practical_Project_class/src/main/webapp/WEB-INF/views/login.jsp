<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
        * {
            box-sizing: border-box;
            font-family: 'Noto Sans KR', sans-serif;
            border-radius: 5px;
        }
        
        body {
            background-image: url("../img/배경.jfif");
            background-position: center;
            background-repeat:no-repeat;
            background-size: 1000px 1000px;
            weight: 500px; height : 200px;
			margin: 50px;
        }
        
        .login-form {
            width: 300px;
            background-color: #fceea7;
            margin-right: auto;
            margin-left: auto;
            margin-top: 150px;
            padding: 20px;
            text-align: center;
            border: none;
            
        }
        .submit-btn {
            font-size: 14px;
            border: none;
            padding: 10px;
            width: 260px;
            background-color: rgb(0, 0, 0);
            margin-bottom: 30px;
            color: white;
        }
        .text-field {
            font-size: 14px;
            padding: 10px;
            border: none;
            width: 260px;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
<form method = "post" action="loginOk">
	<div class= "login-form">
        <label>User  ID: </label><input type='text' name='userid' class="text-field"/>
        <label>Password: </label><input type='password' name ='password' class="text-field"/>
    	<button type='submit'>login</button>
    </div>
</form>
</body>
</html>