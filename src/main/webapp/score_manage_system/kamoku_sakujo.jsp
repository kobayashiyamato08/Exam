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
<h1>科目削除</h1>
<%@ include file="./kamoku_menu.jsp"%>
<br>
</head>
<body>
	<form action="touroku.jsp" method="get" class="form_kamoku">
		<table>
			<tr>
				<th><label for="school_cd">学校コード</label></th>
				<td>
					<p>下から１つ選んでください</p> 
					<input type="radio" name="school_cd" required />
					  <label>oom</label> <br> 
					<input type="radio" name="school_cd" required /> 
					  <label>tky</label>
				</td>
			</tr>
		</table>

		<table>
			<tr>
				<th><label class="cd">科目コード</label></th>
				<td><select name="cd" style="width: 25%" required />
					<option value="" selected>選択してください。</option>
					<option value="a01">A01</option>
					<option value="a02">A02</option>
					<option value="b01">B01</option>
					<option value="b02">B02</option>
					<option value="c01">C01</option>
					<option value="c02">C02</option>
					<option value="d01">D01</option>
					<option value="d02">D02</option>
					<option value="e01">E01</option>
					<option value="e02">E02</option>
					<option value="f01">F01</option>
					<option value="f02">F02</option>
					<option value="g01">G01</option>
					<option value="g02">G02</option>
					<option value="h01">H01</option>
					<option value="h02">H02</option>
					<option value="i01">I01</option>
					<option value="i02">I02</option>
					<option value="j01">J01</option>
					<option value="j02">J02</option>
					<option value="01">1</option>
					<option value="01">2</option>
					<option value="01">3</option>
					<option value="01">4</option>
					<option value="01">5</option> </select></td>
			</tr>
		</table>


		<table>
			<tr>
				<th><label for="ent_year">科目名</label></th>
				<td><select name="ent_year" style="width: 25%" required />
					<option value="" selected>選択してください。</option>
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
			     	<option value="kamoku_2">科目2</option>						<option value="kamoku_3">科目3</option>
			 		<option value="kamoku_4">科目4</option>
					<option value="kamoku_5">科目5</option> </select></td>
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