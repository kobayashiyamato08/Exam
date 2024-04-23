<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
	width: 20%;
}

nav ul li a {
	display: block;
	padding: 17px 20px;
	color: #fff;
	text-align: center;
	text-decoration: none;
}
</style>
</head>
<body>
	<nav>
		<ul>
			<li><a href="seiseki_touroku.jsp">成績登録</a></li>
			<li><a href="seiseki_henkou.jsp">成績変更</a></li>
			<li><a href="seiseki_sakujo.jsp">成績削除</a></li>
			<li><a href="kamokubetsu_ichiran.jsp">科目別成績一覧</a></li>
			<li><a href="gakuseibetsu_ichiran.jsp">学生別成績一覧</a></li>
			<li><a href="main.jsp">戻る</a>
		</ul>
	</nav>
</body>
</html>