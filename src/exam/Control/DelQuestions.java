package exam.Control;

import java.io.IOException;
import java.io.PrintWriter;

import exam.Model.Ti_delete;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class QueationsDel
 */
@WebServlet("/delete")
public class DelQuestions extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DelQuestions() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		if (request.getParameterValues("sel_id") != null) {
			String[] id = null;
			id = request.getParameterValues("sel_id");
			String ti_id = "";
			// 将字符串数组转化为字符串
			for (int i = 0; i < id.length; i++) {
				if (i < id.length - 1) {
					ti_id += id[i] + ",";
				} else {
					ti_id += id[i];
				}
			}
			int num = Ti_delete.deleteTi(ti_id);
			if (num > 0) {
				out.println(
						"<script>alert(\"成功删除"+id.length+"个题目！\");"
								+ "window.document.location.href = \"userquestions\";</script>");
			}
		}else {
			out.println(
					"<script>alert(\"没有删除内容！\");"
					+ "window.document.location.href = \"userquestions\";</script>");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
