package com.spotmate.vo;

import java.util.List;

public class CarpoolVo {

	// 필드

	private int no, userNo, mateNo, sMateNo, eMateNo, resvNo, wayNo, sWayNo, eWayNo, sPlaceNo, ePlaceNo, point, people,
			driverNo, detailNo, star, avgStar, spotMateNo, sLat, sLng, eLat, eLng, lat, lng, canRide;
	private String id, userName, startDate, endDate, place, splace, sSepPlace, eplace, eSepPlace, latlng, detailOpt,
			type, duration, distance, carName, carPicture, introduce, comments, name, time, sTime, content,
			femaleDriver, pet, phoneCharger, nonSmoke, useTrunk, carNo;

	private String opts; // 쿼리로 만든 옵션 값 컬럼
	private Integer smPeople; // 검색시 기본값 없으면 오류 -->int 대신 Integer사용

	private List<Integer> ch_type; // 옵션값 원본

	private int crtPage;
	private int startRnum;
	private int endRnum;
	private int listCnt;

	// 생성자
	public CarpoolVo() {

	}

	public CarpoolVo(int no, int userNo, int mateNo, int sMateNo, int eMateNo, int resvNo, int wayNo, int sWayNo,
			int eWayNo, int sPlaceNo, int ePlaceNo, int point, int people, int driverNo, int detailNo, int star,
			int avgStar, int spotMateNo, int sLat, int sLng, int eLat, int eLng, int lat, int lng, int canRide,
			String id, String userName, String startDate, String endDate, String place, String splace, String sSepPlace,
			String eplace, String eSepPlace, String latlng, String detailOpt, String type, String duration,
			String distance, String carName, String carPicture, String introduce, String comments, String name,
			String time, String sTime, String content, String femaleDriver, String pet, String phoneCharger,
			String nonSmoke, String useTrunk, String carNo, String opts, Integer smPeople, List<Integer> ch_type,
			int crtPage, int startRnum, int endRnum, int listCnt) {
		super();
		this.no = no;
		this.userNo = userNo;
		this.mateNo = mateNo;
		this.sMateNo = sMateNo;
		this.eMateNo = eMateNo;
		this.resvNo = resvNo;
		this.wayNo = wayNo;
		this.sWayNo = sWayNo;
		this.eWayNo = eWayNo;
		this.sPlaceNo = sPlaceNo;
		this.ePlaceNo = ePlaceNo;
		this.point = point;
		this.people = people;
		this.driverNo = driverNo;
		this.detailNo = detailNo;
		this.star = star;
		this.avgStar = avgStar;
		this.spotMateNo = spotMateNo;
		this.sLat = sLat;
		this.sLng = sLng;
		this.eLat = eLat;
		this.eLng = eLng;
		this.lat = lat;
		this.lng = lng;
		this.canRide = canRide;
		this.id = id;
		this.userName = userName;
		this.startDate = startDate;
		this.endDate = endDate;
		this.place = place;
		this.splace = splace;
		this.sSepPlace = sSepPlace;
		this.eplace = eplace;
		this.eSepPlace = eSepPlace;
		this.latlng = latlng;
		this.detailOpt = detailOpt;
		this.type = type;
		this.duration = duration;
		this.distance = distance;
		this.carName = carName;
		this.carPicture = carPicture;
		this.introduce = introduce;
		this.comments = comments;
		this.name = name;
		this.time = time;
		this.sTime = sTime;
		this.content = content;
		this.femaleDriver = femaleDriver;
		this.pet = pet;
		this.phoneCharger = phoneCharger;
		this.nonSmoke = nonSmoke;
		this.useTrunk = useTrunk;
		this.carNo = carNo;
		this.opts = opts;
		this.smPeople = smPeople;
		this.ch_type = ch_type;
		this.crtPage = crtPage;
		this.startRnum = startRnum;
		this.endRnum = endRnum;
		this.listCnt = listCnt;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getMateNo() {
		return mateNo;
	}

	public void setMateNo(int mateNo) {
		this.mateNo = mateNo;
	}

	public int getsMateNo() {
		return sMateNo;
	}

	public void setsMateNo(int sMateNo) {
		this.sMateNo = sMateNo;
	}

	public int geteMateNo() {
		return eMateNo;
	}

	public void seteMateNo(int eMateNo) {
		this.eMateNo = eMateNo;
	}

	public int getResvNo() {
		return resvNo;
	}

	public void setResvNo(int resvNo) {
		this.resvNo = resvNo;
	}

	public int getWayNo() {
		return wayNo;
	}

	public void setWayNo(int wayNo) {
		this.wayNo = wayNo;
	}

	public int getsWayNo() {
		return sWayNo;
	}

	public void setsWayNo(int sWayNo) {
		this.sWayNo = sWayNo;
	}

	public int geteWayNo() {
		return eWayNo;
	}

	public void seteWayNo(int eWayNo) {
		this.eWayNo = eWayNo;
	}

	public int getsPlaceNo() {
		return sPlaceNo;
	}

	public void setsPlaceNo(int sPlaceNo) {
		this.sPlaceNo = sPlaceNo;
	}

	public int getePlaceNo() {
		return ePlaceNo;
	}

	public void setePlaceNo(int ePlaceNo) {
		this.ePlaceNo = ePlaceNo;
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

	public int getAvgStar() {
		return avgStar;
	}

	public void setAvgStar(int avgStar) {
		this.avgStar = avgStar;
	}

	public int getSpotMateNo() {
		return spotMateNo;
	}

	public void setSpotMateNo(int spotMateNo) {
		this.spotMateNo = spotMateNo;
	}

	public int getsLat() {
		return sLat;
	}

	public void setsLat(int sLat) {
		this.sLat = sLat;
	}

	public int getsLng() {
		return sLng;
	}

	public void setsLng(int sLng) {
		this.sLng = sLng;
	}

	public int geteLat() {
		return eLat;
	}

	public void seteLat(int eLat) {
		this.eLat = eLat;
	}

	public int geteLng() {
		return eLng;
	}

	public void seteLng(int eLng) {
		this.eLng = eLng;
	}

	public int getLat() {
		return lat;
	}

	public void setLat(int lat) {
		this.lat = lat;
	}

	public int getLng() {
		return lng;
	}

	public void setLng(int lng) {
		this.lng = lng;
	}

	public int getCanRide() {
		return canRide;
	}

	public void setCanRide(int canRide) {
		this.canRide = canRide;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
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

	public String getsSepPlace() {
		return sSepPlace;
	}

	public void setsSepPlace(String sSepPlace) {
		this.sSepPlace = sSepPlace;
	}

	public String getEplace() {
		return eplace;
	}

	public void setEplace(String eplace) {
		this.eplace = eplace;
	}

	public String geteSepPlace() {
		return eSepPlace;
	}

	public void seteSepPlace(String eSepPlace) {
		this.eSepPlace = eSepPlace;
	}

	public String getLatlng() {
		return latlng;
	}

	public void setLatlng(String latlng) {
		this.latlng = latlng;
	}

	public String getDetailOpt() {
		return detailOpt;
	}

	public void setDetailOpt(String detailOpt) {
		this.detailOpt = detailOpt;
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

	public String getsTime() {
		return sTime;
	}

	public void setsTime(String sTime) {
		this.sTime = sTime;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getFemaleDriver() {
		return femaleDriver;
	}

	public void setFemaleDriver(String femaleDriver) {
		this.femaleDriver = femaleDriver;
	}

	public String getPet() {
		return pet;
	}

	public void setPet(String pet) {
		this.pet = pet;
	}

	public String getPhoneCharger() {
		return phoneCharger;
	}

	public void setPhoneCharger(String phoneCharger) {
		this.phoneCharger = phoneCharger;
	}

	public String getNonSmoke() {
		return nonSmoke;
	}

	public void setNonSmoke(String nonSmoke) {
		this.nonSmoke = nonSmoke;
	}

	public String getUseTrunk() {
		return useTrunk;
	}

	public void setUseTrunk(String useTrunk) {
		this.useTrunk = useTrunk;
	}

	public String getCarNo() {
		return carNo;
	}

	public void setCarNo(String carNo) {
		this.carNo = carNo;
	}

	public String getOpts() {
		return opts;
	}

	public void setOpts(String opts) {
		this.opts = opts;
	}

	public Integer getSmPeople() {
		return smPeople;
	}

	public void setSmPeople(Integer smPeople) {
		this.smPeople = smPeople;
	}

	public List<Integer> getCh_type() {
		return ch_type;
	}

	public void setCh_type(List<Integer> ch_type) {
		this.ch_type = ch_type;
	}

	public int getCrtPage() {
		return crtPage;
	}

	public void setCrtPage(int crtPage) {
		this.crtPage = crtPage;
	}

	public int getStartRnum() {
		return startRnum;
	}

	public void setStartRnum(int startRnum) {
		this.startRnum = startRnum;
	}

	public int getEndRnum() {
		return endRnum;
	}

	public void setEndRnum(int endRnum) {
		this.endRnum = endRnum;
	}

	public int getListCnt() {
		return listCnt;
	}

	public void setListCnt(int listCnt) {
		this.listCnt = listCnt;
	}

	@Override
	public String toString() {
		return "CarpoolVo [no=" + no + ", userNo=" + userNo + ", mateNo=" + mateNo + ", sMateNo=" + sMateNo
				+ ", eMateNo=" + eMateNo + ", resvNo=" + resvNo + ", wayNo=" + wayNo + ", sWayNo=" + sWayNo
				+ ", eWayNo=" + eWayNo + ", sPlaceNo=" + sPlaceNo + ", ePlaceNo=" + ePlaceNo + ", point=" + point
				+ ", people=" + people + ", driverNo=" + driverNo + ", detailNo=" + detailNo + ", star=" + star
				+ ", avgStar=" + avgStar + ", spotMateNo=" + spotMateNo + ", sLat=" + sLat + ", sLng=" + sLng
				+ ", eLat=" + eLat + ", eLng=" + eLng + ", lat=" + lat + ", lng=" + lng + ", canRide=" + canRide
				+ ", id=" + id + ", userName=" + userName + ", startDate=" + startDate + ", endDate=" + endDate
				+ ", place=" + place + ", splace=" + splace + ", sSepPlace=" + sSepPlace + ", eplace=" + eplace
				+ ", eSepPlace=" + eSepPlace + ", latlng=" + latlng + ", detailOpt=" + detailOpt + ", type=" + type
				+ ", duration=" + duration + ", distance=" + distance + ", carName=" + carName + ", carPicture="
				+ carPicture + ", introduce=" + introduce + ", comments=" + comments + ", name=" + name + ", time="
				+ time + ", sTime=" + sTime + ", content=" + content + ", femaleDriver=" + femaleDriver + ", pet=" + pet
				+ ", phoneCharger=" + phoneCharger + ", nonSmoke=" + nonSmoke + ", useTrunk=" + useTrunk + ", carNo="
				+ carNo + ", opts=" + opts + ", smPeople=" + smPeople + ", ch_type=" + ch_type + ", crtPage=" + crtPage
				+ ", startRnum=" + startRnum + ", endRnum=" + endRnum + ", listCnt=" + listCnt + "]";
	}


	
}