package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.Teacher;

public class TeacherDAO extends DAO {
//	ログイン機能loginの定義
	public Teacher login(String id,String password) 
		throws Exception {
//		データベースにログインして
		Teacher teacher = null;
		
		Connection con = getConnection();
		
//		SQL文を実行
		PreparedStatement st;
		st=con.prepareStatement(
			"SELECT * FROM TEACHER WHERE ID = ? AND PASSWORD = ?");
		st.setString(1, id);
		st.setString(2, password);
		ResultSet rs = st.executeQuery();
		
//		データベースの情報が一致すればログインできる
		while (rs.next()) {
			teacher = new Teacher();
			teacher.setId(rs.getString("id"));
			teacher.setPassword(rs.getString("password"));
		}
		
		st.close();
		con.close();
		return teacher;
	}
}
