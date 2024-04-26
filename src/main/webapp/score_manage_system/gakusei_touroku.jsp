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

label{
    font-size: 20px;
}

nyugaku {
    display: inline-block;
    padding-bottom :15px;
}

bangou {
    display: inline-block;
    padding-bottom :15px;
}

simei {
    display: inline-block;
    padding-bottom :15px;
}

class{
    display: inline-block;
    padding-bottom :15px;
}

input {
    width: 590px;
    height: 35px;
}

</style>
</head>
<body>
  <menu><%@ include file="./menu.jsp" %></menu>
  <div>
    <h1>学生情報登録</h1>
    <nyugaku>
      <label>入学年度</label><br>
	    <select style="width: 600px; height: 40px;" required />
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
    
    <bangou>
      <label>学生番号</label><br>
      <input type="text" name="id" placeholder="学生番号を入力してください" required />
    </bangou>
    
    <simei>
      <label>氏名</label><br>
      <input type="text" name="id" placeholder="氏名を入力してください" required />
    </simei>
    
    <class>
      <label>クラス</label><br>
	    <select style="width: 600px; height: 40px;" required />
	      <option value="" selected>-------</option>
		    <option value="131">131</option>
			<option value="101">101</option>
			<option value="201">201</option>
		</select>
	</class><br>
	
	<a href="gakusei_ichiran.jsp">戻る</a>
  </div>
</body>
<%@ include file="../footer.html"%>
</html>