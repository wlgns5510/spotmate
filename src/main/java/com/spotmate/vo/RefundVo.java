package com.spotmate.vo;

public class RefundVo {
	//필드
	private int no;
	private int userNo;
	private int refundNo;
	private String regDate;
	private String name;
	private String status;
	private String accountNum;
	private int point;
	private String startDate;
	private String endDate;
	private String option1;
	private String option2;
	private String bank;
	
	private int crtPage;
	private int startRnum;
	private int endRnum;
	
	
	//생성자
	public RefundVo() {
	}

	public RefundVo(int no, int userNo, int refundNo, String regDate, String name, String status, String accountNum,
			int point, String startDate, String endDate, String option1, String option2, String bank, int crtPage,
			int startRnum, int endRnum) {
		this.no = no;
		this.userNo = userNo;
		this.refundNo = refundNo;
		this.regDate = regDate;
		this.name = name;
		this.status = status;
		this.accountNum = accountNum;
		this.point = point;
		this.startDate = startDate;
		this.endDate = endDate;
		this.option1 = option1;
		this.option2 = option2;
		this.bank = bank;
		this.crtPage = crtPage;
		this.startRnum = startRnum;
		this.endRnum = endRnum;
	}


	//메소드-gs
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

	public int getRefundNo() {
		return refundNo;
	}

	public void setRefundNo(int refundNo) {
		this.refundNo = refundNo;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getAccountNum() {
		return accountNum;
	}

	public void setAccountNum(String accountNum) {
		this.accountNum = accountNum;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
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

	public String getBank() {
		return bank;
	}

	public void setBank(String bank) {
		this.bank = bank;
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

	//메소드-일반
	@Override
	public String toString() {
		return "RefundVo [no=" + no + ", userNo=" + userNo + ", refundNo=" + refundNo + ", regDate=" + regDate
				+ ", name=" + name + ", status=" + status + ", accountNum=" + accountNum + ", point=" + point
				+ ", startDate=" + startDate + ", endDate=" + endDate + ", option1=" + option1 + ", option2=" + option2
				+ ", bank=" + bank + ", crtPage=" + crtPage + ", startRnum=" + startRnum + ", endRnum=" + endRnum + "]";
	}
	
}
