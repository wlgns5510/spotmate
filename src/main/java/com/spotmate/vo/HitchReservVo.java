package com.spotmate.vo;

public class HitchReservVo {
	
	private int mateNo, people, canRide, userNo, point, driverNo;
	private double lat, lng, rlat, rlng;
	
	public HitchReservVo() {}

	
	public HitchReservVo(int mateNo, int people, int canRide, int userNo, int point, int driverNo, double lat,
			double lng, double rlat, double rlng) {
		this.mateNo = mateNo;
		this.people = people;
		this.canRide = canRide;
		this.userNo = userNo;
		this.point = point;
		this.driverNo = driverNo;
		this.lat = lat;
		this.lng = lng;
		this.rlat = rlat;
		this.rlng = rlng;
	}
	

	
	
	public int getDriverNo() {
		return driverNo;
	}


	public void setDriverNo(int driverNo) {
		this.driverNo = driverNo;
	}


	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}


	public double getRlat() {
		return rlat;
	}


	public void setRlat(double rlat) {
		this.rlat = rlat;
	}


	public double getRlng() {
		return rlng;
	}


	public void setRlng(double rlng) {
		this.rlng = rlng;
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
		return "HitchReservVo [mateNo=" + mateNo + ", people=" + people + ", canRide=" + canRide + ", userNo=" + userNo
				+ ", point=" + point + ", driverNo=" + driverNo + ", lat=" + lat + ", lng=" + lng + ", rlat=" + rlat
				+ ", rlng=" + rlng + "]";
	}

}
