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

</style>
</head>

<body>
	<menu><%@ include file="menu.jsp"%></menu>
	<div>
	<h3>科目管理</h3>
	  
	</div>
</body>
<%@ include file="../footer.html"%>
</html>