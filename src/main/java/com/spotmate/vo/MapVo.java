package com.spotmate.vo;

public class MapVo {
	
	private double lat, lng;
	private int mateNo;
	private String addr;
	
	public MapVo() {
		
	}
	
	public MapVo(double lat, double lng, int mateNo, String addr) {
		this.lat = lat;
		this.lng = lng;
		this.mateNo = mateNo;
		this.addr = addr;
	}
	
//	public MapVo(double lat, double lng) {
//		this.lat = lat;
//		this.lng = lng;
//	}
	
	
	
	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public int getMateNo() {
		return mateNo;
	}

	public void setMateNo(int mateNo) {
		this.mateNo = mateNo;
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

	@Override
	public String toString() {
		return "MapVo [lat=" + lat + ", lng=" + lng + ", mateNo=" + mateNo + ", addr=" + addr + "]";
	}


}
