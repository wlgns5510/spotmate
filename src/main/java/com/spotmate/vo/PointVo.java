package com.spotmate.vo;

public class PointVo {

	// 필드
	private int no;
	private int userNo;
	private String type;
	private String regDate;
	private String splace;
	private String eplace;
	private String pType;
	private Long point;
	

	// 생성자
	public PointVo() {
	}


	public PointVo(int no, int userNo, String type, String regDate, String splace, String eplace, String pType,
			Long point) {
		this.no = no;
		this.userNo = userNo;
		this.type = type;
		this.regDate = regDate;
		this.splace = splace;
		this.eplace = eplace;
		this.pType = pType;
		this.point = point;
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



	public String getSplace() {
		return splace;
	}



	public void setSplace(String splace) {
		this.splace = splace;
	}



	public String getEplace() {
		return eplace;
	}



	public void setEplace(String eplace) {
		this.eplace = eplace;
	}



	public String getpType() {
		return pType;
	}



	public void setpType(String pType) {
		this.pType = pType;
	}



	public Long getPoint() {
		return point;
	}



	public void setPoint(Long point) {
		this.point = point;
	}


	// 메소드-일반
	@Override
	public String toString() {
		return "PointVo [no=" + no + ", userNo=" + userNo + ", type=" + type + ", regDate=" + regDate + ", splace="
				+ splace + ", eplace=" + eplace + ", pType=" + pType + ", point=" + point + "]";
	}

	
}
