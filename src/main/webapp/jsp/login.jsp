<!DOCTYPE html>
<%@ page pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTR-8">
<style>
form {
	width: 50%;
	margin-top: 10%;
}

h1 {
	font-size: 40px;
	color: white;
}

p {
	font-size: 20px;
	color: #cccccc;
}

body {
	background-size: cover;
}

input {
	width: 93%;
	padding: 10px;
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
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
	<form action="LoginExecute.action">
		<div>
			<h1>ログイン画面</h1>
			<p>
				ユーザID、パスワードをご入力の上、<br> 「ログイン」ボタンをクリックしてください。
			</p>
		</div>
		<body
			background="${pageContext.request.contextPath}/picture/gakusei.jpg">
			<div>
				<input type="id" placeholder="ユーザーIDを入力してください" required /> <br>
				<input type="password" name="password" placeholder="パスワードを入力してください"
					required />
			</div>
			<br>
			<button type="submit">ログイン</button>
			<p></p>
		</body>
	</form>
</center>
</html>
