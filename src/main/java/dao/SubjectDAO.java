 package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.School;
import bean.Subject;

public class SubjectDAO extends DAO {
	public Subject get(String cd, School school)
		throws Exception {
		Subject subject=null;
		
		Connection con=getConnection();
		
		PreparedStatement st;
		st=con.prepareStatement(
				"select * from subject where cd=? and school=?");
		st.setString(1, cd);
		st.setSchool(2, school);
		ResultSet rs=st.executeQuery();
		
		if (rs.next()) {
			subject = new Subject();
			subject.setCd(rs.getString("cd"));
			subject.setSchool(rs.getSchool("school"));
			
		}
		return subject;
	}
	
	public List<Subject> filter(ResultSet School) {
		List<Subject> filteredSubjects =new ArrayList<>();
		return filteredSubjects;
}
	public boolean save(Subject subject) {
		return true;
	}
	public boolean delete(Subject subject) {
		return true;
	}
	
	
}