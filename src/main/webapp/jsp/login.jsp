<!DOCTYPE html>
<%@ page pageEncoding="UTF-8" %>
<html>
<meta charset="UTR-8">
<link rel="stylesheet" type="text/css" href="/src/main/webapp/css/login.css">

<form name="login_form">
<div class="login_form_top">
 <h1>ログイン画面</h1>
  <p>ユーザID、パスワードをご入力の上、
    「ログイン」ボタンをクリックしてください。</p>
</div>
 
<div class="login_form_btm">
 <input type="id" name="user_id" placeholder="ユーザーIDを入力してください" style="width: 300px; margin: 0 auto;">   
  <br>   
 <input type="password" name="password" placeholder="パスワードを入力してください" style="width: 300px; margin: 0 auto;">
</div>
<br>
 
<button type="submit">ログイン</button>
 
</form>
</html>
