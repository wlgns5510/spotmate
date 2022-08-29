package com.spotmate.vo;

public class CouponVo {
	
	//필드
	private int no;
	private int userNo;
	private int couponListNo;
	private String buyDate;
	private String usePlace;
	private int point;
	private String status;
	private int couponNo;
	private String imgsrc;
	private String cateName;
	private String startDate;
	private String endDate;
	private String option1;
	private String option2;

	private int crtPage;
	private int startRnum;
	private int endRnum;
	
	
	//생성자
	public CouponVo() {
	}

	public CouponVo(int no, int userNo, int couponListNo, String buyDate, String usePlace, int point, String status,
			int couponNo, String imgsrc, String cateName, String startDate, String endDate, String option1,
			String option2, int crtPage, int startRnum, int endRnum) {
		this.no = no;
		this.userNo = userNo;
		this.couponListNo = couponListNo;
		this.buyDate = buyDate;
		this.usePlace = usePlace;
		this.point = point;
		this.status = status;
		this.couponNo = couponNo;
		this.imgsrc = imgsrc;
		this.cateName = cateName;
		this.startDate = startDate;
		this.endDate = endDate;
		this.option1 = option1;
		this.option2 = option2;
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

	public int getCouponListNo() {
		return couponListNo;
	}

	public void setCouponListNo(int couponListNo) {
		this.couponListNo = couponListNo;
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

	//메소드-일반
	@Override
	public String toString() {
		return "CouponVo [no=" + no + ", userNo=" + userNo + ", couponListNo=" + couponListNo + ", buyDate=" + buyDate
				+ ", usePlace=" + usePlace + ", point=" + point + ", status=" + status + ", couponNo=" + couponNo
				+ ", imgsrc=" + imgsrc + ", cateName=" + cateName + ", startDate=" + startDate + ", endDate=" + endDate
				+ ", option1=" + option1 + ", option2=" + option2 + ", crtPage=" + crtPage + ", startRnum=" + startRnum
				+ ", endRnum=" + endRnum + "]";
	}



}
