<!DOCTYPE html>
<%@ page pageEncoding="UTF-8"%>
<style>
li {
	list-style: none;
	margin-left: 20px;
}

ul{
    font-size: 15px;
}
</style>
<html>
<head>
<meta charset="UTR-8">
</head>

<body>
	<ul>
		<a href="main.jsp">メニュー</a>
		<p></p>
		<a href="gakusei_ichiran.jsp">学生管理</a>
		<p></p>
		<label>成績管理</label>
		<p></p>
		<li><a href="seiseki_ichiran.jsp">成績登録</a></li>
		<p></p>
		<li><a href="seiseki_sansyo.jsp">成績参照</a></li>
		<p></p>
		<a href="SubjectList.action">科目管理</a>
		<p></p><br>
		<a href="logout.jsp">ログアウト</a>
	</ul>
</body>
</html>