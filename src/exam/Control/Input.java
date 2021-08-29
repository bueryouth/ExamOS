package exam.Control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import exam.Model.User_Select;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/input")
public class Input extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Input() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		if (request.getParameter("user_id").equals("") || request.getParameter("user_passwd").equals("")) {
			out.println(
					"<script>alert(\"输入框没有内容，请重试....\");window.document.location.href = \"userLogin.jsp\";</script>");

		}
		String user_id = request.getParameter("user_id");// 获取传过来的ID
		ResultSet rs = User_Select.userId(user_id);
		try {
			while (rs.next()) {
				if (request.getParameter("user_passwd").equals(rs.getString("user_passwd"))) {
					// 接收数据
					String str1 = rs.getString("user_id");
					String str2 = rs.getString("user_card");
					String str3 = rs.getString("user_name");

					// 储存在Session
					session.setAttribute("user_id", str1);
					session.setAttribute("user_card", str2);
					session.setAttribute("user_name", str3);
					out.println(
							"<script>window.document.location.href = \"examGo.jsp\";</script>");
				} else {
					out.println(
							"<script>alert(\"密码错误，请重新登录...\");window.document.location.href = \"userLogin.jsp\";</script>");
				}
			}
			if (!rs.next()) {
				out.println(
						"<script>alert(\"没有该用户，请重新登录...\");window.document.location.href = \"userLogin.jsp\";</script>");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// 关闭输出
		out.flush();
		out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
