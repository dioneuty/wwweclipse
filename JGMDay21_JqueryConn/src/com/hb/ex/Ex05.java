package com.hb.ex;



class Ex05_2 implements MyInter{
	//servlet
	public void func(){
		System.out.println("func()3");
	}
}

//tomcat
interface MyInter{
	void func();
}
public class Ex05 {
	public static void main(String[] args) throws ClassNotFoundException, InstantiationException, IllegalAccessException{
		//Ex05_2 ex5=new Ex05_2();
		Class clss=Class.forName("com.hb.ex.Ex05_2");//web.xml servlet class
		Ex05_2 ex5=(Ex05_2) clss.newInstance();
		ex5.func();
	}
}
