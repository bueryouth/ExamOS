package exam.Model;
 
import java.sql.ResultSet;
import java.sql.SQLException;
 
public class Ti_Select {
	public static String sqlx="";
	public  static ResultSet queryInfo(String str){
		ResultSet rs = null;
		sqlx = "select *  from "+str;
		try {
			rs = DB_Connention.executeQuery(sqlx);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	} 
}