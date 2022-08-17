package com.spotmate.vo;

public class CarpoolVo {
	
	//필드
	
	private int no, wayno, point, people, driverNo, detailNo, star;
	private String id, startDate, endDate, place, latlng,  
	type, duration, distance, carName, carPicture,introduce, comments, name, time, content;
	
	
	//생성자

	public CarpoolVo() {
		
	}


	public CarpoolVo(int no, int wayno, int point, int people, int driverNo, int detailNo, int star, String id,
			String startDate, String endDate, String place, String latlng, String type, String duration,
			String distance, String carName, String carPicture, String introduce, String comments, String name,
			String time, String content) {
		super();
		this.no = no;
		this.wayno = wayno;
		this.point = point;
		this.people = people;
		this.driverNo = driverNo;
		this.detailNo = detailNo;
		this.star = star;
		this.id = id;
		this.startDate = startDate;
		this.endDate = endDate;
		this.place = place;
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
	}
	
	
	//메서드 getter/setter
	
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


	//메서드 일반
	
	@Override
	public String toString() {
		return "CarpoolVo [no=" + no + ", wayno=" + wayno + ", point=" + point + ", people=" + people + ", driverNo="
				+ driverNo + ", detailNo=" + detailNo + ", star=" + star + ", id=" + id + ", startDate=" + startDate
				+ ", endDate=" + endDate + ", place=" + place + ", latlng=" + latlng + ", type=" + type + ", duration="
				+ duration + ", distance=" + distance + ", carName=" + carName + ", carPicture=" + carPicture
				+ ", introduce=" + introduce + ", comments=" + comments + ", name=" + name + ", time=" + time
				+ ", content=" + content + "]";
	}
	
	
}
	
	
	/*
	//필드
	
	private int no;
	private int mateNo;
	private String type;
	private int people;
	private String place;
	private int wayNo;
	private int point;
	private int driverNo;
	
	
	//생성자
	
	public CarpoolVo() {

	}
	
	public CarpoolVo(int no, int mateNo, String type, int people, String place, int wayNo, int point, int driverNo) {
		this.no = no;
		this.mateNo = mateNo;
		this.type = type;
		this.people = people;
		this.place = place;
		this.wayNo = wayNo;
		this.point = point;
		this.driverNo = driverNo;
	}

		
	//메서드 getter,setter
	
	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getMateNo() {
		return mateNo;
	}

	public void setMateNo(int mateNo) {
		this.mateNo = mateNo;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
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

	public int getDriverNo() {
		return driverNo;
	}

	public void setDriverNo(int driverNo) {
		this.driverNo = driverNo;
	}

		
	//메서드 일반
	
	@Override
	public String toString() {
		return "CarpoolVo [no=" + no + ", mateNo=" + mateNo + ", type=" + type + ", people=" + people + ", place="
				+ place + ", wayNo=" + wayNo + ", point=" + point + ", driverNo=" + driverNo + "]";
	}
	
	*/