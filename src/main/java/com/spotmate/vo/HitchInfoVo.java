package com.spotmate.vo;

public class HitchInfoVo {

	private String nowaddr;
	private int people, mateNo;

	public HitchInfoVo() {
	}

	public HitchInfoVo(String nowaddr, int people, int mateNo) {
		this.nowaddr = nowaddr;
		this.people = people;
		this.mateNo = mateNo;
	}

	public int getMateNo() {
		return mateNo;
	}

	public void setMateNo(int mateNo) {
		this.mateNo = mateNo;
	}

	public String getNowaddr() {
		return nowaddr;
	}

	public void setNowaddr(String nowaddr) {
		this.nowaddr = nowaddr;
	}

	public int getPeople() {
		return people;
	}

	public void setPeople(int people) {
		this.people = people;
	}

	@Override
	public String toString() {
		return "HitchInfoVo [nowaddr=" + nowaddr + ", people=" + people + ", mateNo=" + mateNo + "]";
	}

}
