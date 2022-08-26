package com.spotmate.vo;

public class HitchSearchVo {
	private String detailOpt, place;
	private int people;
	
	public HitchSearchVo() {}
	
	public HitchSearchVo(String detailOpt, String place, int people) {
		this.detailOpt = detailOpt;
		this.place = place;
		this.people = people;
	}

	public String getDetailOpt() {
		return detailOpt;
	}

	public void setDetailOpt(String detailOpt) {
		this.detailOpt = detailOpt;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public int getPeople() {
		return people;
	}

	public void setPeople(int people) {
		this.people = people;
	}

	@Override
	public String toString() {
		return "HitchSearchVo [detailOpt=" + detailOpt + ", place=" + place + ", people=" + people + "]";
	}
}
