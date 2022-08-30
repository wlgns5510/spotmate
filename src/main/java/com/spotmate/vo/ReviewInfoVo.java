package com.spotmate.vo;

public class ReviewInfoVo {
	
	private String fullPlace, startTime, duration, distance, splace, eplace, convertPoint;
	private int people, point, resvNo;
	
	public ReviewInfoVo() {}

	public ReviewInfoVo(String fullPlace, String startTime, String duration, String distance, String splace,
			String eplace, int people, int point, int resvNo) {
		this.fullPlace = fullPlace;
		this.startTime = startTime;
		this.duration = duration;
		this.distance = distance;
		this.splace = splace;
		this.eplace = eplace;
		this.people = people;
		this.point = point;
		this.resvNo = resvNo;
	}
	

	public int getResvNo() {
		return resvNo;
	}

	public void setResvNo(int resvNo) {
		this.resvNo = resvNo;
	}

	public String getConvertPoint() {
		return convertPoint;
	}

	public void setConvertPoint(String convertPoint) {
		this.convertPoint = convertPoint;
	}

	public String getFullPlace() {
		return fullPlace;
	}

	public void setFullPlace(String fullPlace) {
		this.fullPlace = fullPlace;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getDuration() {
		return duration;
	}

	public void setDuration(String duration) {
		this.duration = duration;
	}

	public String getDistance() {
		return distance;
	}

	public void setDistance(String distance) {
		this.distance = distance;
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

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	@Override
	public String toString() {
		return "ReviewInfoVo [fullPlace=" + fullPlace + ", startTime=" + startTime + ", duration=" + duration
				+ ", distance=" + distance + ", splace=" + splace + ", eplace=" + eplace + ", people=" + people
				+ ", point=" + point + "]";
	}
	
	
	
	
	
}
