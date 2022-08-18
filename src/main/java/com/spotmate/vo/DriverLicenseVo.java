package com.spotmate.vo;

import java.util.List;

public class DriverLicenseVo {

	// 필드
	private String username, licensetype, carnum, c_Model, c_file, c_color, introduce;

	private int userBD, dl, c_num, num_PA;

	private List<String> ch_type;

	

	// 생성자
	public DriverLicenseVo() {
		
	}

	public DriverLicenseVo(String username, String licensetype, String carnum, String c_Model, String c_file,
			String c_color, String introduce, int userBD, int dl, int c_num, int num_PA, List<String> ch_type) {
		super();
		this.username = username;
		this.licensetype = licensetype;
		this.carnum = carnum;
		this.c_Model = c_Model;
		this.c_file = c_file;
		this.c_color = c_color;
		this.introduce = introduce;
		this.userBD = userBD;
		this.dl = dl;
		this.c_num = c_num;
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

	public String getCarnum() {
		return carnum;
	}

	public void setCarnum(String carnum) {
		this.carnum = carnum;
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

	public int getUserBD() {
		return userBD;
	}

	public void setUserBD(int userBD) {
		this.userBD = userBD;
	}

	public int getDl() {
		return dl;
	}

	public void setDl(int dl) {
		this.dl = dl;
	}

	public int getC_num() {
		return c_num;
	}

	public void setC_num(int c_num) {
		this.c_num = c_num;
	}

	public int getNum_PA() {
		return num_PA;
	}

	public void setNum_PA(int num_PA) {
		this.num_PA = num_PA;
	}

	public List<String> getCh_type() {
		return ch_type;
	}

	public void setCh_type(List<String> ch_type) {
		this.ch_type = ch_type;
	}

	@Override
	public String toString() {
		return "DriverLicenseVo [username=" + username + ", licensetype=" + licensetype + ", carnum=" + carnum
				+ ", c_Model=" + c_Model + ", c_file=" + c_file + ", c_color=" + c_color + ", introduce=" + introduce
				+ ", userBD=" + userBD + ", dl=" + dl + ", c_num=" + c_num + ", num_PA=" + num_PA + ", ch_type="
				+ ch_type + "]";
	}


}