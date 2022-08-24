package com.spotmate.vo;

public class CouponVo {
	
	//필드
	private int no;
	private int userNo;
	private String buyDate;
	private String usePlace;
	private int point;
	private String status;
	private int couponNo;
	private String imgsrc;
	private String cateName;

	
	//생성자
	public CouponVo() {
	}

	public CouponVo(int no, int userNo, String buyDate, String usePlace, int point, String status, int couponNo,
			String imgsrc, String cateName) {
		this.no = no;
		this.userNo = userNo;
		this.buyDate = buyDate;
		this.usePlace = usePlace;
		this.point = point;
		this.status = status;
		this.couponNo = couponNo;
		this.imgsrc = imgsrc;
		this.cateName = cateName;
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

	public int getCouponNo() {
		return couponNo;
	}

	public void setCouponNo(int couponNo) {
		this.couponNo = couponNo;
	}

	public String getImgsrc() {
		return imgsrc;
	}

	public void setImgsrc(String imgsrc) {
		this.imgsrc = imgsrc;
	}

	public String getCateName() {
		return cateName;
	}

	public void setCateName(String cateName) {
		this.cateName = cateName;
	}


	//메소드-일반
	@Override
	public String toString() {
		return "CouponVo [no=" + no + ", userNo=" + userNo + ", buyDate=" + buyDate + ", usePlace=" + usePlace
				+ ", point=" + point + ", status=" + status + ", couponNo=" + couponNo + ", imgsrc=" + imgsrc
				+ ", cateName=" + cateName + "]";
	}



}
