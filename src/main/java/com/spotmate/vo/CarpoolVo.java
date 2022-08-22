package com.spotmate.vo;

public class CarpoolVo {
	
	//필드
	
	private int no, wayNo, point, people, driverNo, detailNo, star;
	private String id, startDate, endDate, place, splace, eplace, latlng,  
	type, duration, distance, carName, carPicture,introduce, comments, name, time, content, ch_type;
	//private List<String> ch_type;
	
	
	//생성자
	
	public CarpoolVo() {
		
	}
	
	public CarpoolVo(int no, int wayNo, int point, int people, int driverNo, int detailNo, int star, String id,
			String startDate, String endDate, String place, String splace, String eplace, String latlng, String type,
			String duration, String distance, String carName, String carPicture, String introduce, String comments,
			String name, String time, String content, String ch_type) {

		this.no = no;
		this.wayNo = wayNo;
		this.point = point;
		this.people = people;
		this.driverNo = driverNo;
		this.detailNo = detailNo;
		this.star = star;
		this.id = id;
		this.startDate = startDate;
		this.endDate = endDate;
		this.place = place;
		this.splace = splace;
		this.eplace = eplace;
		this.latlng = latlng;
		this.type = type;
		this.duration = duration;
		this.distance = distance;
		this.carName = carName;
		this.carPicture = carPicture;
		this.introduce = introduce;
		this.comments = comments;
		this.name = name;
		this.time = time;
		this.content = content;
		this.ch_type = ch_type;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getWayNo() {
		return wayNo;
	}

	public void setWayNo(int wayNo) {
		this.wayNo = wayNo;
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

	public int getDriverNo() {
		return driverNo;
	}

	public void setDriverNo(int driverNo) {
		this.driverNo = driverNo;
	}

	public int getDetailNo() {
		return detailNo;
	}

	public void setDetailNo(int detailNo) {
		this.detailNo = detailNo;
	}

	public int getStar() {
		return star;
	}

	public void setStar(int star) {
		this.star = star;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
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

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
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

	public String getCarName() {
		return carName;
	}

	public void setCarName(String carName) {
		this.carName = carName;
	}

	public String getCarPicture() {
		return carPicture;
	}

	public void setCarPicture(String carPicture) {
		this.carPicture = carPicture;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getCh_type() {
		return ch_type;
	}

	public void setCh_type(String ch_type) {
		this.ch_type = ch_type;
	}

	@Override
	public String toString() {
		return "CarpoolVo [no=" + no + ", wayNo=" + wayNo + ", point=" + point + ", people=" + people + ", driverNo="
				+ driverNo + ", detailNo=" + detailNo + ", star=" + star + ", id=" + id + ", startDate=" + startDate
				+ ", endDate=" + endDate + ", place=" + place + ", splace=" + splace + ", eplace=" + eplace
				+ ", latlng=" + latlng + ", type=" + type + ", duration=" + duration + ", distance=" + distance
				+ ", carName=" + carName + ", carPicture=" + carPicture + ", introduce=" + introduce + ", comments="
				+ comments + ", name=" + name + ", time=" + time + ", content=" + content + ", ch_type=" + ch_type
				+ "]";
	}
	
	
	
	
	
}