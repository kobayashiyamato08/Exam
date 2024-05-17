package score_manage_system;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import tool.Action;
public class StudentCreateAction extends Action {
	public String execute (
		HttpServletRequest request,HttpServletResponse response
		) throws Exception {
			request.getSession();
			return "gakusei_touroku.jsp";
	}
}
