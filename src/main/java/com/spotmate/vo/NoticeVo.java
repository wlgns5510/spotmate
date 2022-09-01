package com.spotmate.vo;

public class NoticeVo {
	
	
	private int no, hit;
	private String regDate, type, title, admin, content, manage;
	
	public NoticeVo() {}
	
	public NoticeVo(int no, int hit, String regDate, String type, String title, String admin, String content, String manage) {
		super();
		this.no = no;
		this.hit = hit;
		this.regDate = regDate;
		this.type = type;
		this.title = title;
		this.admin = admin;
		this.content = content;
		this.manage = manage;
	}
	
	
	
	public String getManage() {
		return manage;
	}

	public void setManage(String manage) {
		this.manage = manage;
	}

	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
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
	public String getAdmin() {
		return admin;
	}
	public void setAdmin(String admin) {
		this.admin = admin;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "NoticeVo [no=" + no + ", hit=" + hit + ", regDate=" + regDate + ", type=" + type + ", title=" + title
				+ ", admin=" + admin + ", content=" + content + ", manage=" + manage + "]";
	}
	
	
	
}
