<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<h1>成績登録</h1>
</head>
<body>
 <%@ include file="seiseki_menu.jsp" %>
 <form action="touroku.jsp" method="get" class="form_seiseki">
   <div class="form_gakusei">
  <label for="no">学生番号:</label>
  <input type="text" name="no" placeholder="学生番号を入力してください" required />
 </div>
 
 <div class="form_kamoku">
  <label class="subject_cd">科目コード:</label>
  <select name="subject_cd" required />
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
   <option value="01">5</option>
  </select>
 </div>
 
 <div class="form_kamoku">
  <label class="school_cd">学校コード:</label>
  <select name="school_cd" required />
   <option value="" selected>選択してください。</option>
   <option value="oom">oom</option>
   <option value="tky">tky</option>
  </select>
 </form>
</body>
</html>