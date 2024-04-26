 package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

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
	
	public List<Subject> SubjectList(String cd,String name)
	throws Exception {
		List<Subject> list=new ArrayList<>();
//		SQL文を実行
		Connection con = getConnection();
		PreparedStatement st=con.prepareStatement("SELECT CD,NAME FROM SUBJECT");
		st.setString(1, cd);
		st.setString(2, name);
		ResultSet rs=st.executeQuery();
		
//		情報を取得し表示、次の行の生成をデータがなくなるまで行う
		while(rs.next()) {
			Subject s = new Subject();
			s.setCd(rs.getString("cd"));
			s.setName(rs.getString("name"));
		}
		
//		データベースの接続を切る
		st.close();
		con.close();
		
		return list; //listを返却
	}
	
	public List<Subject> SubjectCreate(Subject subject)
	throws Exception {
		
		List<Subject> list=new ArrayList<>();
		Connection con = getConnection();
		PreparedStatement st=con.prepareStatement("INSERT INTO SBJECT (SCHOOL_CD,CD,NAME) VALUES(?,?,?)");
		Subject s=new Subject();
		
		st.setString(1,s.getCd());
		st.setString(2, s.getName());
		
		st.executeUpdate();
		
		st.close();
		con.close();
		
		return list;
	}
	
	public List<Subject> StudentUpdate(Subject subject)
	throws Exception {
		List<Subject> list=new ArrayList<>();
		Connection con=getConnection();
		PreparedStatement st=con.prepareStatement("UPDATE SUBJECT SET CD=?,NAME=?");
		Subject s=new Subject();
		
		st.setString(1,s.getCd());
		st.setString(2, s.getName());
		
		st.executeUpdate();
		
		st.close();
		con.close();
		
		return list;
	}
	
	public List<Subject> StudentDelete(Subject subject)
	throws Exception {
		List<Subject> list=new ArrayList<>();
		Connection con=getConnection();
		PreparedStatement st=con.prepareStatement("DELETE FROM STUDENT WHERE NAME = ?");
		Subject s = new Subject();
		
		st.setString(1, s.getName());
		st.executeUpdate();
		
		st.close();
		con.close();
		
		return list;
	}
	 
}