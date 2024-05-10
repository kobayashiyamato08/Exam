package score_manage_system;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import tool.Action;

public class TestListAction extends Action {
    @Override
    public String execute(
            HttpServletRequest request, HttpServletResponse response
    ) throws Exception {
        // 何らかの処理を実行する
        return "result.jsp";
    }

    public String setTestListStudent(
            HttpServletRequest request, HttpServletResponse response
    ) throws Exception {
        // 学生のテストリストを設定する処理
        return "gakuseibatsu_ichiran.jsp";
    }

    public String setTestListSubject(
            HttpServletRequest request, HttpServletResponse response
    ) throws Exception {
        // 科目のテストリストを設定する処理
        return "kamokubetsu_ichiran.jsp";
    }
}

