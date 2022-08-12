package com.spotmate.vo;

public class MateWriteVo {
	
	private String sdate1, edate1, splace1, eplace1, stime1, latlng1, latlng2, latlng3, latlng4, latlng5, splace2, eplace2, stime2, splace3, eplace3, stime3,
	splace4, eplace4, stime4, splace5, eplace5, stime5,
	wtime11, wtime12, wtime13, wtime14, wtime15,wtime21, wtime22, wtime23, wtime24, wtime25,
	wtime31, wtime32, wtime33, wtime34, wtime35,wtime41, wtime42, wtime43, wtime44, wtime45,wtime51, wtime52, wtime53, wtime54, wtime55,
	wplace11,wplace12,wplace13,wplace14,wplace15,wplace21,wplace22,wplace23,wplace24,wplace25,
	wplace31,wplace32,wplace33,wplace34,wplace35,wplace41,wplace42,wplace43,wplace44,wplace45,wplace51,wplace52,wplace53,wplace54,wplace55,
	introduce, comments, nosmoke, phonecharge, drivergender, silence, pet, fare1, fare2, fare3, fare4, fare5;
	private int people;
	private double slat1, slat2, slat3, slat4, slat5, slng1, slng2, slng3, slng4, slng5, elat1, elat2, elat3, elat4, elat5,elng1, elng2, elng3, elng4, elng5,
	wlat11,wlat12,wlat13,wlat14,wlat15,wlng11,wlng12,wlng13,wlng14,wlng15,
	wlat21,wlat22,wlat23,wlat24,wlat25,wlng21,wlng22,wlng23,wlng24,wlng25,
	wlat31,wlat32,wlat33,wlat34,wlat35,wlng31,wlng32,wlng33,wlng34,wlng35,
	wlat41,wlat42,wlat43,wlat44,wlat45,wlng41,wlng42,wlng43,wlng44,wlng45,
	wlat51,wlat52,wlat53,wlat54,wlat55,wlng51,wlng52,wlng53,wlng54,wlng55;
	 
	public MateWriteVo() {}
	
