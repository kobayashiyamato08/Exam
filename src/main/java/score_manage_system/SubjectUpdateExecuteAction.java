package score_manage_system;

import dao.SubjectDAO;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tool.Action;

public class SubjectUpdateExecuteAction extends Action {
	public String execute(
		HttpServletRequest request,HttpServletResponse response
	) throws Exception {
		HttpSession session=request.getSession();
		
		String cd=request.getParameter("cd");
		String name=request.getParameter("name");
		
		if (cd.isEmpty()||name.isEmpty()) {
			return "subject_update.jsp";
		}
		
		SubjectDAO dao=new SubjectDAO();
		session.getAttribute("subject");
		dao.SubjectUpdate(cd, name);
		return "kamoku_henkou_succes.jsp";
	}
}
