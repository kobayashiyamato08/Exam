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

sinki {
    padding-left: 530px;
}

gakusei {
    display: inline-block;
	border: 2px solid #eeeeee;
	border-radius: 1vh;
	padding: 40px;
	padding-top: 10px;
	width: 520px;	
}

nyugaku{
    display: inline-block;
}

class{
    display: inline-block;
}

zaigaku{
    display: inline-block;
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

</style>
</head>
<body>
	<menu><%@ include file="./menu.jsp"%></menu>
	<form action="StudentList.action" method=post>
		<h1>学生管理</h1>
		<sinki>
		  <a href="gakusei_touroku.jsp">新規登録</a><br>
		</sinki>
		<gakusei> 
		  <nyugaku>
		    <label>入学年度</label><br>
		      <select style="width: 180px; height: 30px;" name="entyear" required />
			    <option value="" selected>------</option>
			    <option value=2014 name="entyear">2014</option>
				<option value=2015 name="entyear">2015</option>
				<option value=2016 name="entyear">2016</option>
				<option value=2017 name="entyear">2017</option>
				<option value=2018 name="entyear">2018</option>
				<option value=2019 name="entyear">2019</option>
				<option value=2020 name="entyear">2020</option>
				<option value=2021 name="entyear">2021</option>
				<option value=2022 name="entyear">2022</option>
				<option value=2023 name="entyear">2023</option>
				<option value=2024 name="entyear">2024</option>
				<option value=2025 name="entyear">2025</option>
				<option value=2026 name="entyear">2026</option>
				<option value=2027 name="entyear">2027</option>
				<option value=2028 name="entyear">2028</option>
				<option value=2029 name="entyear">2029</option>
				<option value=2030 name="entyear">2030</option>
				<option value=2031 name="entyear">2031</option>
				<option value=2032 name="entyear">2032</option>
				<option value=2033 name="entyear">2033</option>
				<option value=2034 name="entyear">2034</option>
		      </select> 
		   </nyugaku>
		   
		   <class>
		    <label>クラス</label><br>
		      <select style="width: 180px; height: 30px;" name="classnum" required />
			    <option value="" selected>-------</option>
			    <option value="131" name="classnum">131</option>
			    <option value="101" name="classnum">101</option>
			    <option value="201" name="classnum">201</option>
		      </select> 
		   </class>
		   
		   <zaigaku>
		     <input type="checkbox" name="isattend">
		     <label>在学中</label>
		   </zaigaku>
		   
		   <sibori>
		     <button type="submit">絞込み</button>
		   </sibori>
		 </gakusei>
	</form>
</body>
<%@ include file="../footer.html"%>
</html>