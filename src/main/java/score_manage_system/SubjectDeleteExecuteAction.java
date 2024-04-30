package score_manage_system;

import dao.SubjectDAO;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tool.Action;

public class SubjectDeleteExecuteAction extends Action {
	public String execute(
		HttpServletRequest request,HttpServletResponse response
	) throws Exception {
		HttpSession session=request.getSession();
		String name=request.getParameter("name");
		
		SubjectDAO dao=new SubjectDAO();
		session.getAttribute(name);
		dao.SubjectDelete(null);
		
		return "subject_delete_done.jsp";
	}
}
