<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
nav {
	background: #2e1200;
}

nav ul {
	display: flex;
	margin: 0 auto;
	padding: 0 3%;
	width: 94%;
	max-width: 960px;
	list-style-type: none;
}

nav ul li {
	position: relative;
	width: 25%;
}

nav ul li a {
	display: block;
	padding: 17px 20px;
	color: #fff;
	text-align: center;
	text-decoration: none;
}
</style>
<meta charset="UTF-8">
</head>
<body>
	<nav>
		<ul>
			<li><a href="gakusei_touroku.jsp">学生登録</a></li>
			<li><a href="gakusei_henkou.jsp">学生変更</a></li>
			<li><a href="gakuseibetsu_ichiran.jsp">学生別成績一覧</a></li>
			<li><a href="main.jsp">戻る</a></li>
		</ul>
	</nav>
</body>
</html>