package com.spotmate.vo;

public class StartEndTimeVo {
	private String start, end;
	
	public StartEndTimeVo() {}
	
	public StartEndTimeVo(String start, String end) {
		this.start = start;
		this.end = end;
	}

	
	public String getStart() {
		return start;
	}

	public void setStart(String start) {
		this.start = start;
	}

	public String getEnd() {
		return end;
	}

	public void setEnd(String end) {
		this.end = end;
	}

	@Override
	public String toString() {
		return "StartEndTimeVo [start=" + start + ", end=" + end + "]";
	}

	
}
