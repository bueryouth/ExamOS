package exam.Model;
 
import java.sql.ResultSet;
import java.sql.SQLException;
 
public class Info_Select {
	public static String sqlx="";
	public  static ResultSet userInfo(String user_id){
		ResultSet rs = null;
		sqlx = "select * from  tb_users where user_id ='"+ user_id +"'";
		try {
			rs = DB_Connention.executeQuery(sqlx);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	} 
}