package login.akhila.registration;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class MyConnectionProvider implements MyProvider {
	
	static Connection con=null;
	
	
	
	public static Connection getCon() {
		
		try {
			//Connection myConn;
			//Statement myStmt;
			//ResultSet myRs;
			
			//String url="jdbc:mysql://localhost:3306/testerdb1?useSSL=false";
			//String username="root";
			//String password="akhilairuku1";
			
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(connUrl, username, pwd);
			
		//	StackTraceElement[] st = Thread.currentThread().getStackTrace();
		 //   System.out.println(  "create connection called from " + st[2] );
//			
		} catch(Exception e) {
			System.out.println(e);
		}
		return con;
		
	}

}
