package com.spotmate.vo;

import java.util.List;

public class DriverLicenseVo {

	// 필드
	private String username, licensetype, c_Model, c_file, c_color, introduce, userBD, dl, c_num;

	private int carNo, userNo, num_PA;

	private List<Integer> ch_type;

	// 생성자
	public DriverLicenseVo() {

	}

	public DriverLicenseVo(String username, String licensetype, String c_Model, String c_file, String c_color,
			String introduce, String userBD, String dl, String c_num, int carNo, int userNo, int num_PA,
			List<Integer> ch_type) {
		super();
		this.username = username;
		this.licensetype = licensetype;
		this.c_Model = c_Model;
		this.c_file = c_file;
		this.c_color = c_color;
		this.introduce = introduce;
		this.userBD = userBD;
		this.dl = dl;
		this.c_num = c_num;
		this.carNo = carNo;
		this.userNo = userNo;
		this.num_PA = num_PA;
		this.ch_type = ch_type;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getLicensetype() {
		return licensetype;
	}

	public void setLicensetype(String licensetype) {
		this.licensetype = licensetype;
	}

	public String getC_Model() {
		return c_Model;
	}

	public void setC_Model(String c_Model) {
		this.c_Model = c_Model;
	}

	public String getC_file() {
		return c_file;
	}

	public void setC_file(String c_file) {
		this.c_file = c_file;
	}

	public String getC_color() {
		return c_color;
	}

	public void setC_color(String c_color) {
		this.c_color = c_color;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public String getUserBD() {
		return userBD;
	}

	public void setUserBD(String userBD) {
		this.userBD = userBD;
	}

	public String getDl() {
		return dl;
	}

	public void setDl(String dl) {
		this.dl = dl;
	}

	public String getC_num() {
		return c_num;
	}

	public void setC_num(String c_num) {
		this.c_num = c_num;
	}

	public int getCarNo() {
		return carNo;
	}

	public void setCarNo(int carNo) {
		this.carNo = carNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getNum_PA() {
		return num_PA;
	}

	public void setNum_PA(int num_PA) {
		this.num_PA = num_PA;
	}

	public List<Integer> getCh_type() {
		return ch_type;
	}

	public void setCh_type(List<Integer> ch_type) {
		this.ch_type = ch_type;
	}

	@Override
	public String toString() {
		return "DriverLicenseVo [username=" + username + ", licensetype=" + licensetype + ", c_Model=" + c_Model
				+ ", c_file=" + c_file + ", c_color=" + c_color + ", introduce=" + introduce + ", userBD=" + userBD
				+ ", dl=" + dl + ", c_num=" + c_num + ", carNo=" + carNo + ", userNo=" + userNo + ", num_PA=" + num_PA
				+ ", ch_type=" + ch_type + "]";
	}

}