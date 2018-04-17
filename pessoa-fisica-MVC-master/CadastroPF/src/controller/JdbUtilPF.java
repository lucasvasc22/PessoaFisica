package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JdbUtilPF {

	private static String connectionDriverClass="com.mysql.jdbc.Driver";
	private static String connectionUrl ="jdbc:mysql://localhost/java_pessoafisica";
	private static String connectionUsername="root";
	private static String connectionPassword="";
	private static Connection conn;
	
	public static Connection getConnection() throws SQLException, ClassNotFoundException{
		
		if(JdbUtilPF.conn != null) {
			return JdbUtilPF.conn;
		}else {
			Class.forName(connectionDriverClass);
			return DriverManager.getConnection(
					JdbUtilPF.connectionUrl,
					JdbUtilPF.connectionUsername,
					JdbUtilPF.connectionPassword);
		}
	}
}
