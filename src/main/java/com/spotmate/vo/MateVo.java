package com.spotmate.vo;

public class MateVo {
	
	private String id;
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
	private int day;
	private int wayNo;
	private String sepplace;
	private String time;
	private String place;
	private double lat;
	private double lng;
	private double latlng;
	private String sPlace;
	private String ePlace;
	private int allDay;
	private String sDate;
	private String eDate;
	private Integer smPeople;

	
	public MateVo() {}
	public MateVo(double lat, double lng) {
		super();
		this.lat = lat;
		this.lng = lng;
	}


	public MateVo(String id, String name, String carPicture, String carName, String carNo, String introduce,
			String startDate, String endDate, int people, String type, int point, String duration, String distance,
			String comments, int mateNo, String optionName, int mateOptionNo, int optionNo, String matePlaceNo, int day,
			int wayNo, String sepplace, String time, String place, double lat, double lng, double latlng, String sPlace,
			String ePlace, int allDay, String sDate, String eDate, Integer smPeople) {
		super();
		this.id = id;
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
		this.lat = lat;
		this.lng = lng;
		this.latlng = latlng;
		this.sPlace = sPlace;
		this.ePlace = ePlace;
		this.allDay = allDay;
		this.sDate = sDate;
		this.eDate = eDate;
		this.smPeople = smPeople;
	}
	
	public Integer getSmPeople() {
		return smPeople;
	}
	public void setSmPeople(Integer smPeople) {
		this.smPeople = smPeople;
	}
	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


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


	public int getMateNo() {
		return mateNo;
	}


	public void setMateNo(int mateNo) {
		this.mateNo = mateNo;
	}


	public String getOptionName() {
		return optionName;
	}


	public void setOptionName(String optionName) {
		this.optionName = optionName;
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


	public int getDay() {
		return day;
	}


	public void setDay(int day) {
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


	public int getAllDay() {
		return allDay;
	}


	public void setAllDay(int allDay) {
		this.allDay = allDay;
	}


	public String getsDate() {
		return sDate;
	}


	public void setsDate(String sDate) {
		this.sDate = sDate;
	}


	public String geteDate() {
		return eDate;
	}


	public void seteDate(String eDate) {
		this.eDate = eDate;
	}
	
	@Override
	public String toString() {
		return "MateVo [id=" + id + ", name=" + name + ", carPicture=" + carPicture + ", carName=" + carName
				+ ", carNo=" + carNo + ", introduce=" + introduce + ", startDate=" + startDate + ", endDate=" + endDate
				+ ", people=" + people + ", type=" + type + ", point=" + point + ", duration=" + duration
				+ ", distance=" + distance + ", comments=" + comments + ", mateNo=" + mateNo + ", optionName="
				+ optionName + ", mateOptionNo=" + mateOptionNo + ", optionNo=" + optionNo + ", matePlaceNo="
				+ matePlaceNo + ", day=" + day + ", wayNo=" + wayNo + ", sepplace=" + sepplace + ", time=" + time
				+ ", place=" + place + ", lat=" + lat + ", lng=" + lng + ", latlng=" + latlng + ", sPlace=" + sPlace
				+ ", ePlace=" + ePlace + ", allDay=" + allDay + ", sDate=" + sDate + ", eDate=" + eDate + ", smPeople="
				+ smPeople + "]";
	}


	
	
	
	
	

	
}
