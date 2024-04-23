<!DOCTYPE html>
<%@ page pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<style>
form {
	width: 30%;
	height: 260px;
	margin-top: 12%;
	border: 3px #808080 solid;
    border-radius: 1vh;
}

h1 {
	font-size: 25px;
	background-color: ;
	height: auto;
}

body {
	background-size: cover;
}

input {
	width: 80%;
	padding: 10px;
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
}

button {
	width: 30%;
	padding: 10px;
	background-color: #4CAF50;
	color: #ffffff;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	border-radius: 100vh;
}
</style>
<center>
<<<<<<< HEAD
	<form action="LoginExecute.action" method="post">
		<div>
			<h1>ログイン画面</h1>
			<p>
				ユーザID、パスワードをご入力の上、<br> 「ログイン」ボタンをクリックしてください。
			</p>
		</div>
		<body background="${pageContext.request.contextPath}/picture/gakusei.jpg">
=======
	<form action="./main.jsp" method="post">
		<h1>ログイン画面</h1>
		<body>
>>>>>>> branch 'master' of https://github.com/kobayashiyamato08/Exam.git
			<div>
				<input type="id" name="id" placeholder="ユーザーIDを入力してください" required />
				<br> <input type="password" name="password"
					placeholder="パスワードを入力してください" required />
			</div>
			<br>
			<button type="submit">ログイン</button>
		</body>
	</form>
</center>
</html>
