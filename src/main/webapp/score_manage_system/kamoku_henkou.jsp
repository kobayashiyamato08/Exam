<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="../header.html"%>
<head>
<meta charset="UTF-8">
<style>
body {
	display: flex;
	box-sizing: border-box;
}

menu {
	min-width: 600px;
	margin-top: 100px;
	margin-left: 50px;
	margin-right: -200px;
	box-sizing: border-box;
}

h1 {
	background-color: #eeeeee;
	width: 600px;
	margin-top: 100px;
	height: 40px;
	font-size: 30px;
	border-left: 5px solid #31a9ee;
	padding-left: 10px;
}

label{
    font-size: 15px;
}

kamoku_code {
    display: inline-block;
    padding-bottom :15px;
}

simei {
    display: inline-block;
    padding-bottom :15px;
}

input {
    width: 590px;
    height: 35px;
}

button {
    width: 50px;
	padding: 10px;
	background-color: gray;
	color: #ffffff;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	border-radius: 1vh;
}
</style>
</head>
<body>
  <menu><%@ include file="./menu.jsp" %></menu>
  <form action="../score_manage_system/SubjectUpdateExecute.action" method="post">
    <h1>科目情報変更</h1>
    
    <kamoku_code>
      <label>科目コード</label>
      
    </kamoku_code><p>
    
    <simei>
      <label>科目名</label><br>
      <input type="text" name="id" placeholder="科目名を入力してください" required />
    </simei><br>
    
	<button type="buttton">変更</button><p></p>
	<a href="kamoku_ichiran.jsp">戻る</a>
  </form>
</body>
<%@ include file="../footer.html"%>
</html>