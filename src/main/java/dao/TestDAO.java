package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.School;
import bean.Student;
import bean.Subject;
import bean.Test;

public class TestDAO extends DAO {
	private static final String URL = "jdbc:h2:tcp://localhost/~/score_manage_system";
	private Connection connection;
	private String baseSql;
	
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
	
    public Test get(Student student, Subject subject, School school, int no) throws Exception {
        Test test = null;

        Connection con = null;
        PreparedStatement st = null;
        ResultSet rs = null;

        try {
            con = getConnection();
            String sql = baseSql + " WHERE student=? AND subject=? AND school=? AND no=?";
            st = con.prepareStatement(sql);
            st.setObject(1, student);
            st.setObject(2, subject);
            st.setObject(3, school);
            st.setInt(4, no);
            rs = st.executeQuery();

            if (rs.next()) {
                test = new Test();
                test.setStudent((Student) rs.getObject("student"));
                test.setSubject((Subject) rs.getObject("subject"));
                test.setSchool((School) rs.getObject("school"));
                test.setNo(rs.getInt("no"));
              
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (st != null) st.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return test;
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
	
	public List<Student> filter(int entYear, String classNum, Subject subject, int num, School school) {
   	 List<Student> filteredStudents = new ArrayList<>();
   	    return filteredStudents;
   }
	public boolean save(Test test, Connection connection) {
		return true;
	}
	public boolean delete(Test test, Connection connection) {
		return true;
	}
}
