package exam.Model;
 
import java.sql.ResultSet;
import java.sql.SQLException;
 
public class User_Select {
	public static String sqlx="";
	public  static ResultSet userId(String user_id){
		ResultSet rs = null;
		sqlx = "SELECT * FROM tb_users where user_id = '"+user_id+"'";
		try {
			rs = DB_Connention.executeQuery(sqlx);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	} 
}