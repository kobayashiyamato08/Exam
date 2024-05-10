package score_manage_system;

import java.io.IOException;

import bean.Student;
import bean.Subject;
import bean.Test;
import dao.TestDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class TestRegistAction extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // フォームから送信された成績情報を取得
        String studentId = request.getParameter("studentId");
        String subjectCode = request.getParameter("subjectCode");
        int point = Integer.parseInt(request.getParameter("point"));

        // 成績情報をデータベースに登録
        TestDAO testDAO = new TestDAO();
        Student student = new Student();
        student.setNo(studentId);
        Subject subject = new Subject();
        subject.setCd(subjectCode);
        
        Test test = new Test();
        test.setStudent(student);
        test.setSubject(subject);
        test.setPoint(point);
        
        boolean result = testDAO.save(test, null);

        if (result) {
            // 登録が成功した場合
            // HttpServletRequest オブジェクトに属性を設定
            HttpSession session = request.getSession();
            session.setAttribute("studentId", studentId);
            session.setAttribute("subjectCode", subjectCode);
            session.setAttribute("point", point);

            // 適切なJSPページにリダイレクト
            String redirectUrl = "seiseki_touroku_jsp.jsp";
            response.sendRedirect(redirectUrl);
        } else {
            // 登録が失敗した場合
            // エラーハンドリングを行うなどの処理を追加
        }
    }
}