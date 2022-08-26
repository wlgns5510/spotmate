package com.spotmate.vo;

public class CancelChkVo {
	
	private int mateNo, result;
	
	public CancelChkVo() {}
	
	public CancelChkVo(int mateNo, int result) {
		this.mateNo = mateNo;
		this.result = result;
	}

	public int getMateNo() {
		return mateNo;
	}

	public void setMateNo(int mateNo) {
		this.mateNo = mateNo;
	}

	public int getResult() {
		return result;
	}

	public void setResult(int result) {
		this.result = result;
	}

	@Override
	public String toString() {
		return "CancelChkVo [mateNo=" + mateNo + ", result=" + result + "]";
	}
	
}
