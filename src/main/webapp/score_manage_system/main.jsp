<!DOCTYPE html>
<%@ page pageEncoding="UTF-8"%>
<html>
<%@ include file="../header.html"%>
<head>
<meta charset="UTR-8">
<style>
body {
	width: 960px;
	display: flex;
	box-sizing: border-box;
}

menu {
	min-width: 600px;
	margin-top: 100px;
	margin-left: 175px;
	margin-right: -200px;
	box-sizing: border-box;
}

h3 {
	background-color:;
	width: 600px;
	margin-top: 100px;
	height: 40px;
	font-size: 30px;
	border-left: 5px solid #31a9ee;
	padding-left: 10px;
}

gakusei{
    display: inline-block;
    background-color: green;
    height: 100px;
    width: 180px;
    padding-top: 10%;
    border-radius: 1vh;
    vertical-align:  middle;
}

seiseki{
    display: inline-block;
    background-color: red;
    height: 100px;
    width: 180px;
    padding-top: 2.4%;
    padding-bottom: 8%;
    border-radius: 1vh;
    vertical-align:  middle;
}

kamoku{
    display: inline-block;
    background-color: blue;
    height: 100px;
    width: 180px;
    padding-top: 10%;
    border-radius: 1vh;
    vertical-align:  middle;
}

</style>
</head>

<body>
	<menu><%@ include file="menu.jsp"%></menu>
	<div>
	<h3>メニュー</h3>
	  <main_menu>
		<gakusei> 
		  <a href="gakusei_ichiran.jsp">学生一覧</a> 
		</gakusei>
		<seiseki>
		  <label>成績管理</label><br>
		  <a href="seiseki_touroku.jsp">成績登録</a><br> 
		  <a href="seiseki_sansyo.jsp">成績参照</a>
		</seiseki>
		<kamoku>
		  <a href="kamoku_ichiran.jsp">科目管理</a>
		</kamoku>
	  </main_menu>
	</div>
</body>
<%@ include file="../footer.html"%>
</html>