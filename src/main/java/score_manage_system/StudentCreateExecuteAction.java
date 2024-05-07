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
		int ent_year=Integer.parseInt(request.getParameter("ent_year"));
		String no=request.getParameter("no");
		String name=request.getParameter("name");
		String class_num=request.getParameter("class_num");
		
//		TODO;入力年度、学生番号の未入力時エラーの実装
		
		
//		情報が入力されていない場合はもとの画面に戻す
		if (name.isEmpty()||class_num.isEmpty()) {
			return "student_create.jsp";
		}
		
//		全ての情報が入力されていれば実行、完了の画面を表示する
		StudentDAO dao=new StudentDAO();
		session.getAttribute("student");
		dao.StudentCreate(no, name, ent_year, class_num, null);
		return "student_create_done.jsp";
	}
}
