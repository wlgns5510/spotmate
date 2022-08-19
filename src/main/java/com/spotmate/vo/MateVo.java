package com.spotmate.vo;

public class MateVo {
	//필드
	private String name;
	private String carPicture;
	private String carName;
	private String carNo;
	private String introduce;
	private String startDate;
	private String endDate;
	private int people;
	private String type;
	private int point;
	private String duration;
	private String distance;
	private String comments;	
	private int mateNo;	
	private String optionName;
	private int mateOptionNo;
	private int optionNo;
	private String matePlaceNo;
	private String day;
	private int wayNo;
	private String sepplace;
	private String time;
	private String place;
	private double let;
	private double lng;
	private double latlng;
	private String sPlace;
	private String ePlace;
	
	
	
	//생성자
	public MateVo() {}
	
	
	public MateVo(String name, String carPicture, String carName, String carNo, String introduce, String startDate,
			String endDate, int people, String type, int point, String duration, String distance, String comments,
			int mateNo, String optionName, int mateOptionNo, int optionNo, String matePlaceNo, String day, int wayNo,
			String sepplace, String time, String place, long let, long lng, double latlng, String sPlace, String ePlace) {
		super();
		this.name = name;
		this.carPicture = carPicture;
		this.carName = carName;
		this.carNo = carNo;
		this.introduce = introduce;
		this.startDate = startDate;
		this.endDate = endDate;
		this.people = people;
		this.type = type;
		this.point = point;
		this.duration = duration;
		this.distance = distance;
		this.comments = comments;
		this.mateNo = mateNo;
		this.optionName = optionName;
		this.mateOptionNo = mateOptionNo;
		this.optionNo = optionNo;
		this.matePlaceNo = matePlaceNo;
		this.day = day;
		this.wayNo = wayNo;
		this.sepplace = sepplace;
		this.time = time;
		this.place = place;
		this.let = let;
		this.lng = lng;
		this.latlng = latlng;
		this.sPlace = sPlace;
		this.ePlace = ePlace;
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

	public String getstartDate() {
		return startDate;
	}

	public void setstartDate(String startDate) {
		this.startDate = startDate;
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
	
	public int getMateNo() {
		return mateNo;
	}

	public void setMateNo(int mateNo) {
		this.mateNo = mateNo;
	}
	
	public int getMateOptionNo() {
		return mateOptionNo;
	}

	public void setMateOptionNo(int mateOptionNo) {
		this.mateOptionNo = mateOptionNo;
	}
	
	public int getOptionNo() {
		return optionNo;
	}

	public void setOptionNo(int optionNo) {
		this.optionNo = optionNo;
	}

	public String getMatePlaceNo() {
		return matePlaceNo;
	}

	public void setMatePlaceNo(String matePlaceNo) {
		this.matePlaceNo = matePlaceNo;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public int getWayNo() {
		return wayNo;
	}

	public void setWayNo(int wayNo) {
		this.wayNo = wayNo;
	}

	public String getSepplace() {
		return sepplace;
	}

	public void setSepplace(String sepplace) {
		this.sepplace = sepplace;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public double getLet() {
		return let;
	}

	public void setLet(double let) {
		this.let = let;
	}

	public double getLng() {
		return lng;
	}

	public void setLng(double lng) {
		this.lng = lng;
	}

	public double getLatlng() {
		return latlng;
	}

	public void setLatlng(double latlng) {
		this.latlng = latlng;
	}

	

	public String getsPlace() {
		return sPlace;
	}

	public void setsPlace(String sPlace) {
		this.sPlace = sPlace;
	}

	public String getePlace() {
		return ePlace;
	}

	public void setePlace(String ePlace) {
		this.ePlace = ePlace;
	}
	
	//메소드일반
	@Override
	public String toString() {
		return "MateVo [name=" + name + ", carPicture=" + carPicture + ", carName=" + carName + ", carNo=" + carNo
				+ ", introduce=" + introduce + ", startDate=" + startDate + ", endDate=" + endDate + ", people="
				+ people + ", type=" + type + ", point=" + point + ", duration=" + duration + ", distance=" + distance
				+ ", comments=" + comments + ", mateNo=" + mateNo + ", optionName=" + optionName + ", mateOptionNo="
				+ mateOptionNo + ", optionNo=" + optionNo + ", matePlaceNo=" + matePlaceNo + ", day=" + day + ", wayNo="
				+ wayNo + ", sepplace=" + sepplace + ", time=" + time + ", place=" + place + ", let=" + let + ", lng="
				+ lng + ", latlng=" + latlng + ", sPlace=" + sPlace + ", ePlace=" + ePlace + "]";
	}
}
