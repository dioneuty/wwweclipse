package com.hb.test;

import java.sql.Connection;
import java.sql.SQLException;

import com.hb.util.Oradb;

public class OraDbTest {

	public static void main(String[] args) {
		//Oracle Singleton test
		System.out.println("OraDb test start");
		Connection conn=Oradb.getConnection();
		if(conn!=null){
			System.out.println("test success");
		}else{
			System.out.println("test failure");
		}

//------------------------------------------------------------------
		
		try{
			if(conn!=null){
				conn.close();				
			}else{}
		}catch(SQLException e){
			e.printStackTrace();
		}
		System.out.println("conn is not null : "+conn!=null);
		try {
			System.out.println("conn is closed : "+conn.isClosed());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		Connection conn2=Oradb.getConnection();
		System.out.println("conn & conn2 different : "+(conn!=conn2));
		Connection conn3=Oradb.getConnection();
		System.out.println("conn2 & conn3 different :"+(conn2!=conn3));
	}
}
