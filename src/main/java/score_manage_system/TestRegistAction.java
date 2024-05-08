package score_manage_system;

import java.io.IOException;

import bean.Test;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class TestRegistAction extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		Test test = new Test();
		session.setAttribute("testData", test);
		
		String redirectUrl = "seiseki_touroku.jsp";
		
		response.sendRedirect(redirectUrl);
	}

}

	
