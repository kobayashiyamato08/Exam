package score_manage_system;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import tool.Action;
public class SubjectCreateAction extends Action {
	public String execute (
		HttpServletRequest request,HttpServletResponse response
		) throws Exception {
			request.getSession();
			return "subject_create.jsp";
	}
}
