package score_manage_system;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tool.Action;

public class TestListAction extends Action{
	public String execute(
			HttpServletRequest request,HttpServletResponse response
		) throws Exception {
			HttpSession session=request.getSession();
		
			return null;
	}
			public String setTestListStudent(
					HttpServletRequest request,HttpServletResponse response
				) throws Exception {
					HttpSession session=request.getSession();
					return null;
			}
			public String setTestListSubject(
					HttpServletRequest request,HttpServletResponse response
				) throws Exception {
					HttpSession session=request.getSession();
					return null;
			
			
	}

}
