package com.spotmate.vo;

public class WaylatlngVo {

	private double slat, slng, elat, elng, w2lat, w2lng, w3lat, w3lng, w4lat, w4lng, w5lat, w5lng, w6lat, w6lng;
	private String splace, eplace, w2p, w3p, w4p, w5p, w6p;

	public WaylatlngVo() {
	}

	public WaylatlngVo(String splace, String eplace, double slat, double slng, double elat, double elng) {
		this.splace = splace;
		this.eplace = eplace;
		this.slat = slat;
		this.slng = slng;
		this.elat = elat;
		this.elng = elng;
	}

	public WaylatlngVo(String splace, String eplace, String w2p, double slat, double slng, double elat, double elng, double w2lat,
			double w2lng) {
		this.splace = splace;
		this.eplace = eplace;
		this.slat = slat;
		this.slng = slng;
		this.elat = elat;
		this.elng = elng;
		this.w2lat = w2lat;
		this.w2lng = w2lng;
		this.w2p = w2p;
	}

	public WaylatlngVo(String splace, String eplace, String w2p, String w3p, double slat, double slng, double elat, double elng, double w2lat,
			double w2lng, double w3lat, double w3lng) {
		this.splace = splace;
		this.eplace = eplace;
		this.slat = slat;
		this.slng = slng;
		this.elat = elat;
		this.elng = elng;
		this.w2lat = w2lat;
		this.w2lng = w2lng;
		this.w3lat = w3lat;
		this.w3lng = w3lng;
		this.w2p = w2p;
		this.w3p = w3p;
	}

	public WaylatlngVo(String splace, String eplace, String w2p, String w3p, String w4p, double slat, double slng, double elat, double elng, double w2lat,
			double w2lng, double w3lat, double w3lng, double w4lat, double w4lng) {
		this.splace = splace;
		this.eplace = eplace;
		this.slat = slat;
		this.slng = slng;
		this.elat = elat;
		this.elng = elng;
		this.w2lat = w2lat;
		this.w2lng = w2lng;
		this.w3lat = w3lat;
		this.w3lng = w3lng;
		this.w4lat = w4lat;
		this.w4lng = w4lng;
		this.w2p = w2p;
		this.w3p = w3p;
		this.w4p = w4p;
	}

	public WaylatlngVo(String splace, String eplace, String w2p, String w3p, String w4p, String w5p, double slat, double slng, double elat, double elng, double w2lat,
			double w2lng, double w3lat, double w3lng, double w4lat, double w4lng, double w5lat, double w5lng) {
		this.splace = splace;
		this.eplace = eplace;
		this.slat = slat;
		this.slng = slng;
		this.elat = elat;
		this.elng = elng;
		this.w2lat = w2lat;
		this.w2lng = w2lng;
		this.w3lat = w3lat;
		this.w3lng = w3lng;
		this.w4lat = w4lat;
		this.w4lng = w4lng;
		this.w5lat = w5lat;
		this.w5lng = w5lng;
		this.w2p = w2p;
		this.w3p = w3p;
		this.w4p = w4p;
		this.w5p = w5p;
	}

	public WaylatlngVo(String splace, String eplace, String w2p, String w3p, String w4p, String w5p, String w6p, double slat, double slng, double elat, double elng, double w2lat,
			double w2lng, double w3lat, double w3lng, double w4lat, double w4lng, double w5lat, double w5lng,
			double w6lat, double w6lng) {
		this.splace = splace;
		this.eplace = eplace;
		this.slat = slat;
		this.slng = slng;
		this.elat = elat;
		this.elng = elng;
		this.w2lat = w2lat;
		this.w2lng = w2lng;
		this.w3lat = w3lat;
		this.w3lng = w3lng;
		this.w4lat = w4lat;
		this.w4lng = w4lng;
		this.w5lat = w5lat;
		this.w5lng = w5lng;
		this.w6lat = w6lat;
		this.w6lng = w6lng;
		this.w2p = w2p;
		this.w3p = w3p;
		this.w4p = w4p;
		this.w5p = w5p;
		this.w6p = w6p;
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

	public double getW2lat() {
		return w2lat;
	}

	public void setW2lat(double w2lat) {
		this.w2lat = w2lat;
	}

	public double getW2lng() {
		return w2lng;
	}

	public void setW2lng(double w2lng) {
		this.w2lng = w2lng;
	}

	public double getW3lat() {
		return w3lat;
	}

	public void setW3lat(double w3lat) {
		this.w3lat = w3lat;
	}

	public double getW3lng() {
		return w3lng;
	}

	public void setW3lng(double w3lng) {
		this.w3lng = w3lng;
	}

	public double getW4lat() {
		return w4lat;
	}

	public void setW4lat(double w4lat) {
		this.w4lat = w4lat;
	}

	public double getW4lng() {
		return w4lng;
	}

	public void setW4lng(double w4lng) {
		this.w4lng = w4lng;
	}

	public double getW5lat() {
		return w5lat;
	}

	public void setW5lat(double w5lat) {
		this.w5lat = w5lat;
	}

	public double getW5lng() {
		return w5lng;
	}

	public void setW5lng(double w5lng) {
		this.w5lng = w5lng;
	}

	public double getW6lat() {
		return w6lat;
	}

	public void setW6lat(double w6lat) {
		this.w6lat = w6lat;
	}

	public double getW6lng() {
		return w6lng;
	}

	public void setW6lng(double w6lng) {
		this.w6lng = w6lng;
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

	public String getW2p() {
		return w2p;
	}

	public void setW2p(String w2p) {
		this.w2p = w2p;
	}

	public String getW3p() {
		return w3p;
	}

	public void setW3p(String w3p) {
		this.w3p = w3p;
	}

	public String getW4p() {
		return w4p;
	}

	public void setW4p(String w4p) {
		this.w4p = w4p;
	}

	public String getW5p() {
		return w5p;
	}

	public void setW5p(String w5p) {
		this.w5p = w5p;
	}

	public String getW6p() {
		return w6p;
	}

	public void setW6p(String w6p) {
		this.w6p = w6p;
	}

	@Override
	public String toString() {
		return "WaylatlngVo [slat=" + slat + ", slng=" + slng + ", elat=" + elat + ", elng=" + elng + ", w2lat=" + w2lat
				+ ", w2lng=" + w2lng + ", w3lat=" + w3lat + ", w3lng=" + w3lng + ", w4lat=" + w4lat + ", w4lng=" + w4lng
				+ ", w5lat=" + w5lat + ", w5lng=" + w5lng + ", w6lat=" + w6lat + ", w6lng=" + w6lng + ", splace="
				+ splace + ", eplace=" + eplace + ", w2p=" + w2p + ", w3p=" + w3p + ", w4p=" + w4p + ", w5p=" + w5p
				+ ", w6p=" + w6p + "]";
	}

}
