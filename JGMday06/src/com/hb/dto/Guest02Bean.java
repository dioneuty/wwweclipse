package com.hb.dto;

import java.util.Date;

public class Guest02Bean {
	private int sabun,pay,lvl1,lvl2,lvl3;
	private String name;
	private Date nalja;
	
	private Guest02Bean() {
	}
	
	public int getSabun() {
		return sabun;
	}
	public int getPay() {
		return pay;
	}
	public int getLevel1() {
		return lvl1;
	}
	public int getLevel2() {
		return lvl2;
	}
	public int getLevel3() {
		return lvl3;
	}
	public String getName() {
		return name;
	}
	public Date getNalja() {
		return nalja;
	}
	public void setSabun(int sabun) {
		this.sabun = sabun;
	}
	public void setPay(int pay) {
		this.pay = pay;
	}
	public void setLevel1(int level1) {
		this.lvl1 = level1;
	}
	public void setLevel2(int level2) {
		this.lvl2 = level2;
	}
	public void setLevel3(int level3) {
		this.lvl3 = level3;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setNalja(Date nalja) {
		this.nalja = nalja;
	}
}
