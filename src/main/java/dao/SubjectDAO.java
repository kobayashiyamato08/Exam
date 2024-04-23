 package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.School;
import bean.Subject;

public class SubjectDAO extends DAO {
	public Subject get(String cd, School school) throws Exception {
	    Subject subject = null;
	    
	    Connection con = getConnection();
	    PreparedStatement st = null;
	    ResultSet rs = null;
	    
	    try {
	        st = con.prepareStatement("SELECT * FROM subject WHERE cd=? AND school=?");
	        st.setString(1, cd);
	        st.setString(2, school.getName()); // 仮に学校名を取得するメソッドgetName()を使用するとします
	        rs = st.executeQuery();
	        
	        if (rs.next()) {
	            subject = new Subject();
	            subject.setCd(rs.getString("cd"));
	            subject.setSchool(school); // 学校オブジェクトをそのまま設定します
	            // 他の属性も必要に応じて取得し、設定します
	        }
	    } finally {
	        if (rs != null) {
	            rs.close();
	        }
	        if (st != null) {
	            st.close();
	        }
	        if (con != null) {
	            con.close();
	        }
	    }
	    
	    return subject;
	}
}