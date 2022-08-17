package com.spotmate.vo;

import java.util.List;

public class DriverLicenseVo {

	// 필드
	private String username, dl_Type, nosmoke, phoneCharge, drivergender, silence, pet, introduce, c_Model, c_file,
			carnum, c_color;
	private int usernum, dl, c_num, num_PA;

	private List<String> ch_type;
	
	// 생성자
	



	public DriverLicenseVo() {
		super();
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getDl_Type() {
		return dl_Type;
	}

	public void setDl_Type(String dl_Type) {
		this.dl_Type = dl_Type;
	}

	public String getNosmoke() {
		return nosmoke;
	}

	public void setNosmoke(String nosmoke) {
		this.nosmoke = nosmoke;
	}

	public String getPhoneCharge() {
		return phoneCharge;
	}

	public void setPhoneCharge(String phoneCharge) {
		this.phoneCharge = phoneCharge;
	}

	public String getDrivergender() {
		return drivergender;
	}

	public void setDrivergender(String drivergender) {
		this.drivergender = drivergender;
	}

	public String getSilence() {
		return silence;
	}

	public void setSilence(String silence) {
		this.silence = silence;
	}

	public String getPet() {
		return pet;
	}

	public void setPet(String pet) {
		this.pet = pet;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
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

	public String getCarnum() {
		return carnum;
	}

	public void setCarnum(String carnum) {
		this.carnum = carnum;
	}

	public String getC_color() {
		return c_color;
	}

	public void setC_color(String c_color) {
		this.c_color = c_color;
	}

	public int getUsernum() {
		return usernum;
	}

	public void setUsernum(int usernum) {
		this.usernum = usernum;
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
		return "DriverLicenseVo [username=" + username + ", dl_Type=" + dl_Type + ", nosmoke=" + nosmoke
				+ ", phoneCharge=" + phoneCharge + ", drivergender=" + drivergender + ", silence=" + silence + ", pet="
				+ pet + ", introduce=" + introduce + ", c_Model=" + c_Model + ", c_file=" + c_file + ", carnum="
				+ carnum + ", c_color=" + c_color + ", usernum=" + usernum + ", dl=" + dl + ", c_num=" + c_num
				+ ", num_PA=" + num_PA + ", ch_type=" + ch_type + "]";
	}

	
	
}
