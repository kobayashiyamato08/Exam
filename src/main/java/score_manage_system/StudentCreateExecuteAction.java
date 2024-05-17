package score_manage_system;

import dao.StudentDAO;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tool.Action;

public class StudentCreateExecuteAction extends Action {
	public String execute(
		HttpServletRequest request,HttpServletResponse response
	) throws Exception {
		HttpSession session=request.getSession();
		
//		登録する情報を受け取る
		Integer entyear=Integer.parseInt(request.getParameter("entyear"));
		String no=request.getParameter("no");
		String name=request.getParameter("name");
		String classnum=request.getParameter("classnum");
		boolean isattend = Boolean.parseBoolean(request.getParameter("isattend"));
		
//		TODO;入力年度、学生番号の未入力時エラーの実装
			
//		情報が入力されていな////////い場合はもとの画面に戻す
		if (entyear == null||no.isEmpty() ||name.isEmpty()||classnum.isEmpty()) {
			return "gakusei_touroku.jsp";
		}
		
//		全ての情報が入力されていれば実行、完了の画面を表示する
		StudentDAO dao=new StudentDAO();
		session.getAttribute("student");
		dao.StudentCreate(no, name, entyear, classnum,isattend);
		return "gakusei_touroku_succes.jsp";
	}
}
