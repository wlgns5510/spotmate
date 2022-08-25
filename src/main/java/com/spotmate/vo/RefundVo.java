package com.spotmate.vo;

public class RefundVo {
	//필드
	private int no;
	private int userNo;
	private String regDate;
	private String name;
	private String status;
	private String accountNum;
	private int point;

	
	//생성자
	public RefundVo() {
	}

	public RefundVo(int no, int userNo, String regDate, String name, String status, String accountNum, int point) {
		this.no = no;
		this.userNo = userNo;
		this.regDate = regDate;
		this.name = name;
		this.status = status;
		this.accountNum = accountNum;
		this.point = point;
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

	//메소드-일반
	@Override
	public String toString() {
		return "RefundVo [no=" + no + ", userNo=" + userNo + ", regDate=" + regDate + ", name=" + name + ", status="
				+ status + ", accountNum=" + accountNum + ", point=" + point + "]";
	}
	
	
}
