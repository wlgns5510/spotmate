package com.spotmate.vo;

public class MyUsageVo {
	
	private String type, regDate, fullPlace, status, startPlace, endPlace, convertPoint, startDate;
	private int point, rn, mateNo, resvNo;
	public MyUsageVo() {}
	

	
	public MyUsageVo(String type, String regDate, String fullPlace, String status, String startPlace, String endPlace,
			String convertPoint, String startDate, int point, int rn, int mateNo, int resvNo) {
		this.type = type;
		this.regDate = regDate;
		this.fullPlace = fullPlace;
		this.status = status;
		this.startPlace = startPlace;
		this.endPlace = endPlace;
		this.convertPoint = convertPoint;
		this.point = point;
		this.rn = rn;
		this.mateNo = mateNo;
		this.resvNo = resvNo;
		this.startDate = startDate;
	}


	public String getStartDate() {
		return startDate;
	}



	public void setStartDate(String startDate) {
		this.startDate = startDate;
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



	public String getFullPlace() {
		return fullPlace;
	}



	public void setFullPlace(String fullPlace) {
		this.fullPlace = fullPlace;
	}



	public String getStatus() {
		return status;
	}



	public void setStatus(String status) {
		this.status = status;
	}



	public String getStartPlace() {
		return startPlace;
	}



	public void setStartPlace(String startPlace) {
		this.startPlace = startPlace;
	}



	public String getEndPlace() {
		return endPlace;
	}



	public void setEndPlace(String endPlace) {
		this.endPlace = endPlace;
	}



	public String getConvertPoint() {
		return convertPoint;
	}



	public void setConvertPoint(String convertPoint) {
		this.convertPoint = convertPoint;
	}



	public int getPoint() {
		return point;
	}



	public void setPoint(int point) {
		this.point = point;
	}



	public int getRn() {
		return rn;
	}



	public void setRn(int rn) {
		this.rn = rn;
	}



	public int getMateNo() {
		return mateNo;
	}



	public void setMateNo(int mateNo) {
		this.mateNo = mateNo;
	}



	public int getResvNo() {
		return resvNo;
	}



	public void setResvNo(int resvNo) {
		this.resvNo = resvNo;
	}



	@Override
	public String toString() {
		return "MyUsageVo [type=" + type + ", regDate=" + regDate + ", fullPlace=" + fullPlace + ", status=" + status
				+ ", startPlace=" + startPlace + ", endPlace=" + endPlace + ", convertPoint=" + convertPoint
				+ ", startDate=" + startDate + ", point=" + point + ", rn=" + rn + ", mateNo=" + mateNo + ", resvNo="
				+ resvNo + "]";
	}

}
