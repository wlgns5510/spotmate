package com.spotmate.vo;

public class CouponVo {
	
	//필드
	private int no;
	private int userNo;
	private String buyDate;
	private String usePlace;
	private int point;
	private String status;

	
	//생성자
	public CouponVo() {
	}
	
	public CouponVo(int no, int userNo, String buyDate, String usePlace, int point, String status) {
		this.no = no;
		this.userNo = userNo;
		this.buyDate = buyDate;
		this.usePlace = usePlace;
		this.point = point;
		this.status = status;
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

	public String getBuyDate() {
		return buyDate;
	}

	public void setBuyDate(String buyDate) {
		this.buyDate = buyDate;
	}

	public String getUsePlace() {
		return usePlace;
	}

	public void setUsePlace(String usePlace) {
		this.usePlace = usePlace;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	//메소드-일반
	@Override
	public String toString() {
		return "CouponVo [no=" + no + ", userNo=" + userNo + ", buyDate=" + buyDate + ", usePlace=" + usePlace
				+ ", point=" + point + ", status=" + status + "]";
	}

	
	
	
	
}
