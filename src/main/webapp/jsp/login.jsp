<!DOCTYPE html>
<%@ page pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTR-8">
<style>
form {
	width: 50%;
	margin-top: 10%;
	opacity: 10;
}

h1 {
	font-size: 40px;
	color: white;
}

p {
	font-size: 20px;
	color: white;
}

body{
    background-size: cover;
}
</style>
<center>
	<form action="./main.jsp">
		<div class="login_form_top">
			<h1>ログイン画面</h1>
			<p>
				ユーザID、パスワードをご入力の上、<br> 「ログイン」ボタンをクリックしてください。
			</p>
		</div>
		<body background="${pageContext.request.contextPath}/picture/gakusei.jpg">
			<div class="login_form_btm">
				<input type="id" name="user_id" placeholder="ユーザーIDを入力してください"
					style="width: 250px; margin: 0 auto;" required /> <br> 
				<input type="password" name="password" placeholder="パスワードを入力してください"
					style="width: 250px; margin: 0 auto;" required />
			</div>
			<br>
			<button type="submit">ログイン</button>
			<p></p>
		</body>
	</form>
</center>
</html>
