package com.hb.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import oracle.jdbc.driver.OracleDriver;

public class MyDB {
	
	private MyDB(){}
	
	private static Connection conn;
	private static String driver="oracle.jdbc.driver.OracleDriver";
	private static String url="jdbc:oracle:thin:@localhost:1521:xe";
	private static String user="scott";
	private static String password="tiger";

	public static Connection getConnection(){
		try{
			if(conn==null|conn.isClosed()){
				Class.forName(driver);
				conn=DriverManager.getConnection(url,user,password);
			}
		}catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch(SQLException ex){
			ex.printStackTrace();
		}
		return conn;
	}
}
