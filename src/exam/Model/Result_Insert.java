package exam.Model;
 
import java.sql.SQLException;
 
public class Result_Insert {
	public static String sqlx="";
	public  static int resuleTi(int num){
		int res=0;
		sqlx = "INSERT INTO `tb_result` (`result_grade`) VALUES ('"+num+"')";
		try {
			res = DB_Connention.executeUpdate(sqlx);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return res;
	} 
}
