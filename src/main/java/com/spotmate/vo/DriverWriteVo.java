package com.spotmate.vo;

import java.util.ArrayList;
import java.util.List;

public class DriverWriteVo {

	private String startdate, enddate, splace, eplace, fare, nosmoke, phoneCharge, drivergender, silence, pet,
			introduce, dur, dis;
	private int people;
	private double slat, slng, elat, elng;
	private List<Double> latlng = new ArrayList<Double>();
	

	public DriverWriteVo() {
	}

	public DriverWriteVo(String startdate, String enddate, String splace, String eplace, String fare, String nosmoke,
			String drivergender, String phoneCharge, String silence, String pet, String introduce, int people,
			double slat, double slng, double elat, double elng, List<Double> latlng, String dur, String dis) {
		this.startdate = startdate;
		this.enddate = enddate;
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
	}

	public String getStartdate() {
		return startdate;
	}

	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}

	public String getEnddate() {
		return enddate;
	}

	public void setEnddate(String enddate) {
		this.enddate = enddate;
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

	public int getPeople() {
		return people;
	}

	public void setPeople(int people) {
		this.people = people;
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

	public List<Double> getLatlng() {
		return latlng;
	}

	public void setLatlng(List<Double> latlng) {
		this.latlng = latlng;
	}

	@Override
	public String toString() {
		return "DriverWriteVo [startdate=" + startdate + ", enddate=" + enddate + ", splace=" + splace + ", eplace="
				+ eplace + ", fare=" + fare + ", nosmoke=" + nosmoke + ", phoneCharge=" + phoneCharge
				+ ", drivergender=" + drivergender + ", silence=" + silence + ", pet=" + pet + ", introduce="
				+ introduce + ", dur=" + dur + ", dis=" + dis + ", people=" + people + ", slat=" + slat + ", slng="
				+ slng + ", elat=" + elat + ", elng=" + elng + ", latlng=" + latlng + "]";
	}

}
