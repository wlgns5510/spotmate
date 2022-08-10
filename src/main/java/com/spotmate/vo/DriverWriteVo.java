package com.spotmate.vo;

public class DriverWriteVo {

	private String sdate, edate, splace, eplace, fare, nosmoke, phoneCharge, drivergender, silence, pet, introduce, dur,
			dis, latlng, comments, stime;
	private int people, type;
	private double slat, slng, elat, elng;

	public DriverWriteVo() {
	}

	public DriverWriteVo(String sdate, String edate, String splace, String eplace, String fare, String nosmoke,
			String drivergender, String phoneCharge, String silence, String pet, String introduce, int people,
			double slat, double slng, double elat, double elng, String latlng, String dur, String dis, int type,
			String comments, String stime) {
		this.sdate = sdate;
		this.edate = edate;
		this.splace = splace;
		this.eplace = eplace;
		this.fare = fare;
		this.nosmoke = nosmoke;
		this.phoneCharge = phoneCharge;
		this.drivergender = drivergender;
		this.silence = silence;
		this.pet = pet;
		this.introduce = introduce;
		this.people = people;
		this.slat = slat;
		this.slng = slng;
		this.elat = elat;
		this.elng = elng;
		this.latlng = latlng;
		this.dur = dur;
		this.dis = dis;
		this.type = type;
		this.comments = comments;
		this.stime = stime;
	}

	public String getSdate() {
		return sdate;
	}

	public void setSdate(String sdate) {
		this.sdate = sdate;
	}

	public String getEdate() {
		return edate;
	}

	public void setEdate(String edate) {
		this.edate = edate;
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

	public String getPhoneCharge() {
		return phoneCharge;
	}

	public void setPhoneCharge(String phoneCharge) {
		this.phoneCharge = phoneCharge;
	}

	public String getDrivergender() {
		return drivergender;
	}

	public void setDrivergender(String drivergender) {
		this.drivergender = drivergender;
	}

	public String getSilence() {
		return silence;
	}

	public void setSilence(String silence) {
		this.silence = silence;
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

	public String getLatlng() {
		return latlng;
	}

	public void setLatlng(String latlng) {
		this.latlng = latlng;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public String getStime() {
		return stime;
	}

	public void setStime(String stime) {
		this.stime = stime;
	}

	public int getPeople() {
		return people;
	}

	public void setPeople(int people) {
		this.people = people;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public double getSlat() {
		return slat;
	}

	public void setSlat(double slat) {
		this.slat = slat;
	}

	public double getSlng() {
		return slng;
	}

	public void setSlng(double slng) {
		this.slng = slng;
	}

	public double getElat() {
		return elat;
	}

	public void setElat(double elat) {
		this.elat = elat;
	}

	public double getElng() {
		return elng;
	}

	public void setElng(double elng) {
		this.elng = elng;
	}

	@Override
	public String toString() {
		return "DriverWriteVo [sdate=" + sdate + ", edate=" + edate + ", splace=" + splace + ", eplace=" + eplace
				+ ", fare=" + fare + ", nosmoke=" + nosmoke + ", phoneCharge=" + phoneCharge + ", drivergender="
				+ drivergender + ", silence=" + silence + ", pet=" + pet + ", introduce=" + introduce + ", dur=" + dur
				+ ", dis=" + dis + ", comments=" + comments + ", stime=" + stime + ", people="
				+ people + ", type=" + type + ", slat=" + slat + ", slng=" + slng + ", elat=" + elat + ", elng=" + elng
				+ ", latlng=" + latlng + "]";
	}

}
