package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.Student;

public class StudentDAO extends DAO {
//	basesqlの呼び出し
	public String BaseSql;
	
//	学生テーブルの情報を表示する操作StudentListメソッドを定義
	public List<Student> StudentList(String no)
	throws Exception {
		List<Student> list=new ArrayList<>();
//		SQL文を実行
		Connection con = getConnection();
		BaseSql="SELECT * FROM STUDENT WHERE NO LIKE = ?";
		PreparedStatement st=con.prepareStatement(BaseSql);
		st.setString(1,no);
		ResultSet rs=st.executeQuery();
		
//		情報を取得し表示、次の行の生成をデータがなくなるまで行う
		while(rs.next()) {
			Student s = new Student();
			s.setEntYear(rs.getInt("ent_year"));
			s.setNo(rs.getString("no"));
			s.setName(rs.getString("name"));
			s.setClassNum(rs.getString("class_num"));
			s.setIsAttend(rs.getBoolean("is_attend"));	
		}
		
//		データベースの接続を切る
		st.close();
		con.close();
		
		return list; //listを返却
	}
	
//	学生テーブルに新たに情報を追加する操作
	public List<Student> StudentCreate() {
		return null; 
	}
	
//	学生テーブルの情報の編集を行う操作
	public List<Student> StudentUpdate() {
		return null;
	}
}
