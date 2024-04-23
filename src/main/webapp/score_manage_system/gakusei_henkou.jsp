<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
html {
	over-flow-y: scroll;
}

h1 {
	font-size: 40px;
	font-weght: bold;
	margin-bottom: 40px;
	text-align: center;
}

th {
	text-align: left;
	width: 300px;
	background-color: #eee; 
	padding: 20px;
	border: 1px #ccc solid;
}

td {
	width: 860px;
	padding: 15px;
	border: 1px #ccc solid;
}

ul {
	text-align: center;
}

button {
	width: 20%;
	padding: 10px;
	background-color: #2e1200;
	color: #ffffff;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	border-radius: 100vh;
}
</style>
<h1>学生変更</h1>
<%@ include file="./gakusei_menu.jsp"%> <br>
</head>
<body>
	<form action="touroku.jsp" method="get">
		<table>
			<tr>
				<th><label for="no">学生番号</label></th>
				<td><input type="text" name="no" style="width: 30%" placeholder="学生番号を入力してください" required /></td>
			</tr>
		</table>

		<table>
			<tr>
				<th><label for="name">学生名</label></th>
				<td><input type="text" name="name" style="width: 30%" placeholder="学生名を入力してください" required /></td>
			</tr>
		</table>

		<table>
			<tr>
				<th><label for="ent_year">入学年度</label></th>
				<td><select name="ent_year" style="width: 25%" required />
					<option value="" selected>選択してください。</option>
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
					<option value="2034">2034</option> </select></td>
			</tr>
		</table>

		<table>
			<tr>
				<th><label for="class_num">クラス番号</label></th>
				<td>
					<p>下から１つ選んでください</p> 
					<input type="radio" name="is_attend" required />
         			  <label>131</label> <br> 
         			<input type="radio" name="is_attend" required /> 
         			  <label>201</label> <br> 
         			<input type="radio" name="is_attend" required /> 
         			  <label>101</label> <br>
				</td>
			</tr>
		</table>

		<table>
			<tr>
				<th><label for="is_attend">在学中フラグ</label></th>
				<td>
					<p>下から１つ選んでください</p> <input type="radio" name="class_num" required />
					<label>している</label> <br> <input type="radio" name="class_num"
					required /> <label>していない</label>
				</td>
			</tr>
		</table>

		<table>
			<tr>
				<th><label for="school_cd">学校コード</label></th>
				<td>
					<p>下から１つ選んでください</p> <input type="radio" name="school_cd" required />
					<label>oom</label> <br> <input type="radio" name="school_cd"
					required /> <label>tky</label>
				</td>
			</tr>
		</table>
		<ul>
			<button type="submit">送信</button>
		</ul>

		<ul>
			<button type="reset">リセット</button>
		</ul>
	</form>
</body>
</html>