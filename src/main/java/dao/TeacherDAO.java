package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.Teacher;

public class TeacherDAO extends DAO {
	public Teacher get(String id) 
		throws Exception {
		Teacher teacher = null;
		
		Connection con=getConnection();
		
		PreparedStatement st;
		st=con.prepareStatement(
			"SELECT * FROM TEACHER WHERE ID = ?");
		st.setString(1, id);
		ResultSet rs=st.executeQuery();
		
		while (rs.next()) {
			teacher=new Teacher();
			teacher.setId(rs.getString("id"));
		}
		
		return teacher;
	}
	
	public Teacher login(String id,String password) 
		throws Exception {
		Teacher teacher = null;
		
		Connection con = getConnection();
		
		PreparedStatement st;
		st=con.prepareStatement(
			"SELECT * FROM TEACHER WHERE ID = ? AND PASSWORD = ?");
		st.setString(1, id);
		st.setString(2, password);
		ResultSet rs = st.executeQuery();
		
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
