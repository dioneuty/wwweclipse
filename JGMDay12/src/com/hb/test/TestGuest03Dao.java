package com.hb.test;

import java.sql.SQLException;
import java.util.ArrayList;

import static org.junit.Assert.*;
import org.junit.Test;

import com.hb.dao.Guest03Dao;
import com.hb.dto.JavaBean;

public class TestGuest03Dao {
	
	@Test
	public void testSelectAll() throws ClassNotFoundException, SQLException{
		Guest03Dao dao=new Guest03Dao();
		ArrayList<JavaBean> list=dao.selectAll();
		assertNotNull("list==null",list);
		assertTrue("list�� ���� ����",list.size()>0);
	}
}
