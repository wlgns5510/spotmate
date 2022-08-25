package com.spotmate.vo;

public class HitchReservVo {
	
	private int mateNo, people, canRide;
	private double lat, lng;
	private String rideUser;
	
	public HitchReservVo() {}
	
	public HitchReservVo(int mateNo, int people, int canRide, double lat, double lng, String rideUser) {
		this.mateNo = mateNo;
		this.people = people;
		this.canRide = canRide;
		this.lat = lat;
		this.lng = lng;
		this.rideUser = rideUser;
	}
	
	

	

	public String getRideUser() {
		return rideUser;
	}

	public void setRideUser(String rideUser) {
		this.rideUser = rideUser;
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

	public int getCanRide() {
		return canRide;
	}

	public void setCanRide(int canRide) {
		this.canRide = canRide;
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

	@Override
	public String toString() {
		return "HitchReservVo [mateNo=" + mateNo + ", people=" + people + ", canRide=" + canRide + ", lat=" + lat
				+ ", lng=" + lng + ", rideUser=" + rideUser + "]";
	}

}
