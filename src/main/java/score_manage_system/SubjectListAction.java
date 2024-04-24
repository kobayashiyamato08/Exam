package score_manage_system;

import dao.SubjectDAO;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tool.Action;

public class SubjectListAction extends Action {
	public String execute(
		HttpServletRequest request,HttpServletResponse response
		) throws Exception {
		HttpSession session = request.getSession();
		
//		SubjectDAOを呼び出し、科目の表示を実行する
		SubjectDAO dao=new SubjectDAO();
		
		return null;
	}
}
