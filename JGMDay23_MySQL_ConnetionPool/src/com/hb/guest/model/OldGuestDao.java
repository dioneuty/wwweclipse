package com.hb.guest.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

public class OldGuestDao {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public OldGuestDao() throws SQLException, NamingException {
		//Connection Pool
		//tomcat - context.xml
		//maxAcitve="10" 최대 커넥션 객체
		//maxIdle="8" 평소 유지하는 최대 커넥션 객체
		//maxWait="2000" 접속 대기 시간
		Context cntxt=new InitialContext();
		DataSource ds=(DataSource) cntxt.lookup("java:comp/env/jdbc/mysql");
		conn=ds.getConnection();
	}
	
	public List<GuestDto> selectAll() throws SQLException {
		List<GuestDto> list = new ArrayList<GuestDto>();
		String sql="select idx,id,sub,cnt from guest05 where tf=0";//tf=0, 활성화될 계정만 불러들이기
		try{
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				GuestDto bean=new GuestDto();
				bean.setIdx(rs.getInt("idx"));
				bean.setId(rs.getString("id"));
				bean.setSub(rs.getString("sub"));
				bean.setCnt(rs.getInt("cnt"));
				list.add(bean);
			}
		}finally{
			closeAll();
		}
		return list;
	}
	
	private void closeAll() throws SQLException {
		if(rs!=null)rs.close();
		if(pstmt!=null)pstmt.close();
		if(conn!=null)conn.close();
	}

	public int insertOne(String sub, String user, String cntnt) throws SQLException {
		int result=0;
		String sql="insert into guest05 (sub,id,cntnt) ";
		sql+="values (?,?,?)";
		try{
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, sub);
			pstmt.setString(2, user);
			pstmt.setString(3, cntnt);
			result=pstmt.executeUpdate();
		}finally{
			closeAll();
		}
		return result;
	}

	public GuestDto selectOne(int idx) throws SQLException {
		GuestDto bean=new GuestDto();
		String sql="select * from guest05 where idx=?";
		//try{
		pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1, idx);
		rs=pstmt.executeQuery();
		if(rs.next()){
			bean.setIdx(rs.getInt("idx"));
			bean.setId(rs.getString("id"));
			bean.setSub(rs.getString("sub"));
			bean.setCntnt(rs.getString("cntnt"));
			bean.setNalja(rs.getTimestamp("nalja"));
			bean.setCnt(rs.getInt("cnt"));
		}
		/*}finally{
			closeAll();
		}*/
		return bean;
	}

	public void updateCnt(int idx, int cnt) throws SQLException {
		String sql="update guest05 set cnt=? where idx=?";
		//try{
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, cnt); //cnt+1
			pstmt.setInt(2, idx);
			pstmt.executeUpdate();
		/*finally{
			closeAll();
		}*/
		
	}

	public GuestDto detailOne(int idx) throws SQLException {
		GuestDto bean=null;
		conn.setAutoCommit(false); //수동커밋
		try{
		bean=selectOne(idx);
		bean.setCnt(bean.getCnt()+1);
		updateCnt(idx,bean.getCnt());
		conn.commit();
		}catch(SQLException e){
			conn.rollback();
			throw e;
		}
		finally{
			conn.setAutoCommit(true); //커밋 복구
			closeAll();
		}
		return bean;
	}

	public void deleteOne(int idx) throws SQLException {
		String sql="update guest05 set tf=? where idx=?";
		try{
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, 1); //tf가 1이면 계정 비활성화 처리
			pstmt.setInt(2, idx);
			pstmt.executeUpdate();
		}finally{
			closeAll();
		}
	}
	
}
