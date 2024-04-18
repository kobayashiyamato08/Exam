package score_manage_system;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class StudentUpdateAction {
	public String execute(
			HttpServletRequest request,HttpServletResponse response
			) throws Exception {
				request.getSession();
				return "student_update.jsp";
	}
}
