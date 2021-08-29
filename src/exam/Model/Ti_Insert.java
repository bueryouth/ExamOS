package exam.Model;
 
import java.sql.SQLException;
 
public class Ti_Insert {
	public static String sqlx="";
	public  static int insertTi(String n,String n1,String n2,String n3,String n4,String key){
		int res=0;
		//System.out.println(n+n1+n2+n3+n4+key);//控制台输出测试
		sqlx = "INSERT INTO tb_userquestions(subject,optionA,optionB,optionC,optionD,answer) VALUES('"+n+"','"+n1+"', '"+n2+"', '"+n3+"', '"+n4+"','"+key+"')";
		try {
			res = DB_Connention.executeUpdate(sqlx);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return res;
	} 
}