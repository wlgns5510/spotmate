package com.spotmate.vo;

public class DriverAuthVo {
	
	private String name, btd, serial;
	
	public DriverAuthVo() {}

	public DriverAuthVo(String name, String btd, String serial) {
		this.name = name;
		this.btd = btd;
		this.serial = serial;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBtd() {
		return btd;
	}

	public void setBtd(String btd) {
		this.btd = btd;
	}

	public String getSerial() {
		return serial;
	}

	public void setSerial(String serial) {
		this.serial = serial;
	}

	@Override
	public String toString() {
		return "DriverAuth [name=" + name + ", btd=" + btd + ", serial=" + serial + "]";
	}
	
	
}
