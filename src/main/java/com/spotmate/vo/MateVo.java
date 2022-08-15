package com.spotmate.vo;

public class MateVo {
	//필드
	private String name;
	private String carPicture;
	private String carName;
	private String carNo;
	private String introduce;
	private String StartDate;
	private String endDate;
	private int people;
	private String type;
	private int point;
	private String duration;
	private String distance;
	private String comments;
	private String optionName;
	
	//생성자
	public MateVo() {}
	
	public MateVo(String name, String carPicture, String carName, String carNo, String introduce, String startDate,
			String endDate, int people, String type, int point, String duration, String distance, String comments) {
		super();
		this.name = name;
		this.carPicture = carPicture;
		this.carName = carName;
		this.carNo = carNo;
		this.introduce = introduce;
		StartDate = startDate;
		this.endDate = endDate;
		this.people = people;
		this.type = type;
		this.point = point;
		this.duration = duration;
		this.distance = distance;
		this.comments = comments;
	}

	//메소드gs
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCarPicture() {
		return carPicture;
	}

	public void setCarPicture(String carPicture) {
		this.carPicture = carPicture;
	}

	public String getCarName() {
		return carName;
	}

	public void setCarName(String carName) {
		this.carName = carName;
	}

	public String getCarNo() {
		return carNo;
	}

	public void setCarNo(String carNo) {
		this.carNo = carNo;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public String getStartDate() {
		return StartDate;
	}

	public void setStartDate(String startDate) {
		StartDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public int getPeople() {
		return people;
	}

	public void setPeople(int people) {
		this.people = people;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
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

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public String getOptionName() {
		return optionName;
	}

	public void setOptionName(String optionName) {
		this.optionName = optionName;
	}
			
	//메소드일반
	@Override
	public String toString() {
		return "MateVo [name=" + name + ", carPicture=" + carPicture + ", carName=" + carName + ", carNo=" + carNo
				+ ", introduce=" + introduce + ", StartDate=" + StartDate + ", endDate=" + endDate + ", people="
				+ people + ", type=" + type + ", point=" + point + ", duration=" + duration + ", distance=" + distance
				+ ", comments=" + comments + ", optionName=" + optionName + "]";
	}
}
