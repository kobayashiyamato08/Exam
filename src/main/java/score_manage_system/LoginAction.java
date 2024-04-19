package score_manage_system;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import tool.Action;

public class LoginAction extends Action {
//	ログイン画面に遷移する
	public String execute(
		HttpServletRequest request,HttpServletResponse response
		) throws Exception {
			request.getSession();
			return "../jsp/login.jsp";
	}
}
