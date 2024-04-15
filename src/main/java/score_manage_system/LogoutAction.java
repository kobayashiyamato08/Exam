package score_manage_system;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tool.Action;

public class LogoutAction extends Action{
//	セッションから使用者のデータを削除
	public String execute(
		HttpServletRequest request,HttpServletResponse response
		) throws Exception {
		
		HttpSession session=request.getSession();
		
//		ログアウト画面に遷移する
		session.removeAttribute("id");
		return "logout.jsp";
		
	}
}
