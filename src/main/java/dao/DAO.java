package dao;

import java.sql.Connection;

import javax.naming.InitialContext;
<<<<<<< HEAD
=======
import javax.sql.DataSource;
>>>>>>> branch 'master' of https://github.com/kobayashiyamato08/Exam.git

public class DAO {
	static DataSource ds;

	// データベースの接続に必要な処理をgetConnectionというメソッドにまとめておく
	public Connection getConnection() throws Exception {
		if (ds==null) {
			InitialContext ic=new InitialContext();
			// score_manage_systemにアクセス
			ds=(DataSource)ic.lookup("java:/comp/env/jdbc/score_manage_system");
		}
		return ds.getConnection();
	}
}
