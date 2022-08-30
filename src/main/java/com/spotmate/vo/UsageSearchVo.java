package com.spotmate.vo;

public class UsageSearchVo {
	
	private String sdate, edate, type, status, nowTime, startdate;
	
	public UsageSearchVo() {}

	public UsageSearchVo(String sdate, String edate, String type, String status, String nowTime, String startdate) {
		this.sdate = sdate;
		this.edate = edate;
		this.type = type;
		this.status = status;
		this.nowTime = nowTime;
	}
	
	



	public String getStartdate() {
		return startdate;
	}

	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}

	public String getNowTime() {
		return nowTime;
	}

	public void setNowTime(String nowTime) {
		this.nowTime = nowTime;
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

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "UsageSearchVo [sdate=" + sdate + ", edate=" + edate + ", type=" + type + ", status=" + status
				+ ", nowTime=" + nowTime + ", startdate=" + startdate + "]";
	}


}
