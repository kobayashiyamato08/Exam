package score_manage_system;

import dao.SubjectDAO;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tool.Action;

public class SubjectCreateExecuteAction extends Action {
	public String execute(
		HttpServletRequest request,HttpServletResponse response
	) throws Exception {
		HttpSession session=request.getSession();
		
		String cd=request.getParameter("cd");
		String name=request.getParameter("name");
		
//		TODO:例外処理の記述
		if (cd.isEmpty()||name.isEmpty()) {
			return "subject_create.jsp";
		}
		
		
		SubjectDAO dao=new SubjectDAO();
		session.getAttribute("subject");
		dao.SubjectCreate(cd,name, null);
		
		return "subject_create_done.jsp";
		
	}

}
