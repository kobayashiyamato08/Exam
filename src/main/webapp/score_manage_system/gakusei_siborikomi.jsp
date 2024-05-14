<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


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

td {
    padding-left: 65px;
    font-weight: bold;
}

table {
    border-bottom: 1px #eeeeee solid;
    padding-bottom: 5px;
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
			    <option value="2014">2014</option>
				<option value="2015">2015</option>
				<option value="2016">2016</option>
				<option value="2017">2017</option>
				<option value="2018">2018</option>
				<option value="2019">2019</option>
				<option value="2020">2020</option>
				<option value="2021">2021</option>
				<option value="2022">2022</option>
				<option value="2023">2023</option>
				<option value="2024">2024</option>
				<option value="2025">2025</option>
				<option value="2026">2026</option>
				<option value="2027">2027</option>
				<option value="2028">2028</option>
				<option value="2029">2029</option>
				<option value="2030">2030</option>
				<option value="2031">2031</option>
				<option value="2032">2032</option>
				<option value="2033">2033</option>
				<option value="2034">2034</option>
		      </select> 
		   </nyugaku>
		   
		   <class>
		    <label>クラス</label><br>
		      <select style="width: 180px; height: 30px;" name="classnum" required />
			    <option value="" selected>-------</option>
			    <option value="131">131</option>
			    <option value="101">101</option>
			    <option value="201">201</option>
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

	<p>検索結果:</p>
	<table>

		<tr>
		<td>入学年度</td>
		<td>学生番号</td>
		<td>氏名</td>
		<td>クラス</td>
		<td>在学中</td>
		</tr>
			<c:forEach var="s" items="${list}">
				<tr>
 				<td>${s.entYear}</td>
				<td>${s.no}</td>
			 	<td>${s.name}</td>
				<td>${s.classNum}</td>
				<td>${s.isAttend}</td>
				</tr>
			</c:forEach>
		</table>
	</form>

	  <th>入学年度</th>
	  <td>学生番号</td>
	  <td>氏名</td>
	  <td>クラス</td>
	  <td>在学中</td>
	</table>
	
	<a href="gakusei_henkou.jsp">変更</a>

</body>
<%@ include file="../footer.html"%>
</html>