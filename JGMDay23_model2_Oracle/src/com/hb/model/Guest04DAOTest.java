package com.hb.model;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertSame;
import static org.junit.Assert.assertTrue;

import java.sql.SQLException;

import org.apache.log4j.Logger;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

public class Guest04DAOTest {
	Logger log = Logger.getLogger("com.hb.model.Guest04DAOTest");
	Guest04DAO dao = new Guest04DAO();
	
	@BeforeClass
	public static void setUpBeforeClass(){
		System.out.println("beforeClass");
	}
	
	@Before
	public void setUp(){
		System.out.println("testbefore");
	}
	@After
	public void tearDown(){
		System.out.println("testafter");
	}
	
	@AfterClass
	public static void tearDownAfterClass(){
		System.out.println("afterClass");
	}
	
/*//	public Guest04DAOTest() {
//		// TODO Auto-generated constructor stub
//		System.out.println("생성자 호출");
//	}
*/	@Test
	public void testSelectAll() throws ClassNotFoundException, SQLException {
		System.out.println("testSelectAll - start");
		Guest04DAO dao = new Guest04DAO();
		//list 객체
		assertNotNull(dao.selectAll() );
		assertTrue(dao.selectAll().size()>0);
//		assertSame(dao.selectAll().size(),5);

//		log.debug("개발 메시지");
//		log.info("정보 메시지");
//		log.warn("주의 메시지");
//		log.error("에러 메시지");
//		log.fatal("항상 메시지");
		System.out.println("testSelectAll - end");
	}
	
	// 이 상태에서는 가상 @test 내부에서 이미 가상값이 바뀐 상태로 비교하기 때문에 싪패로 뜨므로
	// @test을 제거해서 실제 값을 선택을 해야 실패가 뜨지 않고 성공으로 뜬다. 
	@Test
	public void testSelectOne() throws ClassNotFoundException, SQLException{
		System.out.println("testSelectOne - start");
		//Guest04DAO dao = new Guest04DAO();
		//java bean 객체
		Guest04DTO bean = dao.selectOne(1000);
		Guest04DTO bean2 = new Guest04DTO(1000, "user01", "제목없음", bean.getNalja(), 1000);		
		//assertNotNull(bean);
		//assertEquals(bean.getName(), "user01");
//		assertEquals(bean.getPay(), 1000);
		assertEquals(bean2, bean); //객체 주소값을 비교해서 실패가 뜬다.
		System.out.println("testSelectOne - end");
	}
	@Test
	public void testUpdateOne() throws ClassNotFoundException, SQLException{
		System.out.println("testUpdateOne - start");
		//Guest04DAO dao = new Guest04DAO();
		int cnt = dao.updateOne(1000, "test", "test", 1111);
		assertSame(1, cnt);
		Guest04DTO bean=dao.selectOne(1000);
		Guest04DTO bean2=new Guest04DTO(1000, "test", "test", null, 1111);
		assertEquals(bean2, bean);
		System.out.println("testUpdateOne - end");
	}

}
