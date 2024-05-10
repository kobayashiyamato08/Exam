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
    width: 60px;
	padding: 10px;
	background-color: gray;
	color: #ffffff;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	border-radius: 1vh;
}

input {
    width: 590px;
    height: 35px;
</style>
</head>
<body>
	<menu><%@ include file="./menu.jsp"%></menu>
	<form action="gakusei_ichiran.jsp">
		<h1>学生情報変更</h1>
		
		<nyugaku>
		  <label>入学年度</label>
		  
		</nyugaku><p>
		
		<bangou>
		  <label>学生番号</label>
		  
		</bangou><p>
		
		<simei>
		  <label>氏名</label><br>
          <input type="text" name="id" placeholder="氏名を入力してください" required />
		</simei><p>
		
		<class>
          <label>クラス</label><br>
	       <select style="width: 600px; height: 40px;" required />
	         <option value="" selected>-------</option>
		     <option value="131">131</option>
			 <option value="101">101</option>
			 <option value="201">201</option>
		   </select>
	    </class><p>
		<button type="buttton">変更</button><p></p>
	    <a href="gakusei_ichiran.jsp">戻る</a>
	</from>
</body>
<%@ include file="../footer.html"%>
</html>