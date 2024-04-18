package score_manage_system;

import java.util.List;

import bean.TestListStudent;
import dao.TestListStudentDAO;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tool.Action;

public class TestListAction extends Action{
	public String execute(
			HttpServletRequest request,HttpServletResponse response
		) throws Exception {
			HttpSession session=request.getSession();
			
			TestListStudentDAO dao=new TestListStudentDAO();
			List<TestListStudent> list=dao.TestListStudent("");
			
			session.setAttribute("list", list);
			
			return "seiseki_ichiran.jsp";
			
	}

}
