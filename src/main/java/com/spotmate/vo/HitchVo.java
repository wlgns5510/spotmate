package com.spotmate.vo;

public class HitchVo {
	
	
	private String eplace1, convertPoint, nowaddr, latlng;
	private int people, point, mateNo;
	
	public HitchVo() {}
	
	public HitchVo(int mateNo, String eplace1, int people, int point, String latlng) {
		this.mateNo = mateNo;
		this.eplace1 = eplace1;
		this.people = people;
		this.point = point;
		this.latlng = latlng;
	}
	
	
	public String getLatlng() {
		return latlng;
	}

	public void setLatlng(String latlng) {
		this.latlng = latlng;
	}

	public String getNowaddr() {
		return nowaddr;
	}

	public void setNowaddr(String nowaddr) {
		this.nowaddr = nowaddr;
	}

	public int getMateNo() {
		return mateNo;
	}

	public void setMateNo(int mateNo) {
		this.mateNo = mateNo;
	}

	public int getPeople() {
		return people;
	}

	public void setPeople(int people) {
		this.people = people;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}
	

	public String getConvertPoint() {
		return convertPoint;
	}

	public void setConvertPoint(String convertPoint) {
		this.convertPoint = convertPoint;
	}


	public String getEplace1() {
		return eplace1;
	}

	public void setEplace1(String eplace1) {
		this.eplace1 = eplace1;
	}

	@Override
	public String toString() {
		return "HitchVo [eplace1=" + eplace1 + ", convertPoint=" + convertPoint + ", nowaddr=" + nowaddr + ", latlng="
				+ latlng + ", people=" + people + ", point=" + point + ", mateNo=" + mateNo + "]";
	}

}
