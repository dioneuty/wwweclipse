package com.hb.bean;

import java.util.Date;

public class JavaBean {
	private String name;
	private int num;
	private Date nalja;
	
	public JavaBean() {
	}
//source-> getter-setter
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public Date getNalja() {
		return nalja;
	}

	public void setNalja(Date nalja) {
		this.nalja = nalja;
	}
}
