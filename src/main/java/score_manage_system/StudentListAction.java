package score_manage_system;

import java.util.List;

import bean.Student;
import dao.StudentDAO;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tool.Action;

public class StudentListAction extends Action{
	public String execute(
		HttpServletRequest request,HttpServletResponse response
	) throws Exception {
		HttpSession session=request.getSession();
		
		StudentDAO dao= new StudentDAO();
		List<Student> list=dao.StudentList("");
		
		session.setAttribute("list", list);
		
		return "student_list.jsp";
	}
}
