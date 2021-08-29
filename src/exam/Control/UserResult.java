package exam.Control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import exam.Model.Result_Insert;
import exam.Model.Ti_Select;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/userResult")
public class UserResult extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		ResultSet rs = Ti_Select.queryInfo("tb_userquestions");
		int n=0;
		try {
			while(rs.next()) {
				if (request.getParameterValues(rs.getString("questions_id")) != null) {
					request.setCharacterEncoding("UTF-8"); //防止乱码
					if(rs.getString("answer").equals(request.getParameterValues(rs.getString("questions_id"))[0])) {
						n++;
					}
				}
			}
			int res=n*5;
			if(Result_Insert.resuleTi(res)==1) {
				out.println(
						"<script type=\"text/javascript\" language=\"javascript\">alert(\"答题结束，\\n您得了"+res+"分....\");window.document.location.href = \"examMain.jsp\";</script>");
			}
			out.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
