package com.spotmate.vo;

public class HitchSearchResultVo {
	
	private String eplace1, latlng, convertPoint, nowAddr;
	private int point, people, mateNo;
	
	public HitchSearchResultVo() {}
	
	public HitchSearchResultVo(String eplace1, String latlng, int point, int people, int mateNo, String convertPoint, String nowAddr) {
		this.point = point;
		this.eplace1 = eplace1;
		this.latlng = latlng;
		this.people = people;
		this.mateNo = mateNo;
		this.convertPoint = convertPoint;
		this.nowAddr = nowAddr;
	}
	
	

	public String getConvertPoint() {
		return convertPoint;
	}

	public void setConvertPoint(String convertPoint) {
		this.convertPoint = convertPoint;
	}

	public String getNowAddr() {
		return nowAddr;
	}

	public void setNowAddr(String nowAddr) {
		this.nowAddr = nowAddr;
	}

	public int getMateNo() {
		return mateNo;
	}

	public void setMateNo(int mateNo) {
		this.mateNo = mateNo;
	}

	public String getEplace1() {
		return eplace1;
	}

	public void setEplace1(String eplace1) {
		this.eplace1 = eplace1;
	}

	public String getLatlng() {
		return latlng;
	}

	public void setLatlng(String latlng) {
		this.latlng = latlng;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public int getPeople() {
		return people;
	}

	public void setPeople(int people) {
		this.people = people;
	}

	@Override
	public String toString() {
		return "HitchSearchResultVo [eplace1=" + eplace1 + ", latlng=" + latlng + ", convertPoint=" + convertPoint
				+ ", nowAddr=" + nowAddr + ", point=" + point + ", people=" + people + ", mateNo=" + mateNo + "]";
	}

}
