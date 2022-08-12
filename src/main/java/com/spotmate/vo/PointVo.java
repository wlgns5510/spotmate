package com.spotmate.vo;

public class PointVo {

	// 필드
	private int no;
	private int userNo;
	private String type;
	private String regDate;
	private int point;
	private int Mtype;

	// 생성자
	public PointVo() {
	}

	public PointVo(int no, int userNo, String type, String regDate, int point, int mtype) {
		this.no = no;
		this.userNo = userNo;
		this.type = type;
		this.regDate = regDate;
		this.point = point;
		Mtype = mtype;
	}

	

	// 메소드-gs
	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public int getMtype() {
		return Mtype;
	}

	public void setMtype(int mtype) {
		Mtype = mtype;
	}

	
	// 메소드-일반
	@Override
	public String toString() {
		return "PointVo [no=" + no + ", userNo=" + userNo + ", type=" + type + ", regDate=" + regDate + ", point="
				+ point + ", Mtype=" + Mtype + "]";
	}
	
	
}
