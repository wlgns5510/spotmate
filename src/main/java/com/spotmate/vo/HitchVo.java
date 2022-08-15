package com.spotmate.vo;

public class HitchVo {
	
	
	private String eplace1;
	private int people, point;
	
	public HitchVo() {}
	
	public HitchVo(String eplace1, int people, int point) {
		this.eplace1 = eplace1;
		this.people = people;
		this.point = point;
	}

	public String getEplace1() {
		return eplace1;
	}

	public void setPlace(String eplace1) {
		this.eplace1 = eplace1;
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

	@Override
	public String toString() {
		return "HitchVo [eplace1=" + eplace1 + ", people=" + people + ", point=" + point + "]";
	}

	
}