	public MateWriteVo(String sdate1, String edate1, String splace1, String eplace1, String stime1,
			String splace2, String eplace2, String stime2, String splace3, String eplace3, String stime3,
			String splace4, String eplace4, String stime4, String splace5, String eplace5, String stime5,
			String wtime11, String wtime12, String wtime13, String wtime14, String wtime15,String wtime21, String wtime22, String wtime23, String wtime24, String wtime25,
			String wtime31, String wtime32, String wtime33, String wtime34, String wtime35,String wtime41, String wtime42, String wtime43, String wtime44, String wtime45,String wtime51, String wtime52, String wtime53, String wtime54, String wtime55,
			String wplace11,String wplace12,String wplace13,String wplace14,String wplace15,String wplace21,String wplace22,String wplace23,String wplace24,String wplace25,
			String wplace31,String wplace32,String wplace33,String wplace34,String wplace35,String wplace41,String wplace42,String wplace43,String wplace44,String wplace45,String wplace51,String wplace52,String wplace53,String wplace54,String wplace55,
			String introduce, String comments, String nosmoke, String phonecharge, String drivergender, String silence, String pet, 
			String fare1, String fare2, String fare3, String fare4, String fare5, int people,
			double slat1, double slat2, double slat3, double slat4, double slat5, double slng1, double slng2, double slng3, double slng4, double slng5,
			double elat1, double elat2, double elat3, double elat4, double elat5, double elng1, double elng2, double elng3, double elng4, double elng5,
			double wlat11, double wlat12, double wlat13, double wlat14, double wlat15, double wlng11, double wlng12, double wlng13, double wlng14, double wlng15, 
			double wlat21, double wlat22, double wlat23, double wlat24, double wlat25, double wlng21, double wlng22, double wlng23, double wlng24, double wlng25,
			double wlat31, double wlat32, double wlat33, double wlat34, double wlat35, double wlng31, double wlng32, double wlng33, double wlng34, double wlng35,
			double wlat41, double wlat42, double wlat43, double wlat44, double wlat45, double wlng41, double wlng42, double wlng43, double wlng44, double wlng45,
			double wlat51, double wlat52, double wlat53, double wlat54, double wlat55, double wlng51, double wlng52, double wlng53, double wlng54, double wlng55) {
		this.sdate1 = sdate1;
		this.edate1 = edate1;
		this.splace1 = splace1;
		this.splace2 = splace2;
		this.splace3 = splace3;
		this.splace4 = splace4;
		this.splace5 = splace5;
		this.eplace1 = eplace1;
		this.eplace2 = eplace2;
		this.eplace3 = eplace3;
		this.eplace4 = eplace4;
		this.eplace5 = eplace5;
		this.stime1 = stime1;
		this.stime2 = stime2;
		this.stime3 = stime3;
		this.stime4 = stime4;
		this.stime5 = stime5;
		this.wtime11 = wtime11;
		this.wtime12 = wtime12;
		this.wtime13 = wtime13;
		this.wtime14 = wtime14;
		this.wtime15 = wtime15;
		this.wtime21 = wtime21;
		this.wtime22 = wtime22;
		this.wtime23 = wtime23;
		this.wtime24 = wtime24;
		this.wtime25 = wtime25;
		this.wtime31 = wtime31;
		this.wtime32 = wtime32;
		this.wtime33 = wtime33;
		this.wtime34 = wtime34;
		this.wtime35 = wtime35;
		this.wtime41 = wtime41;
		this.wtime42 = wtime42;
		this.wtime43 = wtime43;
		this.wtime44 = wtime44;
		this.wtime45 = wtime45;
		this.wtime51 = wtime51;
		this.wtime52 = wtime52;
		this.wtime53 = wtime53;
		this.wtime54 = wtime54;
		this.wtime55 = wtime55;
		this.introduce = introduce;
		this.comments = comments;
		this.fare1 = fare1;
		this.fare2 = fare2;
		this.fare3 = fare3;
		this.fare4 = fare4;
		this.fare5 = fare5;
		this.nosmoke = nosmoke;
		this.phonecharge = phonecharge;
		this.drivergender = drivergender;
		this.silence = silence;
		this.pet = pet;
		this.people = people;
		this.slat1 = slat1;
		this.slat2 = slat2;
		this.slat3 = slat3;
		this.slat4 = slat4;
		this.slat5 = slat5;
		this.slng1 = slng1;
		this.slng2 = slng2;
		this.slng3 = slng3;
		this.slng4 = slng4;
		this.slng5 = slng5;
		this.elat1 = elat1;
		this.elat2 = elat2;
		this.elat3 = elat3;
		this.elat4 = elat4;
		this.elat5 = elat5;
		this.elng1 = elng1;
		this.elng2 = elng2;
		this.elng3 = elng3;
		this.elng4 = elng4;
		this.elng5 = elng5;
		this.wlat11 = wlat11;
		this.wlat12 = wlat12;
		this.wlat13 = wlat13;
		this.wlat14 = wlat14;
		this.wlat15 = wlat15;
		this.wlng11 = wlng11;
		this.wlng12 = wlng12;
		this.wlng13 = wlng13;
		this.wlng14 = wlng14;
		this.wlng15 = wlng15;
		this.wlat21 = wlat21;
		this.wlat22 = wlat22;
		this.wlat23 = wlat23;
		this.wlat24 = wlat24;
		this.wlat25 = wlat25;
		this.wlng21 = wlng21;
		this.wlng22 = wlng22;
		this.wlng23 = wlng23;
		this.wlng24 = wlng24;
		this.wlng25 = wlng25;
		this.wlat31 = wlat31;
		this.wlat32 = wlat32;
		this.wlat33 = wlat33;
		this.wlat34 = wlat34;
		this.wlat35 = wlat35;
		this.wlng31 = wlng31;
		this.wlng32 = wlng32;
		this.wlng33 = wlng33;
		this.wlng34 = wlng34;
		this.wlng35 = wlng35;
		this.wlat41 = wlat41;
		this.wlat42 = wlat42;
		this.wlat43 = wlat43;
		this.wlat44 = wlat44;
		this.wlat45 = wlat45;
		this.wlng41 = wlng41;
		this.wlng42 = wlng42;
		this.wlng43 = wlng43;
		this.wlng44 = wlng44;
		this.wlng45 = wlng45;
		this.wlat51 = wlat51;
		this.wlat52 = wlat52;
		this.wlat53 = wlat53;
		this.wlat54 = wlat54;
		this.wlat55 = wlat55;
		this.wlng51 = wlng51;
		this.wlng52 = wlng52;
		this.wlng53 = wlng53;
		this.wlng54 = wlng54;
		this.wlng55 = wlng55;
	}

	public String getSdate1() {
		return sdate1;
	}

	public void setSdate1(String sdate1) {
		this.sdate1 = sdate1;
	}

