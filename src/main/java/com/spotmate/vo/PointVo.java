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
	private String startDate;
	private String endDate;
	private String option1;
	private String option2;
	
	private int crtPage;
	private int startRnum;
	private int endRnum;
	
	// 생성자
	public PointVo() {
	}

	public PointVo(int no, int userNo, String type, String regDate, String splace, String eplace, String pType,
			Long point, String startDate, String endDate, String option1, String option2, int crtPage, int startRnum,
			int endRnum) {
		super();
		this.no = no;
		this.userNo = userNo;
		this.type = type;
		this.regDate = regDate;
		this.splace = splace;
		this.eplace = eplace;
		this.pType = pType;
		this.point = point;
		this.startDate = startDate;
		this.endDate = endDate;
		this.option1 = option1;
		this.option2 = option2;
		this.crtPage = crtPage;
		this.startRnum = startRnum;
		this.endRnum = endRnum;
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

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getOption1() {
		return option1;
	}

	public void setOption1(String option1) {
		this.option1 = option1;
	}

	public String getOption2() {
		return option2;
	}

	public void setOption2(String option2) {
		this.option2 = option2;
	}

	public int getCrtPage() {
		return crtPage;
	}

	public void setCrtPage(int crtPage) {
		this.crtPage = crtPage;
	}

	public int getStartRnum() {
		return startRnum;
	}

	public void setStartRnum(int startRnum) {
		this.startRnum = startRnum;
	}

	public int getEndRnum() {
		return endRnum;
	}

	public void setEndRnum(int endRnum) {
		this.endRnum = endRnum;
	}

	// 메소드-일반
	@Override
	public String toString() {
		return "PointVo [no=" + no + ", userNo=" + userNo + ", type=" + type + ", regDate=" + regDate + ", splace="
				+ splace + ", eplace=" + eplace + ", pType=" + pType + ", point=" + point + ", startDate=" + startDate
				+ ", endDate=" + endDate + ", option1=" + option1 + ", option2=" + option2 + ", crtPage=" + crtPage
				+ ", startRnum=" + startRnum + ", endRnum=" + endRnum + "]";
	}

	
}
