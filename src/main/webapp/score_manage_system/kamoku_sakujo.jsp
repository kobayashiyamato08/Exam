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

button {
    width: 50px;
	padding: 10px;
	background-color: red;
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
  <form action="kamoku_sakujo_succes.jsp">
    <h1>科目情報削除</h1>
    <p>を削除してもよろしいですか</p>
    <button type="submit">削除</button><p>
	<a href="kamoku_ichiran.jsp">科目一覧</a>
  </form>
</body>
<%@ include file="../footer.html"%>
</html>