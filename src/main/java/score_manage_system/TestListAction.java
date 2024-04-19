package score_manage_system;

import java.util.List;

import bean.Subject;
import bean.TestListStudent;
import dao.SubjectDAO;
import dao.TestListStudentDAO;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tool.Action;

public class TestListAction extends Action{
	public void execute(
			HttpServletRequest request,HttpServletResponse response
		) throws Exception {
			HttpSession session=request.getSession();
			
			TestListStudentDAO dao=new TestListStudentDAO();
			List<TestListStudent> list=dao.TestListStudent("");
			
			SubjectDAO subjectdao=new SubjectDAO();
			List<Subject> subjectlist=dao.Subject("");
			
			session.setAttribute("list", list);
			
			return;
			
	}

}
