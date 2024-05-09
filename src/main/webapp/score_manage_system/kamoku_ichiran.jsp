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

sinki {
    padding-left: 530px;
}

td {
    padding-left: 120px;
    font-weight: bold;
}

kamoku {
    padding-left: 170px;
    padding-right: 220px;
}

a {
    padding-right: 50px;
}

japanese {
    border-bottom: 1px #eeeeee solid;
    padding-bottom: 5px;
}

sugaku {
    border-bottom: 1px #eeeeee solid;
    padding-bottom: 5px;
}

eigo {
    border-bottom: 1px #eeeeee solid;
    padding-bottom: 5px;
}

rika {
    border-bottom: 1px #eeeeee solid;
    padding-bottom: 5px;
}
</style>
</head>
<body>
<menu><%@ include file="menu.jsp"%></menu>
  <div>
	<h3>科目管理</h3>
	<sinki>
      <a href="kamoku_touroku.jsp">新規登録</a><br>
	</sinki>
	
	<table>
	  <th>科目コード</th>
	  <td>科目名</td>
	</table><br>
	
	<japanese>
	  <label>A02</label>
	  <kamoku>国語</kamoku>
	  <a href="kamoku_henkou.jsp">変更</a>
	  <a href="kamoku_sakujo.jsp">削除</a>
	</japanese><p>
	
	<sugaku>
	  <label>B02</label>
	  <kamoku>数学</kamoku>
	  <a href="kamoku_henkou.jsp">変更</a>
	  <a href="kamoku_sakujo.jsp">削除</a>
	</sugaku><p>
	
	<eigo>
	  <label>C02</label>
	  <kamoku style="padding-right: 43px;">英語コミュニケーション概論</kamoku>
	  <a href="kamoku_henkou.jsp">変更</a>
	  <a href="kamoku_sakujo.jsp">削除</a>
	</eigo><p>
	
	<rika>
	  <label>D02</label>
	  <kamoku>理科</kamoku>
	  <a href="kamoku_henkou.jsp">変更</a>
	  <a href="kamoku_sakujo.jsp">削除</a>
	</rika><p>
	
	<johou>
	  <label>E02</label>
	  <kamoku style="padding-right: 110px;">情報処理基礎知識１</kamoku>
	  <a href="kamoku_henkou.jsp">変更</a>
	  <a href="kamoku_sakujo.jsp">削除</a>
	</johou>
  </div>
</body>
<%@ include file="../footer.html"%>
</html>