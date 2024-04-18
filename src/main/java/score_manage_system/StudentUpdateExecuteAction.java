package score_manage_system;

import dao.StudentDAO;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tool.Action;

public class StudentUpdateExecuteAction extends Action {
	public String execute(
		HttpServletRequest request,HttpServletResponse response
	) throws Exception {
		HttpSession session=request.getSession();
		
//		編集する学生の情報の入力
		String name=request.getParameter("name");
		String class_num=request.getParameter("class_num");
		Boolean is_attend=request.authenticate(response);
		
//		未入力の場合は前の画面に移る
		if (name.isEmpty()||class_num.isEmpty()) {
			return "student_update.jsp";
		}
		
//		すべて入力出来たら実行、官僚の画面へ遷移する
		StudentDAO dao=new StudentDAO();
		session.getAttribute("student");
		dao.StudentUpdate(name, class_num, is_attend);
		return "student_update_done.jsp";
	}
}
