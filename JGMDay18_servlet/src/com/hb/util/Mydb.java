package com.hb.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Mydb {
	private static Connection conn;
	private static String url="jdbc:oracle:thin:@localhost:1521:xe";
	private static String driver="oracle.jdbc.driver.OracleDriver";
	private static String user="scott";
	private static String password="tiger";
	
	private Mydb() {}
	
	public static Connection getConnection() throws SQLException, ClassNotFoundException{
		if(conn==null||conn.isClosed()){
			Class.forName(driver);
			conn=DriverManager.getConnection(url, user, password);
		}
		return conn;
		
	}
}
