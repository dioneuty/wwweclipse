package com.hb.test;

import static org.junit.Assert.*;
import org.junit.Test;

public class TestEx01 {
	
	@Test
	public void testFunc01(){
		int a,b,c;
		a=3;
		b=2;
		c=a+b;
		org.junit.Assert.assertSame(5, c);//같은지 ==?
		//org.junit.Assert.assertNotSame(5, c);//!= 같지 않은지?
		assertSame(5,c);
	}
	@Test
	public void testFunc02(){
		String st1, st2;
		st1=new String("java");
		st2=new String("java");
		assertEquals(st1,st2);
	}
	@Test
	public void testFunc03(){
		assertNull(null);
		assertNotNull(new String());
	}
	@Test
	public void testFunc04(){
		assertTrue("결과성공",true);
		assertFalse("결과실패",false);
	}
	@Test
	public void testFunc05(){
		int[] arr1={1,2};
		int[] arr2={1,2};
		assertArrayEquals(arr1,arr2);
	}
	@Test
	public void testFunc06(){
	
	}
}
