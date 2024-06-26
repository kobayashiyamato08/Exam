<!DOCTYPE html>
<%@ page pageEncoding="UTF-8"%>
<html>
<%@ include file="../header.html"%>
<head>
<meta charset="UTR-8">
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

h3 {
	background-color: #eeeeee;
	width: 600px;
	margin-top: 100px;
	height: 40px;
	font-size: 30px;
	border-left: 5px solid #31a9ee;
	padding-left: 10px;
}

gakusei{
    display: inline-block;
    background-color: lightgreen;
    height: 100px;
    width: 180px;
    padding-top: 10%;
    border-radius: 1vh;
    vertical-align:  middle;
    margin: 10px;
    text-align: center;
    font-size: 20px;
}

seiseki{
    display: inline-block;
    background-color: pink;
    height: 100px;
    width: 180px;
    padding-top: 2.4%;
    padding-bottom: 8%;
    border-radius: 1vh;
    vertical-align:  middle;
    margin: 10px;
    text-align: center;
    font-size: 20px;
    line-height: 40px;
    
}

kamoku{
    display: inline-block;
    background-color: lightblue;
    height: 100px;
    width: 180px;
    padding-top: 10%;
    border-radius: 1vh;
    vertical-align:  middle;
    margin: 10px;
    text-align: center;
    font-size: 20px;
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
		  <a href="seiseki_ichiran.jsp">成績登録</a><br> 
		  <a href="seiseki_sansyo.jsp">成績参照</a>
		</seiseki>
		<kamoku>
		  <a href="SubjectList.action">科目管理</a>
		</kamoku>
	  </main_menu>
	</div>
</body>
<%@ include file="../footer.html"%>
</html>