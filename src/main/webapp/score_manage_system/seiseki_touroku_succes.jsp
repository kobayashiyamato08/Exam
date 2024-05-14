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

kanryo {
    background-color: #3cb371;
    font-size: 18px;
}

a {
    padding-right: 100px;
}
</style>
</head>
<body>
  <menu><%@ include file="./menu.jsp" %></menu>
  <form action="gakusei_touroku_succes.jsp">
    <h1>成績管理</h1>
    <center><kanryo>登録が完了しました</kanryo></center><p>
	<a href="kamoku_touroku.jsp">戻る</a>
	<a href="seiseki_sansyo.jsp">成績参照</a>
  </form>
</body>
<%@ include file="../footer.html"%>
</html>