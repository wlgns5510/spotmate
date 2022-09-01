package com.spotmate.vo;

public class HitchVo {
	
	
	private String splace1, eplace1, convertPoint, nowaddr, latlng, fullPlace, detailOpt, comments, name, convertFare;
	private int people, point, mateNo;
	private double star, lat, lng;
	
	public HitchVo() {}
	
	public HitchVo(String splace1, String eplace1, String convertPoint, String nowaddr, String latlng, String fullPlace,
			String detailOpt, String comments, String name, String convertFare, int people, int point, int mateNo,
			double star, double lat, double lng) {
		this.splace1 = splace1;
		this.eplace1 = eplace1;
		this.convertPoint = convertPoint;
		this.nowaddr = nowaddr;
		this.latlng = latlng;
		this.fullPlace = fullPlace;
		this.detailOpt = detailOpt;
		this.comments = comments;
		this.name = name;
		this.convertFare = convertFare;
		this.people = people;
		this.point = point;
		this.mateNo = mateNo;
		this.star = star;
		this.lat = lat;
		this.lng = lng;
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

	public String getConvertFare() {
		return convertFare;
	}

	public void setConvertFare(String convertFare) {
		this.convertFare = convertFare;
	}

	public String getSplace1() {
		return splace1;
	}
	
	public void setSplace1(String splace1) {
		this.splace1 = splace1;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEplace1() {
		return eplace1;
	}

	public void setEplace1(String eplace1) {
		this.eplace1 = eplace1;
	}

	public String getConvertPoint() {
		return convertPoint;
	}

	public void setConvertPoint(String convertPoint) {
		this.convertPoint = convertPoint;
	}

	public String getNowaddr() {
		return nowaddr;
	}

	public void setNowaddr(String nowaddr) {
		this.nowaddr = nowaddr;
	}

	public String getLatlng() {
		return latlng;
	}

	public void setLatlng(String latlng) {
		this.latlng = latlng;
	}

	public String getFullPlace() {
		return fullPlace;
	}

	public void setFullPlace(String fullPlace) {
		this.fullPlace = fullPlace;
	}

	public String getDetailOpt() {
		return detailOpt;
	}

	public void setDetailOpt(String detailOpt) {
		this.detailOpt = detailOpt;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}


	public double getStar() {
		return star;
	}

	public void setStar(double star) {
		this.star = star;
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

	public int getMateNo() {
		return mateNo;
	}

	public void setMateNo(int mateNo) {
		this.mateNo = mateNo;
	}

	@Override
	public String toString() {
		return "HitchVo [splace1=" + splace1 + ", eplace1=" + eplace1 + ", convertPoint=" + convertPoint + ", nowaddr="
				+ nowaddr + ", latlng=" + latlng + ", fullPlace=" + fullPlace + ", detailOpt=" + detailOpt
				+ ", comments=" + comments + ", name=" + name + ", convertFare=" + convertFare + ", people=" + people
				+ ", point=" + point + ", mateNo=" + mateNo + ", star=" + star + ", lat=" + lat + ", lng=" + lng + "]";
	}

}
