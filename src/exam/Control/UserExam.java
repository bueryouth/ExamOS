package exam.Control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import exam.Model.Ti_Select;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserExam
 */
@WebServlet("/userExam")
public class UserExam extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		ResultSet rs = Ti_Select.queryInfo("tb_userquestions");
		// 存入数据
		request.setAttribute("rs", rs);
		// 将list数据发送到jsp文件中
		request.getRequestDispatcher("examListUser.jsp").forward(request, response);
		out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
