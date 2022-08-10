package com.spotmate.vo;

public class LatlngVo {

	private double slat, slng, elat, elng;
	private String splace, eplace;
	
	
	public LatlngVo() {
	}
	
	public LatlngVo(String splace, String eplace, double slat, double slng, double elat, double elng) {
		this.splace = splace;
		this.eplace = eplace;
		this.slat = slat;
		this.slng = slng;
		this.elat = elat;
		this.elng = elng;
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

	@Override
	public String toString() {
		return "LatlngVo [slat=" + slat + ", slng=" + slng + ", elat=" + elat + ", elng=" + elng + ", splace=" + splace
				+ ", eplace=" + eplace + "]";
	}
}
