package com.spotmate.vo;

public class CarAuthInfoVo {
	
	private String name, cnum;

	
	public CarAuthInfoVo() {}
	
	public CarAuthInfoVo(String name, String cnum) {
		this.name = name;
		this.cnum = cnum;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCnum() {
		return cnum;
	}

	public void setCnum(String cnum) {
		this.cnum = cnum;
	}

	@Override
	public String toString() {
		return "CarAuthInfoVo [name=" + name + ", cnum=" + cnum + "]";
	}
	
	
	
	

}