	public String getEdate1() {
		return edate1;
	}

	public void setEdate1(String edate1) {
		this.edate1 = edate1;
	}

	public String getSplace1() {
		return splace1;
	}

	public void setSplace1(String splace1) {
		this.splace1 = splace1;
	}

	public String getEplace1() {
		return eplace1;
	}

	public void setEplace1(String eplace1) {
		this.eplace1 = eplace1;
	}

	public String getStime1() {
		return stime1;
	}

	public void setStime1(String stime1) {
		this.stime1 = stime1;
	}

	public String getLatlng1() {
		return latlng1;
	}

	public void setLatlng1(String latlng1) {
		this.latlng1 = latlng1;
	}

	public String getLatlng2() {
		return latlng2;
	}

	public void setLatlng2(String latlng2) {
		this.latlng2 = latlng2;
	}

	public String getLatlng3() {
		return latlng3;
	}

	public void setLatlng3(String latlng3) {
		this.latlng3 = latlng3;
	}

	public String getLatlng4() {
		return latlng4;
	}

	public void setLatlng4(String latlng4) {
		this.latlng4 = latlng4;
	}

	public String getLatlng5() {
		return latlng5;
	}

	public void setLatlng5(String latlng5) {
		this.latlng5 = latlng5;
	}

	public String getSplace2() {
		return splace2;
	}

	public void setSplace2(String splace2) {
		this.splace2 = splace2;
	}

	public String getEplace2() {
		return eplace2;
	}

	public void setEplace2(String eplace2) {
		this.eplace2 = eplace2;
	}

	public String getStime2() {
		return stime2;
	}

	public void setStime2(String stime2) {
		this.stime2 = stime2;
	}

	public String getSplace3() {
		return splace3;
	}

	public void setSplace3(String splace3) {
		this.splace3 = splace3;
	}

	public String getEplace3() {
		return eplace3;
	}

	public void setEplace3(String eplace3) {
		this.eplace3 = eplace3;
	}

	public String getStime3() {
		return stime3;
	}

	public void setStime3(String stime3) {
		this.stime3 = stime3;
	}

	public String getSplace4() {
		return splace4;
	}

	public void setSplace4(String splace4) {
		this.splace4 = splace4;
	}

	public String getEplace4() {
		return eplace4;
	}

	public void setEplace4(String eplace4) {
		this.eplace4 = eplace4;
	}

	public String getStime4() {
		return stime4;
	}

	public void setStime4(String stime4) {
		this.stime4 = stime4;
	}

	public String getSplace5() {
		return splace5;
	}

	public void setSplace5(String splace5) {
		this.splace5 = splace5;
	}

	public String getEplace5() {
		return eplace5;
	}

	public void setEplace5(String eplace5) {
		this.eplace5 = eplace5;
	}

	public String getStime5() {
		return stime5;
	}

	public void setStime5(String stime5) {
		this.stime5 = stime5;
	}

	public String getWtime11() {
		return wtime11;
	}

	public void setWtime11(String wtime11) {
		this.wtime11 = wtime11;
	}

	public String getWtime12() {
		return wtime12;
	}

	public void setWtime12(String wtime12) {
		this.wtime12 = wtime12;
	}

	public String getWtime13() {
		return wtime13;
	}

	public void setWtime13(String wtime13) {
		this.wtime13 = wtime13;
	}

	public String getWtime14() {
		return wtime14;
	}

	public void setWtime14(String wtime14) {
		this.wtime14 = wtime14;
	}

	public String getWtime15() {
		return wtime15;
	}

	public void setWtime15(String wtime15) {
		this.wtime15 = wtime15;
	}

	public String getWtime21() {
		return wtime21;
	}

	public void setWtime21(String wtime21) {
		this.wtime21 = wtime21;
	}

	public String getWtime22() {
		return wtime22;
	}

	public void setWtime22(String wtime22) {
		this.wtime22 = wtime22;
	}

	public String getWtime23() {
		return wtime23;
	}

	public void setWtime23(String wtime23) {
		this.wtime23 = wtime23;
	}

	public String getWtime24() {
		return wtime24;
	}

	public void setWtime24(String wtime24) {
		this.wtime24 = wtime24;
	}

	public String getWtime25() {
		return wtime25;
	}

	public void setWtime25(String wtime25) {
		this.wtime25 = wtime25;
	}

	public String getWtime31() {
		return wtime31;
	}

	public void setWtime31(String wtime31) {
		this.wtime31 = wtime31;
	}

