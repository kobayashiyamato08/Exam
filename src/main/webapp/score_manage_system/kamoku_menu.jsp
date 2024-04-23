<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
nav{
    background: #2e1200;
}

nav ul{
    display: flex;
	margin: 0 auto;
	padding: 0 3%;
	width: 94%;
	max-width: 960px;
	list-style-type: none;
}

nav ul li{
    position: relative;
	width: 20%;
}

nav ul li a{
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
			<li><a href="kamoku_touroku.jsp">科目登録</a></li>
			<li><a href="kamoku_henkou.jsp">科目変更</a></li>
			<li><a href="kamoku_sakujo.jsp">科目削除</a></li>
			<li><a href="kamokubetsu_ichiran.jsp">科目別成績一覧</a></li>
			<li><a href="main.jsp">戻る</a></li>
		</ul>
	</nav>
</body>
</html>