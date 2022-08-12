package com.spotmate.vo;

public class DaylatlngVo {
	
	private double slat, slng, elat, elng, wlat1, wlng1, wlat2, wlng2, wlat3, wlng3, wlat4, wlng4, wlat5, wlng5;
	private String saddr, eaddr, waddr1, waddr2, waddr3, waddr4, waddr5;
	
	public DaylatlngVo() {}
	
	public DaylatlngVo(String saddr, String eaddr, double slat, double slng, double elat, double elng) {
		this.saddr = saddr;
		this.eaddr = eaddr;
		this.slat = slat;
		this.slng = slng;
		this.elat = elat;
		this.elng = elng;
	}
	
	public DaylatlngVo(String saddr, String eaddr, String waddr1, double slat, double slng, double elat, double elng
			, double wlat1, double wlng1) {
		this.saddr = saddr;
		this.eaddr = eaddr;
		this.waddr1 = waddr1;
		this.slat = slat;
		this.slng = slng;
		this.elat = elat;
		this.elng = elng;
		this.wlat1 = wlat1;
		this.wlng1 = wlng1;
	}
	
	public DaylatlngVo(String saddr, String eaddr, String waddr1, String waddr2, double slat, double slng, double elat, double elng
			, double wlat1, double wlng1, double wlat2, double wlng2) {
		this.saddr = saddr;
		this.eaddr = eaddr;
		this.waddr1 = waddr1;
		this.waddr2 = waddr2;
		this.slat = slat;
		this.slng = slng;
		this.elat = elat;
		this.elng = elng;
		this.wlat1 = wlat1;
		this.wlng1 = wlng1;
		this.wlat2 = wlat2;
		this.wlng2 = wlng2;
	}
	
	public DaylatlngVo(String saddr, String eaddr, String waddr1, String waddr2, String waddr3, double slat, double slng, double elat, double elng
			, double wlat1, double wlng1, double wlat2, double wlng2, double wlat3, double wlng3) {
		this.saddr = saddr;
		this.eaddr = eaddr;
		this.waddr1 = waddr1;
		this.waddr2 = waddr2;
		this.waddr3 = waddr3;
		this.slat = slat;
		this.slng = slng;
		this.elat = elat;
		this.elng = elng;
		this.wlat1 = wlat1;
		this.wlng1 = wlng1;
		this.wlat2 = wlat2;
		this.wlng2 = wlng2;
		this.wlat3 = wlat3;
		this.wlng3 = wlng3;
	}
	
	public DaylatlngVo(String saddr, String eaddr, String waddr1, String waddr2, String waddr3, String waddr4, double slat, double slng, double elat, double elng
			, double wlat1, double wlng1, double wlat2, double wlng2, double wlat3, double wlng3, double wlat4, double wlng4) {
		this.saddr = saddr;
		this.eaddr = eaddr;
		this.waddr1 = waddr1;
		this.waddr2 = waddr2;
		this.waddr3 = waddr3;
		this.waddr4 = waddr4;
		this.slat = slat;
		this.slng = slng;
		this.elat = elat;
		this.elng = elng;
		this.wlat1 = wlat1;
		this.wlng1 = wlng1;
		this.wlat2 = wlat2;
		this.wlng2 = wlng2;
		this.wlat3 = wlat3;
		this.wlng3 = wlng3;
		this.wlat4 = wlat4;
		this.wlng4 = wlng4;
	}
	
