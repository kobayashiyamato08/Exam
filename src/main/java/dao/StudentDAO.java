package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.School;
import bean.Student;

public class StudentDAO extends DAO {
	public Student get(String no)
		throws Exception {
		Student student=null;
		
		Connection con=getConnection();
		
		PreparedStatement st;
		st=con.prepareStatement(
				"select * from student where no=?");
			st.setString(1, no);
			ResultSet rs=st.executeQuery();
			if (rs.next()) {
				
				student = new Student();
				student.setNo(rs.getString("no"));
			}
			return student;
	}
			
public List<Student> postFilter(ResultSet rSet, School school) {
	List<Student> filteredStudents = new ArrayList<>();
    try {
        while (rSet.next()) {
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return filteredStudents;

}
    public List<Student> filter(School school, int entYear, String classNum, boolean isAttend) {
    	 List<Student> filteredStudents = new ArrayList<>();
    	    return filteredStudents;
    }
    public List<Student> filter(School school, int entYear, boolean isAttend) {
    	 List<Student> filteredStudents = new ArrayList<>();
    	    return filteredStudents;
    }
    public List<Student> filter(School school, boolean isAttend) {
    	 List<Student> filteredStudents = new ArrayList<>();
    	    return filteredStudents;
    }
    	
    	public boolean save(Student student) {
			return true;
    	}
    	public boolean delete(Student student) {
			return true;
    	}
    }
    
    
	