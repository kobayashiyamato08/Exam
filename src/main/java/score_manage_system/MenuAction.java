package score_manage_system;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import tool.Action;

public class MenuAction extends Action {
//	ログイン成功時のメニュー画面に遷移する
	public String execute(
		HttpServletRequest request,HttpServletResponse response
		) throws Exception {
			request.getSession();
			return "menu.jsp";
	}
}