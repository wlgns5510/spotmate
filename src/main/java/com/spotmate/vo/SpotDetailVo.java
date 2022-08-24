package com.spotmate.vo;

public class SpotDetailVo {

	private int spotDetailNo;
	private String name;

	public SpotDetailVo() {
		super();
	}

	public SpotDetailVo(int spotDetailNo, String name) {
		super();
		this.spotDetailNo = spotDetailNo;
		this.name = name;
	}

	public int getSpotDetailNo() {
		return spotDetailNo;
	}

	public void setSpotDetailNo(int spotDetailNo) {
		this.spotDetailNo = spotDetailNo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "SpotDetailVo [spotDetailNo=" + spotDetailNo + ", name=" + name + "]";
	}

}