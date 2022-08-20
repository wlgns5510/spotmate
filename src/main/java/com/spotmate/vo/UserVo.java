package com.spotmate.vo;

public class UserVo {
	
	private int no;
	private String id, pw, name, email, phone, address, gender, birth, licenseNo, licenseType, year, month, day;
	
	public UserVo() {
		
	}
	
	public UserVo(String id, String pw) {
		super();
		this.id = id;
		this.pw = pw;
	}

	public UserVo(int no, String id, String pw, String name, String phone, String address, String gender, String birth, String licenseNo, String licenseType) {
	      this.no = no;
	      this.id = id;
	      this.pw = pw;
	      this.name = name;
	      this.phone = phone;
	      this.address = address;
	      this.gender = gender;
	      this.birth = birth;
	      this.licenseNo = licenseNo;
	      this.licenseType = licenseType;
	}
	
	public UserVo(int no, String id, String pw, String name, String email, String phone, String address, String gender,
			String birth, String licenseNo, String licenseType, String year, String month, String day) {
		super();
		this.no = no;
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.gender = gender;
		this.birth = birth;
		this.licenseNo = licenseNo;
		this.licenseType = licenseType;
		this.year = year;
		this.month = month;
		this.day = day;
	}
	
	public UserVo(String id, String pw, String name, String email, String phone, String address, String gender,
	         String year, String month, String day) {
	      super();
	      this.id = id;
	      this.pw = pw;
	      this.name = name;
	      this.email = email;
	      this.phone = phone;
	      this.address = address;
	      this.gender = gender;
	      this.year = year;
	      this.month = month;
	      this.day = day;
	  }
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getLicenseNo() {
		return licenseNo;
	}
	public void setLicenseNo(String licenseNo) {
		this.licenseNo = licenseNo;
	}
	public String getLicenseType() {
		return licenseType;
	}
	public void setLicenseType(String licenseType) {
		this.licenseType = licenseType;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	
	
	@Override
	public String toString() {
		return "UserVo [no=" + no + ", id=" + id + ", pw=" + pw + ", name=" + name + ", email=" + email + ", phone="
				+ phone + ", address=" + address + ", gender=" + gender + ", birth=" + birth + ", licenseNo="
				+ licenseNo + ", licenseType=" + licenseType + ", year=" + year + ", month=" + month + ", day=" + day
				+ "]";
	}
	
	
}