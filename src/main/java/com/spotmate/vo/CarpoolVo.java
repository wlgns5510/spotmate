package com.spotmate.vo;



public class CarpoolVo {
	
	private int no, wayno, point, people;
	private String place, latlng, splace, eplace;
	
	
	
	public CarpoolVo() {}
	
	public CarpoolVo( int no, String place, int people, int point, String latlng ) {
		this.latlng = latlng;
		this.place = place;
		this.no = no;
		this.point = point;
		this.people = people;
	}
	
	public CarpoolVo ( int no, String place, int wayno ) {
		this.no = no;
		this.place = place;
		this.wayno = wayno;
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

	public String getLatlng() {
		return latlng;
	}

	public void setLatlng(String latlng) {
		this.latlng = latlng;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getWayno() {
		return wayno;
	}

	public void setWayno(int wayno) {
		this.wayno = wayno;
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

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	@Override
	public String toString() {
		return "CarpoolVo [no=" + no + ", wayno=" + wayno + ", point=" + point + ", people=" + people + ", place="
				+ place + ", latlng=" + latlng + ", splace=" + splace + ", eplace=" + eplace + "]";
	}


	
}
