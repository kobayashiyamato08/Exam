package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.School;

public class SchoolDAO extends DAO {
public String BaseSql;
	
	public School get(String no)
			throws Exception {
			School school=null;
			
			Connection con=getConnection();
			
			PreparedStatement st;
			st=con.prepareStatement(
					"select * from student where no=?");
				st.setString(1, no);
				ResultSet rs=st.executeQuery();
				if (rs.next()) {
					
					school = new School();
					school.setCd(rs.getString("no"));
				}
				return school;
		}
}
