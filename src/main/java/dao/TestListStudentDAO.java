package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.Student;

public class TestListStudentDAO {
	private String baseSql;
	
	public List<Student> postFilter(ResultSet rSet) {
		List<Student> filteredStudents = new ArrayList<>();
	    try {
	        while (rSet.next()) {
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return filteredStudents;
	}
	
	public List<Student> filter(Student student) {
   	 List<Student> filteredStudents = new ArrayList<>();
   	    return filteredStudents;
   }
}
	
	


