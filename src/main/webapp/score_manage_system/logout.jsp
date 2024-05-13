<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="../header.html"%>
<head>
<meta charset="UTR-8">
<style>
form {
	width: 50%;
	margin-top: 10%;
}

h1 {
	font-size: 40px;
}

body {
	background-size: cover;
}

button {
	width: 30;
	padding: 10px;
	background-color: #4CAF50;
	color: #ffffff;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}
</style>
<center>
	<form action="./login.jsp">
		<div class="logout_form_top">
			<h1>ログアウト画面</h1>
			<p>ログアウト致します。よろしいですか？</p>
		</div>
</head>
<body>
	<button type="submit">ログアウト</button>
</body>
</form>
</center>
<%@ include file="../footer.html"%>
</html>