package com.spotmate.vo;

public class DriverWriteVo {

	private String sdate1, edate1, splace1, eplace1, fare, nosmoke, phonecharge, femaledriver, trunk, pet, introduce, dur,
			dis, latlng1, comments, stime1, etime1, type;
	private int people, intfare, no, userNo, carNo, intdur;
	private double slat1, slng1, elat1, elng1;

	public DriverWriteVo() {
	}

	public DriverWriteVo(String sdate, String edate, String splace, String eplace, String fare, String nosmoke,
			String femaledriver, String phonecharge, String trunk, String pet, String introduce, int people, int userNo, int carNo, int intdur,
			double slat, double slng, double elat, double elng, String latlng, String dur, String dis, String type,
			String comments, String stime, String etime) {
		this.intdur = intdur;
		this.sdate1 = sdate;
		this.edate1 = edate;
		this.splace1 = splace;
		this.eplace1 = eplace;
		this.fare = fare;
		this.userNo = userNo;
		this.nosmoke = nosmoke;
		this.phonecharge = phonecharge;
		this.femaledriver = femaledriver;
		this.trunk = trunk;
		this.pet = pet;
		this.introduce = introduce;
		this.people = people;
		this.slat1 = slat;
		this.slng1 = slng;
		this.elat1 = elat;
		this.elng1 = elng;
		this.latlng1 = latlng;
		this.dur = dur;
		this.dis = dis;
		this.type = type;
		this.comments = comments;
		this.stime1 = stime;
		this.etime1 = etime;
	}
	
	
	
	
	
	public String getEtime1() {
		return etime1;
	}

	public void setEtime1(String etime1) {
		this.etime1 = etime1;
	}

	public int getIntdur() {
		return intdur;
	}

	public void setIntdur(int intdur) {
		this.intdur = intdur;
	}

	public int getCarNo() {
		return carNo;
	}

	public void setCarNo(int carNo) {
		this.carNo = carNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getPhonecharge() {
		return phonecharge;
	}

	public void setPhonecharge(String phonecharge) {
		this.phonecharge = phonecharge;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getIntfare() {
		return intfare;
	}

	public void setIntfare(int intfare) {
		this.intfare = intfare;
	}

	public String getSdate1() {
		return sdate1;
	}

	public void setSdate1(String sdate1) {
		this.sdate1 = sdate1;
	}

	public String getEdate1() {
		return edate1;
	}

	public void setEdate1(String edate1) {
		this.edate1 = edate1;
	}

	public String getSplace1() {
		return splace1;
	}

	public void setSplace1(String splace1) {
		this.splace1 = splace1;
	}

	public String getEplace1() {
		return eplace1;
	}

	public void setEplace1(String eplace1) {
		this.eplace1 = eplace1;
	}

	public String getFare() {
		return fare;
	}

	public void setFare(String fare) {
		this.fare = fare;
	}

	public String getNosmoke() {
		return nosmoke;
	}

	public void setNosmoke(String nosmoke) {
		this.nosmoke = nosmoke;
	}

	public String getFemaledriver() {
		return femaledriver;
	}

	public void setFemaledriver(String femaledriver) {
		this.femaledriver = femaledriver;
	}

	public String getTrunk() {
		return trunk;
	}

	public void setTrunk(String trunk) {
		this.trunk = trunk;
	}

	public String getPet() {
		return pet;
	}

	public void setPet(String pet) {
		this.pet = pet;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public String getDur() {
		return dur;
	}

	public void setDur(String dur) {
		this.dur = dur;
	}

	public String getDis() {
		return dis;
	}

	public void setDis(String dis) {
		this.dis = dis;
	}

	public String getLatlng1() {
		return latlng1;
	}

	public void setLatlng1(String latlng1) {
		this.latlng1 = latlng1;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public String getStime1() {
		return stime1;
	}

	public void setStime1(String stime1) {
		this.stime1 = stime1;
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

	public double getSlat1() {
		return slat1;
	}

	public void setSlat1(double slat1) {
		this.slat1 = slat1;
	}

	public double getSlng1() {
		return slng1;
	}

	public void setSlng1(double slng1) {
		this.slng1 = slng1;
	}

	public double getElat1() {
		return elat1;
	}

	public void setElat1(double elat1) {
		this.elat1 = elat1;
	}

	public double getElng1() {
		return elng1;
	}

	public void setElng1(double elng1) {
		this.elng1 = elng1;
	}

	@Override
	public String toString() {
		return "DriverWriteVo [sdate1=" + sdate1 + ", edate1=" + edate1 + ", splace1=" + splace1 + ", eplace1="
				+ eplace1 + ", fare=" + fare + ", nosmoke=" + nosmoke + ", phonecharge=" + phonecharge
				+ ", femaledriver=" + femaledriver + ", trunk=" + trunk + ", pet=" + pet + ", introduce=" + introduce
				+ ", dur=" + dur + ", dis=" + dis + ", latlng1=" + latlng1 + ", comments=" + comments + ", stime1="
				+ stime1 + ", etime1=" + etime1 + ", type=" + type + ", people=" + people + ", intfare=" + intfare
				+ ", no=" + no + ", userNo=" + userNo + ", carNo=" + carNo + ", intdur=" + intdur + ", slat1=" + slat1
				+ ", slng1=" + slng1 + ", elat1=" + elat1 + ", elng1=" + elng1 + "]";
	}


}
