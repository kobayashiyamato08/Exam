package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.Student;

public class TestListStudentDAO extends DAO{
	private static final String URL = "jdbc:h2:tcp://localhost/~/score_manage_system";
	private Connection connection;
	private String baseSql;
	
	public TestListStudentDAO(String basesql, String baseSql) {
		this.baseSql = baseSql;
	}
	
	public Connection getConnection() throws SQLException {
        if (connection == null || connection.isClosed()) {
            try {
                Class.forName("com.H2.jdbc.Driver");
                connection = DriverManager.getConnection(URL);
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
        }
        return connection;
    }

    // データベースの接続を閉じるメソッド
    protected void closeConnection() throws SQLException {
        if (connection != null && !connection.isClosed()) {
            connection.close();
        }
    }

    // baseSqlのゲッターメソッド
    protected String getBaseSql() {
        return baseSql;
    }

    // baseSqlのセッターメソッド
    protected void setBaseSql(String baseSql) {
        this.baseSql = baseSql;
    }
	
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
	
	


