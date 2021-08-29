package exam.Model;

import java.sql.SQLException;

public class Ti_delete {
	public static String sqlx="";
	public  static int deleteTi(String ti_id){
		int res=0;
		sqlx = "delete from tb_userquestions "
				+ "where questions_id in (" + ti_id + ")";
		try {
			res = DB_Connention.executeUpdate(sqlx);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return res;
	} 
}