	public DaylatlngVo(String saddr, String eaddr, String waddr1, String waddr2, String waddr3, String waddr4, String waddr5, double slat, double slng, double elat, double elng
			, double wlat1, double wlng1, double wlat2, double wlng2, double wlat3, double wlng3, double wlat4, double wlng4, double wlat5, double wlng5) {
		this.saddr = saddr;
		this.eaddr = eaddr;
		this.waddr1 = waddr1;
		this.waddr2 = waddr2;
		this.waddr3 = waddr3;
		this.waddr4 = waddr4;
		this.waddr5 = waddr5;
		this.slat = slat;
		this.slng = slng;
		this.elat = elat;
		this.elng = elng;
		this.wlat1 = wlat1;
		this.wlng1 = wlng1;
		this.wlat2 = wlat2;
		this.wlng2 = wlng2;
		this.wlat3 = wlat3;
		this.wlng3 = wlng3;
		this.wlat4 = wlat4;
		this.wlng4 = wlng4;
		this.wlat5 = wlat5;
		this.wlng5 = wlng5;
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

	public double getWlat1() {
		return wlat1;
	}

	public void setWlat1(double wlat1) {
		this.wlat1 = wlat1;
	}

	public double getWlng1() {
		return wlng1;
	}

	public void setWlng1(double wlng1) {
		this.wlng1 = wlng1;
	}

	public double getWlat2() {
		return wlat2;
	}

	public void setWlat2(double wlat2) {
		this.wlat2 = wlat2;
	}

	public double getWlng2() {
		return wlng2;
	}

	public void setWlng2(double wlng2) {
		this.wlng2 = wlng2;
	}

	public double getWlat3() {
		return wlat3;
	}

	public void setWlat3(double wlat3) {
		this.wlat3 = wlat3;
	}

	public double getWlng3() {
		return wlng3;
	}

	public void setWlng3(double wlng3) {
		this.wlng3 = wlng3;
	}

	public double getWlat4() {
		return wlat4;
	}

	public void setWlat4(double wlat4) {
		this.wlat4 = wlat4;
	}

	public double getWlng4() {
		return wlng4;
	}

	public void setWlng4(double wlng4) {
		this.wlng4 = wlng4;
	}

	public double getWlat5() {
		return wlat5;
	}

	public void setWlat5(double wlat5) {
		this.wlat5 = wlat5;
	}

	public double getWlng5() {
		return wlng5;
	}

	public void setWlng5(double wlng5) {
		this.wlng5 = wlng5;
	}

	public String getSaddr() {
		return saddr;
	}

	public void setSaddr(String saddr) {
		this.saddr = saddr;
	}

	public String getEaddr() {
		return eaddr;
	}

	public void setEaddr(String eaddr) {
		this.eaddr = eaddr;
	}

	public String getWaddr1() {
		return waddr1;
	}

	public void setWaddr1(String waddr1) {
		this.waddr1 = waddr1;
	}

	public String getWaddr2() {
		return waddr2;
	}

	public void setWaddr2(String waddr2) {
		this.waddr2 = waddr2;
	}

	public String getWaddr3() {
		return waddr3;
	}

	public void setWaddr3(String waddr3) {
		this.waddr3 = waddr3;
	}

	public String getWaddr4() {
		return waddr4;
	}

	public void setWaddr4(String waddr4) {
		this.waddr4 = waddr4;
	}

	public String getWaddr5() {
		return waddr5;
	}

	public void setWaddr5(String waddr5) {
		this.waddr5 = waddr5;
	}

	@Override
	public String toString() {
		return "DaylatlngVo [slat=" + slat + ", slng=" + slng + ", elat=" + elat + ", elng=" + elng + ", wlat1=" + wlat1
				+ ", wlng1=" + wlng1 + ", wlat2=" + wlat2 + ", wlng2=" + wlng2 + ", wlat3=" + wlat3 + ", wlng3=" + wlng3
				+ ", wlat4=" + wlat4 + ", wlng4=" + wlng4 + ", wlat5=" + wlat5 + ", wlng5=" + wlng5 + ", saddr=" + saddr
				+ ", eaddr=" + eaddr + ", waddr1=" + waddr1 + ", waddr2=" + waddr2 + ", waddr3=" + waddr3 + ", waddr4="
				+ waddr4 + ", waddr5=" + waddr5 + "]";
	}
}

