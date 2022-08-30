package com.spotmate.vo;

public class DetailOptVo {

	private int detailOptNo;
	private String name;
	
	public DetailOptVo() {}
	public DetailOptVo(int detailOptNo, String name) {
		super();
		this.detailOptNo = detailOptNo;
		this.name = name;
	}

	public int getDetailOptNo() {
		return detailOptNo;
	}

	public void setDetailOptNo(int detailOptNo) {
		this.detailOptNo = detailOptNo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "DetailOptVo [detailOptNo=" + detailOptNo + ", name=" + name + "]";
	}
	
	
	
	
	
	
}
