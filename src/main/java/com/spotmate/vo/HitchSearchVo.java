package com.spotmate.vo;

public class HitchSearchVo {
	private String detailOpt, splace, eplace;
	private String nosmoke, femaleDriver, pet, phoneCharge, trunk;
	private int people;
	private double lat, lng;
	
	public HitchSearchVo() {}
	
	
	public HitchSearchVo(String detailOpt, String splace, String eplace, int people, double lat, double lng) {
		super();
		this.detailOpt = detailOpt;
		this.splace = splace;
		this.eplace = eplace;
		this.people = people;
		this.lat = lat;
		this.lng = lng;
	}
	
	
	public String getNosmoke() {
		return nosmoke;
	}


	public void setNosmoke(String nosmoke) {
		this.nosmoke = nosmoke;
	}


	public String getFemaleDriver() {
		return femaleDriver;
	}


	public void setFemaleDriver(String femaleDriver) {
		this.femaleDriver = femaleDriver;
	}


	public String getPet() {
		return pet;
	}


	public void setPet(String pet) {
		this.pet = pet;
	}


	public String getPhoneCharge() {
		return phoneCharge;
	}


	public void setPhoneCharge(String phoneCharge) {
		this.phoneCharge = phoneCharge;
	}


	public String getTrunk() {
		return trunk;
	}


	public void setTrunk(String trunk) {
		this.trunk = trunk;
	}


	public double getLat() {
		return lat;
	}


	public void setLat(double lat) {
		this.lat = lat;
	}


	public double getLng() {
		return lng;
	}


	public void setLng(double lng) {
		this.lng = lng;
	}


	public String getDetailOpt() {
		return detailOpt;
	}

	public void setDetailOpt(String detailOpt) {
		this.detailOpt = detailOpt;
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

	public int getPeople() {
		return people;
	}

	public void setPeople(int people) {
		this.people = people;
	}


	@Override
	public String toString() {
		return "HitchSearchVo [detailOpt=" + detailOpt + ", splace=" + splace + ", eplace=" + eplace + ", people="
				+ people + ", lat=" + lat + ", lng=" + lng + "]";
	}


}
