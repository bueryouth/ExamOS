package exam.Model;
 
import java.sql.*;
 
public class DB_Connention {
	static String driver = "com.mysql.jdbc.Driver";
	static String url = "jdbc:mysql://localhost:3306/exam";
	static String user = "buer";//连接时的用户名
	static String password = "123456";//连接时的密码
	static Connection aConnection;
	
	public static Connection connectDB(){
		try{
			Class.forName(driver);
			aConnection = DriverManager.getConnection(url,user,password);
			if(aConnection.isClosed())
			{
				System.out.print("Conention Mysql Succeeded!");
			}
		}catch(ClassNotFoundException e){
			System.out.println(e);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return aConnection;
	}
	
	public static ResultSet executeQuery(String sqlx) throws SQLException{
		connectDB();
		ResultSet rs = null;
		Statement stmt =  aConnection.createStatement();
		try {
		 rs = stmt.executeQuery(sqlx);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	public static int executeUpdate(String sqlx) throws SQLException{
		connectDB();
		int res = 0;
		Statement stmt =  aConnection.createStatement();
		try {
		 res = stmt.executeUpdate(sqlx);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return res;
	}
 
}