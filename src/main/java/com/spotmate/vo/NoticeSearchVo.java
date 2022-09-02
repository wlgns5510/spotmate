package com.spotmate.vo;

public class NoticeSearchVo {
	
	private String startDate, endDate, noti_option, noticeSearch;

	public NoticeSearchVo() {}

	public NoticeSearchVo(String startDate, String endDate, String noti_option, String noticeSearch) {
		super();
		this.startDate = startDate;
		this.endDate = endDate;
		this.noti_option = noti_option;
		this.noticeSearch = noticeSearch;
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

	public String getNoti_option() {
		return noti_option;
	}

	public void setNoti_option(String noti_option) {
		this.noti_option = noti_option;
	}

	public String getNoticeSearch() {
		return noticeSearch;
	}

	public void setNoticeSearch(String noticeSearch) {
		this.noticeSearch = noticeSearch;
	}

	@Override
	public String toString() {
		return "NoticeSearchVo [startDate=" + startDate + ", endDate=" + endDate + ", noti_option=" + noti_option
				+ ", noticeSearch=" + noticeSearch + "]";
	}
	
	
}
