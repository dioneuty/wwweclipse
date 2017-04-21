package com.hb.am;

public class Ex01 {

	public static void main(String[] args) {
		Ex01 me=new Ex01();
		me.func1(111);
		me.func1(223,2232,222,22);
		me.func2("3343","343","2222");
		
	}
	public void func1(){
		System.out.println("func1 run()");
	}
	public void func1(int... a){
		System.out.println("func1 run()");
		System.out.print("{ ");
		for(int msg: a){
			System.out.print(msg+", ");
		}
		System.out.println("} func1 end");
	}
	public void func2(String... st){
		System.out.println("func2 run()");
		System.out.print("{ ");
		for(String msg: st){
			System.out.print(msg+", ");
		}
		System.out.println("} func2 end");

	}

}
