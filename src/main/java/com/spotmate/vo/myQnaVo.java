package com.spotmate.vo;

public class myQnaVo {

	//필드 
	private String type, title, regDate, content, status;
	private int userNo, no;
	
	
	//생성자
	public myQnaVo() {
		
	}
	public myQnaVo(String type, String status, String title, String regDate, String content, int userNo, int no) {
		super();
		this.type = type;
		this.title = title;
		this.regDate = regDate;
		this.content = content;
		this.userNo = userNo;
		this.no = no;
		this.status = status;
	}
	
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	@Override
	public String toString() {
		return "myQnaVo [type=" + type + ", title=" + title + ", regDate=" + regDate + ", content=" + content
				+ ", userNo=" + userNo + ", no=" + no + "]";
	}
	
}