package exam.Control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import exam.Model.Info_Select;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/info")
public class Information extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Information() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		String user_id = session.getAttribute("user_id").toString();
		ResultSet rs = Info_Select.userInfo(user_id);  
		//存入数据
		request.setAttribute("rs", rs);
		//将list数据发送到jsp文件中  
        request.getRequestDispatcher("userInfo.jsp").forward(request, response);
		out.close(); 
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
