<!DOCTYPE html>
<%@ page pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTR-8">
<style>
form {
    background-color: lightgreen;
	width: 50%;
	margin-top: 10%;
	
	font-size: 20px;
	border: 5px black solid;
}

p{
    font-size: 
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
		<body>
			<div class="login_form_btm">
				<input type="id" name="user_id" placeholder="ユーザーIDを入力してください"
					style="width: 250px; margin: 0 auto;" required /> <br> <input
					type="password" name="password" placeholder="パスワードを入力してください"
					style="width: 250px; margin: 0 auto;" required />
			</div>
			<br>
			<button type="submit">ログイン</button>
		</body>
	</form>
</center>
</html>
