package C.customer;

import java.sql.Connection;
import java.sql.DriverManager;

public class databaseconnect {

	private static String url ="jdbc:Mysql://localhost:3306/center_service";
	private static String user ="root";
	private static String pass="Uththama";
	private static Connection conn;
	
	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			conn =DriverManager.getConnection(url, user, pass);
			
			
		}
		catch(Exception e) {
			System.out.println("Database connection is failed");
		}
		
		return conn;
	}
	
	
	

	
	
}
