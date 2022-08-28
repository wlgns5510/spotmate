package com.spotmate.vo;

public class myQnaVo {

	//필드 
	private String qna_contents, qna_title;
	private int qna_type;

	//생성자 
	public myQnaVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public myQnaVo(String qna_contents, String qna_title, int qna_type) {
		super();
		this.qna_contents = qna_contents;
		this.qna_title = qna_title;
		this.qna_type = qna_type;
	}
	
	//gs
	public String getQna_contents() {
		return qna_contents;
	}
	public void setQna_contents(String qna_contents) {
		this.qna_contents = qna_contents;
	}
	public String getQna_title() {
		return qna_title;
	}
	public void setQna_title(String qna_title) {
		this.qna_title = qna_title;
	}
	public int getQna_type() {
		return qna_type;
	}
	public void setQna_type(int qna_type) {
		this.qna_type = qna_type;
	}
	
	@Override
	public String toString() {
		return "myQnaVo [qna_contents=" + qna_contents + ", qna_title=" + qna_title + ", qna_type=" + qna_type + "]";
	}

	
}
