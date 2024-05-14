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
		
//		以下の3つの値を取得し、絞り込み結果を出す。
		Integer entyear = Integer.parseInt(request.getParameter("entyear"));
		String classnum = request.getParameter("classnum");
		Boolean isattend = Boolean.parseBoolean(request.getParameter("isattend"));
		
		StudentDAO dao= new StudentDAO();
		List<Student> list=dao.StudentList(entyear, classnum, isattend);
		
		session.setAttribute("list", list);
		
		return "gakusei_siborikomi.jsp";
	}
}
