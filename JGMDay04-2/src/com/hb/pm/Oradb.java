package com.hb.pm;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Oradb {
	private Oradb(){}
	private static Connection conn;
	private static String driver="oracle.jdbc.driver.OracleDriver";
	private static String url="jdbc:oracle:thin:@localhost:1521:xe";
	private static String user="scott";
	private static String password="tiger";
	
	public static Connection getConnection(){
		try {
				if(conn==null||conn.isClosed()){
					Class.forName(driver);
					conn=DriverManager.getConnection(url,user,password);
				}	
			} catch (ClassNotFoundException e) {
				System.out.println("driver문자열 또는 ojdbc14.jar");
			} catch (SQLException e) {
				System.out.println("url,user,password 확인");
		}
		return conn;
	}
}

