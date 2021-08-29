package exam.Control;

import exam.Model.Ti_Select;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

/**
 * Servlet implementation class Input
 */
@WebServlet("/adminExam")
public class AdminExam extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        ResultSet rs = Ti_Select.queryInfo("tb_questions");
        // 存入数据
        request.setAttribute("rs", rs);
        // 将list数据发送到jsp文件中
        request.getRequestDispatcher("examListAdmin.jsp").forward(request, response);
        out.close();
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }
    
}
