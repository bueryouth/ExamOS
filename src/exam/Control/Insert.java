package exam.Control;

import exam.Model.Ti_Insert;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

/*	*	*	*	*	*	*
 * 不二青年i	文本处理测试	*
 *	*	*	*	*	*	*/
@WebServlet("/insert")
public class Insert extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter(); // 输出
        String key = null; // 答案
        String str = request.getParameter("comment"); // 接收文本
        str = new String(str.getBytes("iso8859-1"), "utf-8"); // 解决中文乱码
        /*替换换行符及前方空格，显示换行*/
        str = str.replace("\s+\r\n", "<br/>").replace("（", "(").replace("）", ")");
        if (str.indexOf("(") != -1 && str.indexOf(")") != -1) {
            for (int i = 0; i < str.length(); i++) {
                if (str.substring(i, i + 1).equals("(")) {
                    for (int j = 0; j < 10; j++) {
                        if (str.substring(i + j, i + j + 1).equals(")")) {
                            String x = str.substring(i + 1, i + j).trim();
                            if (x.equals("A") || x.equals("B") || x.equals("C") || x.equals("D")) {
                                
                                if (key == null) {
                                    key = str.substring(i + 1, i + j).trim(); // 提取答案
                                } else {
                                    key = key + str.substring(i + 1, i + j).trim(); // 提取答案
                                }
                                str = str.substring(0, i + 1).concat(str.substring(i + j)); // 删除答案
                                /* replaceAll(" +"," ")把多个空格替换成一个//replace(" ", "<br/>")替换空格换行 */
                            }
                            break;
                        }
                    }
                }
            }
            /**********方案一*********
             key=str.substring(str.indexOf("(")+1, str.indexOf(")")).trim();	//提取答案
             out.println(key+"<br/>");	//显示答案
             str=str.substring(0,str.indexOf("(")+1).concat(str.substring(str.indexOf(")")));	//删除答案
             //replaceAll(" +"," ")把多个空格替换成一个//replace(" ", "<br/>")替换空格换行
             str=str.replaceAll(" +"," ").replace(" ", "<br/>");
             ************************/
        }
        if (key != null) {
            out.println("<h2>请核对您输入的题库</h2>" + "试题答案：" + key + "<br/>"); // 显示答案
            String[] arr = str.replaceAll(" +", " ").split("\\s+|\\t|\\n|<br/>");
            /*
             * int j=0; for(String s : arr){ out.println(j+s+"<br/>"); j++;}	//测试代码
             */
            for (int i = 0; i < arr.length; i += 5) {
                if (i == 0) {
                    out.println(
                            "<script>alert(\"请查看题库及答案\\n系统正在导入题库······\");</script>");
                }
                out.println(arr[i] + "<br/>" + arr[i + 1] + "<br/>" + arr[i + 2] + "<br/>" + arr[i + 3] + "<br/>" + arr[i + 4] + "<br/>");
                //调用模型，传入数据库
                Ti_Insert.insertTi(arr[i].replaceFirst("\\d+", "").substring(1), arr[i + 1], arr[i + 2], arr[i + 3], arr[i + 4], key.substring(i / 5, i / 5 + 1));
            }
        } else {
            out.println(
                    "<script>alert(\"输入内容有误，请重试....\");window.document.location.href = \"examInsert.jsp\";</script>");
        }
        
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
    
}
