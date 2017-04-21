package com.hb.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

import com.hb.util.MyDB;

public class Guest04DAO {
	Logger log = Logger.getLogger("com.hb.model.Guest04DAO");
	private Connection conn;
	private String driver;
	private String url;
	private String user;
	private String password;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public Guest04DAO() {
/*		driver="com.mysql.jdbc.Driver";
		url="jdbc:mysql://localhost:3306/testdb";*/
		driver="oracle.jdbc.driver.OracleDriver";
		url="jdbc:oracle:thin:@localhost:1521:xe";
		user="scott";
		password="tiger";
		//log.setLevel(Level.DEBUG);
	}
	public List<Guest04DTO> selectAll() throws ClassNotFoundException, SQLException{
		String sql="SELECT * FROM GUEST04";
		List<Guest04DTO> list=new ArrayList<Guest04DTO>();
		try{
			conn=MyDB.getConnection(driver, url, user, password);
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				Guest04DTO dto=new Guest04DTO(
						rs.getInt("sabun")
						,rs.getString("name")
						,rs.getString("sub")
						,rs.getDate("nalja")
						,rs.getInt("pay")
						);
				list.add(dto);
			/*	list.add(new Guest04DTO(
						rs.getInt("sabun")
						,rs.getString("name")
						,rs.getString("sub")
						,rs.getDate("nalja")
						,rs.getInt("pay")
						) );*/
				//System.out.println(dto);
				log.debug(dto);	//dto 출력
				}
		}finally{
			closeAll();
		}
		return list;
	}
	public int insertOne(String name, String sub, int pay) throws SQLException, ClassNotFoundException{
		String sql="insert into guest04 values(";
		sql+="guest04_seq.nextval,?,?,sysdate,?)";
//		String sql="insert into testdb.guest04 (name,sub,nalja,pay) values(";
//		sql+="?,?,now(),?)";
		int result=0;
		try{
			conn = MyDB.getConnection(driver, url, user, password);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, sub);
			pstmt.setInt(3, pay);
			result = pstmt.executeUpdate();
		}finally{
			closeAll();
		}
		return result;
	}

	private void closeAll() throws SQLException {
		if(rs!=null) rs.close();
		if(pstmt!=null) pstmt.close();
		if(conn!=null) conn.close();
		
	}
	public Guest04DTO selectOne(int sabun) throws SQLException, ClassNotFoundException {
		String sql="select * from guest04 where sabun=?";
		Guest04DTO bean = new Guest04DTO();
		// TODO Auto-generated method stub
		try{
			conn = MyDB.getConnection(driver, url, user, password);
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, sabun);
			rs = pstmt.executeQuery();
			if(rs.next()){
				bean.setSabun(rs.getInt("sabun"));
				bean.setName(rs.getString("name"));
				bean.setSub(rs.getString("sub"));
				bean.setNalja(rs.getDate("nalja"));
				bean.setPay(rs.getInt("pay"));
			}
		}finally{
			closeAll();
		}
		return bean;
	}
	public int updateOne(int sabun, String name, String sub, int pay) throws SQLException, ClassNotFoundException {
		String sql="update guest04 set name=?, sub=?, pay=? where sabun=?";
		Guest04DTO bean = new Guest04DTO();
		
		int cnt=0;
		
		try{
			conn=MyDB.getConnection(driver, url, user, password);
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, sub);
			pstmt.setInt(3, pay);
			pstmt.setInt(4, sabun);
			cnt=pstmt.executeUpdate();
		}finally{
			closeAll();
		}
		return cnt;
	}
}
