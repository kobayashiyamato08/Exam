<!DOCTYPE html>
<%@ page pageEncoding="UTF-8"%>
<style>
</style>
<html>
<head>
<meta charset="UTR-8">
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
	width: 25%;

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
			<li><a href="gakusei_ichiran.jsp">学生一覧</a></li>
			<li><a href="kamoku_ichiran.jsp">科目一覧</a></li>
			<li><a href="seiseki_ichiran.jsp">成績一覧</a></li>
			<li><a href="logout.jsp">ログアウト</a></li>
		</ul>
	</nav>
</body>
</html>