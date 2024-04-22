<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
h1{
    font-size: 50px;
}
</style>
<center>
 <h1>学生変更</h1>
<%@ include file="./gakusei_menu.jsp"%>
</head>
<body>
		<form action="touroku.jsp" method="get">
		<div class="form_gakusei">
			<label for="no">学生番号:</label> <input type="text" name="no"
				placeholder="学生番号を入力してください" required />
		</div>

		<div>
			<label for="name">学生名:</label> <input type="text" name="name"
				placeholder="名前を入力してください" required />
		</div>

		<div>
			<label for="ent_year">入学年度:</label> <select name="ent_year" required />
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
			<option value="2034">2034</option>
			</select>
		</div>

		<div>
			<label for="class_num">クラス番号:</label> <select name="class" required />
			<option value="" selected>選択してください。</option>
			<option value="131">131</option>
			<option value="201">201</option>
			<option value="101">101</option>
			</select>
		</div>

		<div>
			<label for="is_attend">在学中フラグ:</label> <select name="is_attend"
				required />
			<option value="" selected>選択してください。</option>
			<option value="true">している</option>
			<option value="false">していない</option>
			</select>
		</div>

		<div>
			<label for="school_cd">学校コード:</label> <select name="school_num"
				required />
			<option value="" selected>選択してください。</option>
			<option value="oom">oom</option>
			<option value="tky">tky</option>
			</select>
		</div>

		<input type="submit" value="送信"> <input type="reset"
			value="リセット">
	</form>
</body>
</center>
</html>