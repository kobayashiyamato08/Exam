package login;

import bean.Teacher;
import dao.TeacherDAO;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tool.Action;

public class LoginExecuteAction extends Action {
//	ログインを行う画面に移る
	public String execute(
		HttpServletRequest request,HttpServletResponse response
	) throws Exception {
		HttpSession session=request.getSession();
		
//		ID,PASSWORDを受け取る
		String id=request.getParameter("id");
		String password=request.getParameter("password");
		TeacherDAO dao=new TeacherDAO();
		Teacher teacher=dao.login(id, password);
		
//		情報が合致すればメニュー画面に遷移する
		if (teacher!=null) {
			session.setAttribute("teacher", teacher);
			return "menu.jsp";
		}
		
//		失敗した場合はもう一度ログイン画面に遷移する
		return "login.jsp";
	}
}