	public String getWtime32() {
		return wtime32;
	}

	public void setWtime32(String wtime32) {
		this.wtime32 = wtime32;
	}

	public String getWtime33() {
		return wtime33;
	}

	public void setWtime33(String wtime33) {
		this.wtime33 = wtime33;
	}

	public String getWtime34() {
		return wtime34;
	}

	public void setWtime34(String wtime34) {
		this.wtime34 = wtime34;
	}

	public String getWtime35() {
		return wtime35;
	}

	public void setWtime35(String wtime35) {
		this.wtime35 = wtime35;
	}

	public String getWtime41() {
		return wtime41;
	}

	public void setWtime41(String wtime41) {
		this.wtime41 = wtime41;
	}

	public String getWtime42() {
		return wtime42;
	}

	public void setWtime42(String wtime42) {
		this.wtime42 = wtime42;
	}

	public String getWtime43() {
		return wtime43;
	}

	public void setWtime43(String wtime43) {
		this.wtime43 = wtime43;
	}

	public String getWtime44() {
		return wtime44;
	}

	public void setWtime44(String wtime44) {
		this.wtime44 = wtime44;
	}

	public String getWtime45() {
		return wtime45;
	}

	public void setWtime45(String wtime45) {
		this.wtime45 = wtime45;
	}

	public String getWtime51() {
		return wtime51;
	}

	public void setWtime51(String wtime51) {
		this.wtime51 = wtime51;
	}

	public String getWtime52() {
		return wtime52;
	}

	public void setWtime52(String wtime52) {
		this.wtime52 = wtime52;
	}

	public String getWtime53() {
		return wtime53;
	}

	public void setWtime53(String wtime53) {
		this.wtime53 = wtime53;
	}

	public String getWtime54() {
		return wtime54;
	}

	public void setWtime54(String wtime54) {
		this.wtime54 = wtime54;
	}

	public String getWtime55() {
		return wtime55;
	}

	public void setWtime55(String wtime55) {
		this.wtime55 = wtime55;
	}

	public String getWplace11() {
		return wplace11;
	}

	public void setWplace11(String wplace11) {
		this.wplace11 = wplace11;
	}

	public String getWplace12() {
		return wplace12;
	}

	public void setWplace12(String wplace12) {
		this.wplace12 = wplace12;
	}

	public String getWplace13() {
		return wplace13;
	}

	public void setWplace13(String wplace13) {
		this.wplace13 = wplace13;
	}

	public String getWplace14() {
		return wplace14;
	}

	public void setWplace14(String wplace14) {
		this.wplace14 = wplace14;
	}

	public String getWplace15() {
		return wplace15;
	}

	public void setWplace15(String wplace15) {
		this.wplace15 = wplace15;
	}

	public String getWplace21() {
		return wplace21;
	}

	public void setWplace21(String wplace21) {
		this.wplace21 = wplace21;
	}

	public String getWplace22() {
		return wplace22;
	}

	public void setWplace22(String wplace22) {
		this.wplace22 = wplace22;
	}

	public String getWplace23() {
		return wplace23;
	}

	public void setWplace23(String wplace23) {
		this.wplace23 = wplace23;
	}

	public String getWplace24() {
		return wplace24;
	}

	public void setWplace24(String wplace24) {
		this.wplace24 = wplace24;
	}

	public String getWplace25() {
		return wplace25;
	}

	public void setWplace25(String wplace25) {
		this.wplace25 = wplace25;
	}

	public String getWplace31() {
		return wplace31;
	}

	public void setWplace31(String wplace31) {
		this.wplace31 = wplace31;
	}

	public String getWplace32() {
		return wplace32;
	}

	public void setWplace32(String wplace32) {
		this.wplace32 = wplace32;
	}

	public String getWplace33() {
		return wplace33;
	}

	public void setWplace33(String wplace33) {
		this.wplace33 = wplace33;
	}

	public String getWplace34() {
		return wplace34;
	}

	public void setWplace34(String wplace34) {
		this.wplace34 = wplace34;
	}

	public String getWplace35() {
		return wplace35;
	}

	public void setWplace35(String wplace35) {
		this.wplace35 = wplace35;
	}

	public String getWplace41() {
		return wplace41;
	}

	public void setWplace41(String wplace41) {
		this.wplace41 = wplace41;
	}

	public String getWplace42() {
		return wplace42;
	}

	public void setWplace42(String wplace42) {
		this.wplace42 = wplace42;
	}

