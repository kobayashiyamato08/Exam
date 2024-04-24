 package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
<<<<<<< HEAD
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
=======
import java.util.ArrayList;
import java.util.List;
>>>>>>> branch 'master' of https://github.com/kobayashiyamato08/Exam.git

import bean.Student;
import bean.Teacher;

public class StudentDAO extends DAO {
//	basesqlの呼び出し
	public String BaseSql;
	
//	学生テーブルの情報を表示する操作StudentListメソッドを定義
	public List<Student> StudentList(int ent_year,String no,String name,String class_num,boolean is_attend)
	throws Exception {
		List<Student> list=new ArrayList<>();
//		SQL文を実行
		Connection con = getConnection();
		BaseSql="SELECT ENT_YEAR,NO,NAME,CLASS_NUM,IS_ATTEND FROM STUDENT";
		PreparedStatement st=con.prepareStatement(BaseSql);
		st.setInt(1, ent_year);
		st.setString(2, no);
		st.setString(3, name);
		st.setString(4, class_num);
		st.setBoolean(5, is_attend);
		ResultSet rs=st.executeQuery();
		
//		情報を取得し表示、次の行の生成をデータがなくなるまで行う
		while(rs.next()) {
			Student s = new Student();
			s.setEntYear(rs.getInt("ent_year"));
			s.setNo(rs.getString("no"));
			s.setName(rs.getString("name"));
			s.setClassNum(rs.getString("class_num"));
			s.setIsAttend(rs.getBoolean("is_attend"));	
		}
		
//		データベースの接続を切る
		st.close();
		con.close();
		
		return list; //listを返却
	}
	
//	学生テーブルに新たに情報を追加する操作
	public List<Student> StudentCreate(String no,String name,int ent_year,String class_num) 
		throws Exception {
		
		List<Student> list=new ArrayList<>();
		Connection con = getConnection(); 
		BaseSql="INSERT INTO STUDENT (NO,NAME,ENT_YEAR,CLASS_NUM,IS_ATTEND,SCHOOL_CD) VALUES (?,?,?,?,?,?)";
		PreparedStatement st=con.prepareStatement(BaseSql);
		Student s=new Student();
		Teacher t=new Teacher();
		
//		在学中、学校名をDBから自動的に登録できるようにしたいが、よくわからない
		st.setString(1,s.getNo());
		st.setString(2,s.getName());
		st.setInt(3,s.getEntYear());
		st.setString(4,s.getClassNum());
		st.setBoolean(5,true);


		
		st.executeUpdate();
		
		st.close();
		con.close();
		
		return list;
	}

//	学生テーブルの情報の編集を行う操作
	public List<Student> StudentUpdate(String name,String class_num,boolean is_attend) 
		throws Exception {
		
		List<Student> list=new ArrayList<>();
		Connection con=getConnection();
		BaseSql="UPDATE STUDENT SET NAME = ?,CLASS_NUM = ?,IS_ATTEND = ?";
		PreparedStatement st=con.prepareStatement(BaseSql);
		Student s=new Student();
		
		st.setString(1,s.getName());
		st.setString(2, s.getClassNum());
		st.setBoolean(3, s.getIsAttend());
		
		st.executeUpdate();
		
		st.close();
		con.close();
		
		return list;
	}

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
    
    
	