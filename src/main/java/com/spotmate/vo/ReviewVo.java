package com.spotmate.vo;

public class ReviewVo {

	private String content;
	private int resvNo, userNo;
	private double star;
	
	public ReviewVo() {}
	
	public ReviewVo(String content, int resvNo, int userNo, double star) {
		this.content = content;
		this.resvNo = resvNo;
		this.star = star;
		this.userNo = userNo;
	}
	
	
	

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getResvNo() {
		return resvNo;
	}

	public void setResvNo(int resvNo) {
		this.resvNo = resvNo;
	}

	public double getStar() {
		return star;
	}

	public void setStar(double star) {
		this.star = star;
	}

	@Override
	public String toString() {
		return "ReviewVo [content=" + content + ", resvNo=" + resvNo + ", userNo=" + userNo + ", star=" + star + "]";
	}
}
