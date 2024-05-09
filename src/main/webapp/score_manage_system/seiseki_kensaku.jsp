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

seiseki_kanri {
    display: inline-block;
	border: 2px solid #eeeeee;
	border-radius: 1vh;
	padding: 40px;
	padding-top: 10px;
	width: 520px;	
}

nyugaku {
    display: inline-block;
}

class {
    display: inline-block;
}

kamoku {
    display: inline-block;
}

kaisu {
    display: inline-block;
}

button {
    width: 50px;
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
	<menu><%@ include file="menu.jsp"%></menu>
	<form action="seiseki_kensaku.jsp">
	<h1>成績管理</h1>
	  <seiseki_kanri> 
		  <nyugaku>
		    <label>入学年度</label><br>
		      <select style="width: 100px; height: 30px;" required />
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
		      <select style="width: 100px; height: 30px;" required />
			    <option value="" selected>-------</option>
			    <option value="131">131</option>
			    <option value="101">101</option>
			    <option value="201">201</option>
		      </select> 
		   </class>
		   
		   <kamoku>
		     <label>科目</label><br>
		     <select style="width: 140px; height: 30px;" required />
		       <option value="" selected>-------</option>
		       <option value="math">数学</option>
			   <option value="japanese">国語</option>
		       <option value="science">理科</option>
			   <option value="information">情報処理基礎知識</option>
			   <option value="english">英語コミュニケーション概論</option>
			   <option value="java_frame">Javaフレームワーク</option>
		       <option value="git">Git</option>
			   <option value="h2">H2</option>
			   <option value="id">ID管理術</option>
			   <option value="java_system">Javaシステム開発</option>
			   <option value="aws">AWS</option>
			   <option value="bean">BEAN</option>
			   <option value="c_language">C言語</option>
			   <option value="db">DB</option>
			   <option value="error">エラー対処術</option>
			   <option value="flutter">Flutter</option>
			   <option value="go">Go言語</option>
			   <option value="head_ware">ハードウェア</option>
			   <option value="it">IT概論</option>
			   <option value="java_basics">Java基礎</option>
			   <option value="kamoku_1">科目1</option>
			   <option value="kamoku_2">科目2</option>						
			   <option value="kamoku_3">科目3</option>
			   <option value="kamoku_4">科目4</option>
			   <option value="kamoku_5">科目5</option>
		     </select> 
		   </kamoku>
		   
		   <kaisu>
		     <label>回数</label><br>
		     <select style="width: 100px; height: 30px;" required />
		       <option value="" selected>-------</option>
		       <option value="1" >1</option>
		       <option value="2" >2</option>
		     </select>
		   </kaisu>
		   
		   <kensaku>
		     <button type="submit">検索</button>
		   </kensaku>
		 </seiseki_kanri>
	</form><p>
</body>
<%@ include file="../footer.html"%>
</html>