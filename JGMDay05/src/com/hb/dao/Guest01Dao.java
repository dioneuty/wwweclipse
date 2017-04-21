package com.hb.dao;

import java.beans.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.hb.dto.Guest01Bean;
import com.hb.util.Oradb;

public class Guest01Dao {
	public ArrayList<Guest01Bean> selectAll(){
		String sql="select * from guest01";
		ArrayList<Guest01Bean> list=new ArrayList<Guest01Bean>();
		Connection conn=Oradb.getConnection();
		Statement stmt=null;
		ResultSet rs=null;
		try{
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			while(rs.next()){
				Guest01Bean bean=new Guest01Bean();
				bean.setSabun(rs.getInt("sabun"));
				bean.setName(rs.getString("name"));
				bean.setNalja(rs.getDate("nalja"));
				bean.setPay(rs.getInt("pay"));
				list.add(bean);
			}
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			try{
				if(rs!=null)rs.close();
				if(stmt!=null)stmt.close();
				if(conn!=null)conn.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
		
		return list; 
	}
	public void insertOne(String name,int pay){
		String sql="insert into guest01 values";
		sql+="(guest01_seq.nextVal,?,sysdate,?);";
		Connection conn=Oradb.getConnection();
		PreparedStatement pstmt=null;
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,name);
			pstmt.setInt(2,pay);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try{
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}catch(SQLException e){
				e.printStackTrace();
				 
			}
		}
	}
}
