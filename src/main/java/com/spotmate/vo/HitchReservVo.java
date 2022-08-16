package com.spotmate.vo;

public class HitchReservVo {
	
	private int mateNo, people, canRide;
	
	public HitchReservVo() {}
	
	public HitchReservVo(int mateNo, int people, int canRide) {
		this.mateNo = mateNo;
		this.people = people;
		this.canRide = canRide;
	}

	public int getCanRide() {
		return canRide;
	}

	public void setCanRide(int canRide) {
		this.canRide = canRide;
	}

	public int getMateNo() {
		return mateNo;
	}

	public void setMateNo(int mateNo) {
		this.mateNo = mateNo;
	}

	public int getPeople() {
		return people;
	}

	public void setPeople(int people) {
		this.people = people;
	}

	@Override
	public String toString() {
		return "HitchReservVo [mateNo=" + mateNo + ", people=" + people + ", canRide=" + canRide + "]";
	}


}