	public String getWplace43() {
		return wplace43;
	}

	public void setWplace43(String wplace43) {
		this.wplace43 = wplace43;
	}

	public String getWplace44() {
		return wplace44;
	}

	public void setWplace44(String wplace44) {
		this.wplace44 = wplace44;
	}

	public String getWplace45() {
		return wplace45;
	}

	public void setWplace45(String wplace45) {
		this.wplace45 = wplace45;
	}

	public String getWplace51() {
		return wplace51;
	}

	public void setWplace51(String wplace51) {
		this.wplace51 = wplace51;
	}

	public String getWplace52() {
		return wplace52;
	}

	public void setWplace52(String wplace52) {
		this.wplace52 = wplace52;
	}

	public String getWplace53() {
		return wplace53;
	}

	public void setWplace53(String wplace53) {
		this.wplace53 = wplace53;
	}

	public String getWplace54() {
		return wplace54;
	}

	public void setWplace54(String wplace54) {
		this.wplace54 = wplace54;
	}

	public String getWplace55() {
		return wplace55;
	}

	public void setWplace55(String wplace55) {
		this.wplace55 = wplace55;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public String getNosmoke() {
		return nosmoke;
	}

	public void setNosmoke(String nosmoke) {
		this.nosmoke = nosmoke;
	}

	public String getPhonecharge() {
		return phonecharge;
	}

	public void setPhonecharge(String phonecharge) {
		this.phonecharge = phonecharge;
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

	public String getFare1() {
		return fare1;
	}

	public void setFare1(String fare1) {
		this.fare1 = fare1;
	}

	public String getFare2() {
		return fare2;
	}

	public void setFare2(String fare2) {
		this.fare2 = fare2;
	}

	public String getFare3() {
		return fare3;
	}

	public void setFare3(String fare3) {
		this.fare3 = fare3;
	}

	public String getFare4() {
		return fare4;
	}

	public void setFare4(String fare4) {
		this.fare4 = fare4;
	}

	public String getFare5() {
		return fare5;
	}

	public void setFare5(String fare5) {
		this.fare5 = fare5;
	}

	public int getPeople() {
		return people;
	}

	public void setPeople(int people) {
		this.people = people;
	}

	public double getSlat1() {
		return slat1;
	}

	public void setSlat1(double slat1) {
		this.slat1 = slat1;
	}

	public double getSlat2() {
		return slat2;
	}

	public void setSlat2(double slat2) {
		this.slat2 = slat2;
	}

	public double getSlat3() {
		return slat3;
	}

	public void setSlat3(double slat3) {
		this.slat3 = slat3;
	}

	public double getSlat4() {
		return slat4;
	}

	public void setSlat4(double slat4) {
		this.slat4 = slat4;
	}

	public double getSlat5() {
		return slat5;
	}

	public void setSlat5(double slat5) {
		this.slat5 = slat5;
	}

	public double getSlng1() {
		return slng1;
	}

	public void setSlng1(double slng1) {
		this.slng1 = slng1;
	}

	public double getSlng2() {
		return slng2;
	}

	public void setSlng2(double slng2) {
		this.slng2 = slng2;
	}

	public double getSlng3() {
		return slng3;
	}

	public void setSlng3(double slng3) {
		this.slng3 = slng3;
	}

	public double getSlng4() {
		return slng4;
	}

	public void setSlng4(double slng4) {
		this.slng4 = slng4;
	}

	public double getSlng5() {
		return slng5;
	}

	public void setSlng5(double slng5) {
		this.slng5 = slng5;
	}

	public double getElat1() {
		return elat1;
	}

	public void setElat1(double elat1) {
		this.elat1 = elat1;
	}

	public double getElat2() {
		return elat2;
	}

	public void setElat2(double elat2) {
		this.elat2 = elat2;
	}

	public double getElat3() {
		return elat3;
	}

	public void setElat3(double elat3) {
		this.elat3 = elat3;
	}

	public double getElat4() {
		return elat4;
	}

	public void setElat4(double elat4) {
		this.elat4 = elat4;
	}

	public double getElat5() {
		return elat5;
	}

	public void setElat5(double elat5) {
		this.elat5 = elat5;
	}

	public double getElng1() {
		return elng1;
	}

	public void setElng1(double elng1) {
		this.elng1 = elng1;
	}

	public double getElng2() {
		return elng2;
	}

	public void setElng2(double elng2) {
		this.elng2 = elng2;
	}

	public double getElng3() {
		return elng3;
	}

	public void setElng3(double elng3) {
		this.elng3 = elng3;
	}

	public double getElng4() {
		return elng4;
	}

	public void setElng4(double elng4) {
		this.elng4 = elng4;
	}

	public double getElng5() {
		return elng5;
	}

	public void setElng5(double elng5) {
		this.elng5 = elng5;
	}

	public double getWlat11() {
		return wlat11;
	}

	public void setWlat11(double wlat11) {
		this.wlat11 = wlat11;
	}

	public double getWlat12() {
		return wlat12;
	}

	public void setWlat12(double wlat12) {
		this.wlat12 = wlat12;
	}

	public double getWlat13() {
		return wlat13;
	}

	public void setWlat13(double wlat13) {
		this.wlat13 = wlat13;
	}

	public double getWlat14() {
		return wlat14;
	}

	public void setWlat14(double wlat14) {
		this.wlat14 = wlat14;
	}

	public double getWlat15() {
		return wlat15;
	}

	public void setWlat15(double wlat15) {
		this.wlat15 = wlat15;
	}

	public double getWlng11() {
		return wlng11;
	}

	public void setWlng11(double wlng11) {
		this.wlng11 = wlng11;
	}

	public double getWlng12() {
		return wlng12;
	}

	public void setWlng12(double wlng12) {
		this.wlng12 = wlng12;
	}

	public double getWlng13() {
		return wlng13;
	}

	public void setWlng13(double wlng13) {
		this.wlng13 = wlng13;
	}

	public double getWlng14() {
		return wlng14;
	}

	public void setWlng14(double wlng14) {
		this.wlng14 = wlng14;
	}

	public double getWlng15() {
		return wlng15;
	}

	public void setWlng15(double wlng15) {
		this.wlng15 = wlng15;
	}

	public double getWlat21() {
		return wlat21;
	}

	public void setWlat21(double wlat21) {
		this.wlat21 = wlat21;
	}

	public double getWlat22() {
		return wlat22;
	}

	public void setWlat22(double wlat22) {
		this.wlat22 = wlat22;
	}

	public double getWlat23() {
		return wlat23;
	}

	public void setWlat23(double wlat23) {
		this.wlat23 = wlat23;
	}

	public double getWlat24() {
		return wlat24;
	}

	public void setWlat24(double wlat24) {
		this.wlat24 = wlat24;
	}

	public double getWlat25() {
		return wlat25;
	}

	public void setWlat25(double wlat25) {
		this.wlat25 = wlat25;
	}

	public double getWlng21() {
		return wlng21;
	}

	public void setWlng21(double wlng21) {
		this.wlng21 = wlng21;
	}

	public double getWlng22() {
		return wlng22;
	}

	public void setWlng22(double wlng22) {
		this.wlng22 = wlng22;
	}

	public double getWlng23() {
		return wlng23;
	}

	public void setWlng23(double wlng23) {
		this.wlng23 = wlng23;
	}

	public double getWlng24() {
		return wlng24;
	}

	public void setWlng24(double wlng24) {
		this.wlng24 = wlng24;
	}

	public double getWlng25() {
		return wlng25;
	}

	public void setWlng25(double wlng25) {
		this.wlng25 = wlng25;
	}

	public double getWlat31() {
		return wlat31;
	}

	public void setWlat31(double wlat31) {
		this.wlat31 = wlat31;
	}

	public double getWlat32() {
		return wlat32;
	}

	public void setWlat32(double wlat32) {
		this.wlat32 = wlat32;
	}

	public double getWlat33() {
		return wlat33;
	}

	public void setWlat33(double wlat33) {
		this.wlat33 = wlat33;
	}

	public double getWlat34() {
		return wlat34;
	}

	public void setWlat34(double wlat34) {
		this.wlat34 = wlat34;
	}

	public double getWlat35() {
		return wlat35;
	}

	public void setWlat35(double wlat35) {
		this.wlat35 = wlat35;
	}

	public double getWlng31() {
		return wlng31;
	}

	public void setWlng31(double wlng31) {
		this.wlng31 = wlng31;
	}

	public double getWlng32() {
		return wlng32;
	}

	public void setWlng32(double wlng32) {
		this.wlng32 = wlng32;
	}

	public double getWlng33() {
		return wlng33;
	}

	public void setWlng33(double wlng33) {
		this.wlng33 = wlng33;
	}

	public double getWlng34() {
		return wlng34;
	}

	public void setWlng34(double wlng34) {
		this.wlng34 = wlng34;
	}

	public double getWlng35() {
		return wlng35;
	}

	public void setWlng35(double wlng35) {
		this.wlng35 = wlng35;
	}

	public double getWlat41() {
		return wlat41;
	}

	public void setWlat41(double wlat41) {
		this.wlat41 = wlat41;
	}

	public double getWlat42() {
		return wlat42;
	}

	public void setWlat42(double wlat42) {
		this.wlat42 = wlat42;
	}

	public double getWlat43() {
		return wlat43;
	}

	public void setWlat43(double wlat43) {
		this.wlat43 = wlat43;
	}

	public double getWlat44() {
		return wlat44;
	}

	public void setWlat44(double wlat44) {
		this.wlat44 = wlat44;
	}

	public double getWlat45() {
		return wlat45;
	}

	public void setWlat45(double wlat45) {
		this.wlat45 = wlat45;
	}

	public double getWlng41() {
		return wlng41;
	}

	public void setWlng41(double wlng41) {
		this.wlng41 = wlng41;
	}

	public double getWlng42() {
		return wlng42;
	}

	public void setWlng42(double wlng42) {
		this.wlng42 = wlng42;
	}

	public double getWlng43() {
		return wlng43;
	}

	public void setWlng43(double wlng43) {
		this.wlng43 = wlng43;
	}

	public double getWlng44() {
		return wlng44;
	}

	public void setWlng44(double wlng44) {
		this.wlng44 = wlng44;
	}

	public double getWlng45() {
		return wlng45;
	}

	public void setWlng45(double wlng45) {
		this.wlng45 = wlng45;
	}

	public double getWlat51() {
		return wlat51;
	}

	public void setWlat51(double wlat51) {
		this.wlat51 = wlat51;
	}

	public double getWlat52() {
		return wlat52;
	}

	public void setWlat52(double wlat52) {
		this.wlat52 = wlat52;
	}

	public double getWlat53() {
		return wlat53;
	}

	public void setWlat53(double wlat53) {
		this.wlat53 = wlat53;
	}

	public double getWlat54() {
		return wlat54;
	}

	public void setWlat54(double wlat54) {
		this.wlat54 = wlat54;
	}

	public double getWlat55() {
		return wlat55;
	}

	public void setWlat55(double wlat55) {
		this.wlat55 = wlat55;
	}

	public double getWlng51() {
		return wlng51;
	}

	public void setWlng51(double wlng51) {
		this.wlng51 = wlng51;
	}

	public double getWlng52() {
		return wlng52;
	}

	public void setWlng52(double wlng52) {
		this.wlng52 = wlng52;
	}

	public double getWlng53() {
		return wlng53;
	}

	public void setWlng53(double wlng53) {
		this.wlng53 = wlng53;
	}

	public double getWlng54() {
		return wlng54;
	}

	public void setWlng54(double wlng54) {
		this.wlng54 = wlng54;
	}

	public double getWlng55() {
		return wlng55;
	}

	public void setWlng55(double wlng55) {
		this.wlng55 = wlng55;
	}

	@Override
	public String toString() {
		return "MateWriteVo [sdate1=" + sdate1 + ", edate1=" + edate1 + ", splace1=" + splace1 + ", eplace1=" + eplace1
				+ ", stime1=" + stime1 + ", latlng1=" + latlng1 + ", latlng2=" + latlng2 + ", latlng3=" + latlng3
				+ ", latlng4=" + latlng4 + ", latlng5=" + latlng5 + ", splace2=" + splace2 + ", eplace2=" + eplace2
				+ ", stime2=" + stime2 + ", splace3=" + splace3 + ", eplace3=" + eplace3 + ", stime3=" + stime3
				+ ", splace4=" + splace4 + ", eplace4=" + eplace4 + ", stime4=" + stime4 + ", splace5=" + splace5
				+ ", eplace5=" + eplace5 + ", stime5=" + stime5 + ", wtime11=" + wtime11 + ", wtime12=" + wtime12
				+ ", wtime13=" + wtime13 + ", wtime14=" + wtime14 + ", wtime15=" + wtime15 + ", wtime21=" + wtime21
				+ ", wtime22=" + wtime22 + ", wtime23=" + wtime23 + ", wtime24=" + wtime24 + ", wtime25=" + wtime25
				+ ", wtime31=" + wtime31 + ", wtime32=" + wtime32 + ", wtime33=" + wtime33 + ", wtime34=" + wtime34
				+ ", wtime35=" + wtime35 + ", wtime41=" + wtime41 + ", wtime42=" + wtime42 + ", wtime43=" + wtime43
				+ ", wtime44=" + wtime44 + ", wtime45=" + wtime45 + ", wtime51=" + wtime51 + ", wtime52=" + wtime52
				+ ", wtime53=" + wtime53 + ", wtime54=" + wtime54 + ", wtime55=" + wtime55 + ", wplace11=" + wplace11
				+ ", wplace12=" + wplace12 + ", wplace13=" + wplace13 + ", wplace14=" + wplace14 + ", wplace15="
				+ wplace15 + ", wplace21=" + wplace21 + ", wplace22=" + wplace22 + ", wplace23=" + wplace23
				+ ", wplace24=" + wplace24 + ", wplace25=" + wplace25 + ", wplace31=" + wplace31 + ", wplace32="
				+ wplace32 + ", wplace33=" + wplace33 + ", wplace34=" + wplace34 + ", wplace35=" + wplace35
				+ ", wplace41=" + wplace41 + ", wplace42=" + wplace42 + ", wplace43=" + wplace43 + ", wplace44="
				+ wplace44 + ", wplace45=" + wplace45 + ", wplace51=" + wplace51 + ", wplace52=" + wplace52
				+ ", wplace53=" + wplace53 + ", wplace54=" + wplace54 + ", wplace55=" + wplace55 + ", introduce="
				+ introduce + ", comments=" + comments + ", nosmoke=" + nosmoke + ", phonecharge=" + phonecharge
				+ ", drivergender=" + drivergender + ", silence=" + silence + ", pet=" + pet + ", fare1=" + fare1
				+ ", fare2=" + fare2 + ", fare3=" + fare3 + ", fare4=" + fare4 + ", fare5=" + fare5 + ", people="
				+ people + ", slat1=" + slat1 + ", slat2=" + slat2 + ", slat3=" + slat3 + ", slat4=" + slat4
				+ ", slat5=" + slat5 + ", slng1=" + slng1 + ", slng2=" + slng2 + ", slng3=" + slng3 + ", slng4=" + slng4
				+ ", slng5=" + slng5 + ", elat1=" + elat1 + ", elat2=" + elat2 + ", elat3=" + elat3 + ", elat4=" + elat4
				+ ", elat5=" + elat5 + ", elng1=" + elng1 + ", elng2=" + elng2 + ", elng3=" + elng3 + ", elng4=" + elng4
				+ ", elng5=" + elng5 + ", wlat11=" + wlat11 + ", wlat12=" + wlat12 + ", wlat13=" + wlat13 + ", wlat14="
				+ wlat14 + ", wlat15=" + wlat15 + ", wlng11=" + wlng11 + ", wlng12=" + wlng12 + ", wlng13=" + wlng13
				+ ", wlng14=" + wlng14 + ", wlng15=" + wlng15 + ", wlat21=" + wlat21 + ", wlat22=" + wlat22
				+ ", wlat23=" + wlat23 + ", wlat24=" + wlat24 + ", wlat25=" + wlat25 + ", wlng21=" + wlng21
				+ ", wlng22=" + wlng22 + ", wlng23=" + wlng23 + ", wlng24=" + wlng24 + ", wlng25=" + wlng25
				+ ", wlat31=" + wlat31 + ", wlat32=" + wlat32 + ", wlat33=" + wlat33 + ", wlat34=" + wlat34
				+ ", wlat35=" + wlat35 + ", wlng31=" + wlng31 + ", wlng32=" + wlng32 + ", wlng33=" + wlng33
				+ ", wlng34=" + wlng34 + ", wlng35=" + wlng35 + ", wlat41=" + wlat41 + ", wlat42=" + wlat42
				+ ", wlat43=" + wlat43 + ", wlat44=" + wlat44 + ", wlat45=" + wlat45 + ", wlng41=" + wlng41
				+ ", wlng42=" + wlng42 + ", wlng43=" + wlng43 + ", wlng44=" + wlng44 + ", wlng45=" + wlng45
				+ ", wlat51=" + wlat51 + ", wlat52=" + wlat52 + ", wlat53=" + wlat53 + ", wlat54=" + wlat54
				+ ", wlat55=" + wlat55 + ", wlng51=" + wlng51 + ", wlng52=" + wlng52 + ", wlng53=" + wlng53
				+ ", wlng54=" + wlng54 + ", wlng55=" + wlng55 + "]";
	}
}
