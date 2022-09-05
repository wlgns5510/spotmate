package com.spotmate.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.executor.ExecutorException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.UncategorizedSQLException;
import org.springframework.stereotype.Repository;

import com.spotmate.vo.HitchReservVo;
import com.spotmate.vo.HitchSearchResultVo;
import com.spotmate.vo.HitchSearchVo;
import com.spotmate.vo.HitchVo;
import com.spotmate.vo.MapVo;

@Repository
public class HitchDao {
	
	@Autowired
	private SqlSession ss;
	
	public List<HitchVo> getNear(int userNo) {
		return ss.selectList("spotmate.selectnear", userNo);
	}
	public List<HitchVo> nearHitchList(int userNo) {
		return ss.selectList("spotmate.nearHitchListLogin", userNo);
	}
	
	public List<HitchVo> nearHitchList() {
		return ss.selectList("spotmate.nearHitchListNoLogin");
	}
	//신청한게 있나 없나 확인
	public Map<String, Object> cancelChk(int mateNo, int userNo) {
		Map<String, Object> nMap = new HashMap<>();
		Map<String, Object> map = new HashMap<>();
		nMap.put("mateNo", mateNo);
		nMap.put("userNo", userNo);
		try {
			 map = ss.selectOne("spotmate.cancelChk", nMap);
		} catch(NullPointerException e) {
		}
		return map;
	}
	
	public void updateResvPeople(HitchReservVo hrVo) {
		ss.update("spotmate.updatereservpeople", hrVo);
	}
	//유저가 탑승예약 할 때
	public void updateReserv(HitchReservVo hrVo){
		ss.insert("spotmate.makereserv", hrVo);
	}
	
	public int getTotalPoint(int userNo) {
	      
	      int totalPoint = ss.selectOne("mypagej.selectTotalPoint", userNo);
	      
	      return totalPoint;
	   }
	
	public void usePoint(HitchReservVo hrVo) {
		ss.insert("spotmate.usePoint", hrVo);
	}
	
	//유저가 탑승예약 취소 할 때	
	public int cancelReserv(int userNo, int mateNo) {
		int people = -1;
		Map<String, Object> nMap = new HashMap<String, Object>();
		nMap.put("userNo", userNo);
		nMap.put("mateNo", mateNo);
		try {
			ss.insert("spotmate.cancelResv", nMap);
			int resvNo = ss.selectOne("spotmate.getResvNo", nMap);
			nMap.put("resvNo", resvNo);
			System.out.println(resvNo);
			ss.delete("spotmate.deleteCancelPoint", nMap);
			ss.delete("spotmate.deleteCancelResv", nMap);
			people = ss.selectOne("spotmate.chkride", mateNo);
		} catch(ExecutorException e) {
			return people;
		}
		return people;
	}
	//탑승가능한 상태인지 아닌지(내가 신청하기 직전에 다른 사람이 눌러서 인원이 초과될 수 있으니 확인)
	
	public int chkRide(int mateNo) {
		return ss.selectOne("spotmate.chkride", mateNo);
	}
	
	public Integer chkResv(int mateNo, int userNo) {
		Map<String, Object> map = new HashMap<>();
		map.put("mateNo", mateNo);
		map.put("userNo", userNo);
		Integer a = ss.selectOne("spotmate.chkResv", map);
		return a;
	}
	//드라이버 현재 위치 저장하면서 탑승한 유저 목록 가져옴
	public List<HitchReservVo> watchPos(MapVo mVo) {
		try {
			ss.update("spotmate.watchpos", mVo);
		} catch (UncategorizedSQLException e) {}
		return ss.selectList("spotmate.selectrideuser", mVo.getMateNo());
	}
	
	public Map<String, Object> selectDriverInfo(int mateNo) {
		HitchVo hVo = ss.selectOne("spotmate.selecthitchdriverinfo", mateNo);
		if (hVo == null) {
			hVo = ss.selectOne("spotmate.selecthitchdriverinfonoreview", mateNo);
			hVo.setStar(0.0);
		}
		List<String> nowPos = ss.selectList("spotmate.selecthitchdriverinfonowpos", mateNo);
		Map<String, Object> hMap = new HashMap<>();
		hMap.put("hVo", hVo);
		List<Double> nowLatlng = new ArrayList<>();
		nowLatlng.add(Double.parseDouble(nowPos.get(1).split(",")[0]));
		nowLatlng.add(Double.parseDouble(nowPos.get(1).split(",")[1]));
		hMap.put("nowLatlng", nowLatlng);
		hMap.put("nowAddr", nowPos.get(1).split(",")[2]);
		hMap.put("latlng", nowPos.get(0));
		return hMap;
	}
	
	public List<HitchVo> getHdriverPage(int driverNo) {
		return ss.selectList("spotmate.gethdriverpage", driverNo);
	}
	
	public HitchVo selectSummaryInfo(int mateNo, int userNo) {
		Map<String, Object> map = new HashMap<>();
		map.put("mateNo", mateNo);
		map.put("userNo", userNo);
		return ss.selectOne("spotmate.selectsummarydriverinfo", map);
	}
	
	
	public MapVo selectDriverPos(MapVo mVo) {
		MapVo mVo2 = ss.selectOne("spotmate.selectDriverPos", mVo);
		if (!mVo2.getAddr().split(",")[2].equals(mVo.getAddr())) {
			mVo2.setLat(Double.parseDouble(mVo2.getAddr().split(",")[1]));
			mVo2.setLng(Double.parseDouble(mVo2.getAddr().split(",")[0]));
			mVo2.setAddr(mVo2.getAddr().split(",")[2]);
			return mVo2;
		};
		return mVo;
	}
	
	public List<HitchSearchResultVo> searchList(HitchSearchVo hsVo) {
		String[] arr = hsVo.getDetailOpt().split(",");
		for(int i=0;i<arr.length;i++) {
			if(arr[i].equals("비흡연자")) {
				hsVo.setNosmoke(arr[i]);
			} else if (arr[i].equals("여성드라이버")) {
				hsVo.setFemaleDriver(arr[i]);
			} else if (arr[i].equals("반려동물")) {
				hsVo.setPet(arr[i]);
			} else if (arr[i].equals("충전기 사용 가능")) {
				hsVo.setPhoneCharge(arr[i]);
			} else if (arr[i].equals("트렁크 사용 가능")) {
				hsVo.setTrunk(arr[i]);
			}
		}
		List<HitchSearchResultVo> hsrL = ss.selectList("spotmate.searchlist", hsVo);
		for(int j=0;j<hsrL.size();j++) {
			hsrL.get(j).setLatlng(ss.selectOne("spotmate.getLatlng", hsrL.get(j).getMateNo()));
		}
		return hsrL;
	}
	
	public void lks() {
		
		List<String> name = new ArrayList<String> ();
		name.add("이정화");
		name.add("양지훈");
		name.add("김가은");
		name.add("이준규");
		name.add("김경애");
		name.add("김려경");
		name.add("김민규");
		name.add("김범준");
		name.add("김수빈");
		name.add("김재환");
		name.add("김지수");
		name.add("박찬희");
		name.add("박희지");
		name.add("석정원");
		name.add("소준호");
		name.add("유지은");
		name.add("윤성한");
		name.add("고은솔");
		name.add("이승민");
		name.add("이재훈");
		name.add("장성찬");
		name.add("장희만");
		name.add("정지웅");
		name.add("조윤주");
		name.add("최종빈");
		name.add("김준호");
		name.add("이지희");
		name.add("최보승");
		name.add("최정필");
		name.add("황일영");
		name.add("권정흠");
		name.add("김건희");
		name.add("김상훈");
		name.add("김재형");
		name.add("김준하");
		name.add("배찬우");
		name.add("신정수");
		name.add("이건희");
		name.add("이상엽");
		name.add("손민수");
		name.add("황승민");
		name.add("채종원");
		name.add("차수민");
		name.add("전재훈");
		name.add("장원재");
		name.add("임형찬");
		name.add("임초롱");
		name.add("권소라");
		name.add("주민영");
		name.add("장슬기");
		List<String> car = new ArrayList<String> ();
		car.add("benz s600");
		car.add("hyundai avante");
		car.add("kia k3");
		car.add("kia k5");
		car.add("kia k7");
		car.add("kia k8");
		car.add("kia k9");
		car.add("renaultSamsung sm3");
		car.add("renaultSamsung sm5");
		car.add("renaultSamsung sm7");
		car.add("kia korando");
		car.add("kia sportage");
		car.add("kia sorento");
		car.add("kia carnival");
		car.add("volkswagen cc");
		car.add("vlokswagen tiguan");
		car.add("volvo xc90");
		car.add("genesis g80");
		car.add("genesis gv80");
		car.add("genesis g90");
		car.add("genesis gv90");
		car.add("benz glc-220d");
		car.add("hyundai ionic5");
		car.add("tesla modelS");
		car.add("tesla modelE");
		car.add("tesla model3");
		car.add("tesla modelY");
		car.add("tesla CyberTruck");
		car.add("ssangyong tivoli");
		car.add("hyundai tucson");
		car.add("genesis gv60");
		car.add("bmw 530i");
		car.add("audi a6");
		car.add("audi a8");
		car.add("audi i8");
		car.add("bmw 730i");
		car.add("kia ray");
		car.add("chevorlet spark");
		car.add("kia morning");
		car.add("chevorlet forte");
		car.add("kia soul");
		car.add("gm matiz");
		car.add("kia celtos");
		car.add("hyundai kona");
		car.add("hyundai dynasty");
		car.add("hyundai venue");
		car.add("ssangyoun chairman");
		car.add("hyundai palisade");
		car.add("hyundai staria");
		car.add("renaultSamsung xm3");
		List<String> introduce = new ArrayList<String> ();
		introduce.add("안녕하세요 저는 30대 직장인 드라이버입니다. 조용하게 가는 것을 선호하며, 위생에 민감한 편이기 때문에 제 차에 타실 때 비치되어 있는 손 소독제 꼭 사용해주셨으면 좋겠습니다. 또, 내릴 때는 본인 소지품 및 쓰레기는 꼭 챙겨 나가주시길 바랍니다.");
		introduce.add("안녕하세요 제 차는 항상 반려동물(강아지) 이 타고 있기 때문에 이 점 고려하셔서 예약 부탁드립니다. 그리고 유저님들도 제 차에 반려동물 탑승이 가능한데 너무 공격적이지 않은 성향이었으면 좋겠습니다. 그리고 내리실 때 개인 물품 꼭 챙겨주세요.");
		introduce.add("안녕하세요 저는 지금까지 메이트 이용 경험이 15회 이상이고, 자유롭고 편하게 여행 다니는 것을 굉장히 좋아합니다. 최대한 일정 조율해서 잘 다니는 편입니다. 많은 이용 부탁드립니다. ");
		introduce.add("안녕하세요 20대 회사원 여자입니다. 여성분만 이용 부탁드립니다.");
		introduce.add("안녕하세요 40대 회사원 남자입니다. 감사합니다");
		introduce.add("안녕하세요 30대 회사원 여자입니다. 여성분만 이용 부탁드립니다.");
		introduce.add("안녕하세요 50대 회사원 남자입니다. 감사합니다");
		introduce.add("안녕하세요 40대 회사원 여자입니다. 여성분만 이용 부탁드립니다.");
		introduce.add("안녕하세요 60대 회사원 남자입니다. 감사합니다");
		introduce.add("안녕하세요 50대 회사원 여자입니다.");
		introduce.add("안녕하세요 70대 회사원 남자입니다. 감사합니다");
		introduce.add("안녕하세요 저는 30대 직장인 드라이버입니다. 조용하게 가는 것을 선호하며, 위생에 민감한 편이기 때문에 제 차에 타실 때 비치되어 있는 손 소독제 꼭 사용해주셨으면 좋겠습니다. 또, 내릴 때는 본인 소지품 및 쓰레기는 꼭 챙겨 나가주시길 바랍니다.");
		introduce.add("안녕하세요 제 차는 항상 반려동물(강아지) 이 타고 있기 때문에 이 점 고려하셔서 예약 부탁드립니다. 그리고 유저님들도 제 차에 반려동물 탑승이 가능한데 너무 공격적이지 않은 성향이었으면 좋겠습니다. 그리고 내리실 때 개인 물품 꼭 챙겨주세요.");
		introduce.add("안녕하세요 저는 지금까지 메이트 이용 경험이 15회 이상이고, 자유롭고 편하게 여행 다니는 것을 굉장히 좋아합니다. 최대한 일정 조율해서 잘 다니는 편입니다. 많은 이용 부탁드립니다. ");
		introduce.add("안녕하세요 20대 회사원 여자입니다. 여성분만 이용 부탁드립니다.");
		introduce.add("안녕하세요 40대 회사원 남자입니다. 감사합니다");
		introduce.add("안녕하세요 30대 회사원 여자입니다. 여성분만 이용 부탁드립니다.");
		introduce.add("안녕하세요 50대 회사원 남자입니다. 감사합니다");
		introduce.add("안녕하세요 40대 회사원 여자입니다. 여성분만 이용 부탁드립니다.");
		introduce.add("안녕하세요 60대 회사원 남자입니다. 감사합니다");
		introduce.add("안녕하세요 50대 회사원 여자입니다.");
		introduce.add("안녕하세요 70대 회사원 남자입니다. 감사합니다");
		introduce.add("안녕하세요 저는 30대 직장인 드라이버입니다. 조용하게 가는 것을 선호하며, 위생에 민감한 편이기 때문에 제 차에 타실 때 비치되어 있는 손 소독제 꼭 사용해주셨으면 좋겠습니다. 또, 내릴 때는 본인 소지품 및 쓰레기는 꼭 챙겨 나가주시길 바랍니다.");
		introduce.add("안녕하세요 제 차는 항상 반려동물(강아지) 이 타고 있기 때문에 이 점 고려하셔서 예약 부탁드립니다. 그리고 유저님들도 제 차에 반려동물 탑승이 가능한데 너무 공격적이지 않은 성향이었으면 좋겠습니다. 그리고 내리실 때 개인 물품 꼭 챙겨주세요.");
		introduce.add("안녕하세요 저는 지금까지 메이트 이용 경험이 15회 이상이고, 자유롭고 편하게 여행 다니는 것을 굉장히 좋아합니다. 최대한 일정 조율해서 잘 다니는 편입니다. 많은 이용 부탁드립니다. ");
		introduce.add("안녕하세요 20대 회사원 여자입니다. 여성분만 이용 부탁드립니다.");
		introduce.add("안녕하세요 40대 회사원 남자입니다. 감사합니다");
		introduce.add("안녕하세요 30대 회사원 여자입니다. 여성분만 이용 부탁드립니다.");
		introduce.add("안녕하세요 50대 회사원 남자입니다. 감사합니다");
		introduce.add("안녕하세요 40대 회사원 여자입니다. 여성분만 이용 부탁드립니다.");
		introduce.add("안녕하세요 60대 회사원 남자입니다. 감사합니다");
		introduce.add("안녕하세요 50대 회사원 여자입니다.");
		introduce.add("안녕하세요 70대 회사원 남자입니다. 감사합니다");
		introduce.add("안녕하세요 저는 30대 직장인 드라이버입니다. 조용하게 가는 것을 선호하며, 위생에 민감한 편이기 때문에 제 차에 타실 때 비치되어 있는 손 소독제 꼭 사용해주셨으면 좋겠습니다. 또, 내릴 때는 본인 소지품 및 쓰레기는 꼭 챙겨 나가주시길 바랍니다.");
		introduce.add("안녕하세요 제 차는 항상 반려동물(강아지) 이 타고 있기 때문에 이 점 고려하셔서 예약 부탁드립니다. 그리고 유저님들도 제 차에 반려동물 탑승이 가능한데 너무 공격적이지 않은 성향이었으면 좋겠습니다. 그리고 내리실 때 개인 물품 꼭 챙겨주세요.");
		introduce.add("안녕하세요 저는 지금까지 메이트 이용 경험이 15회 이상이고, 자유롭고 편하게 여행 다니는 것을 굉장히 좋아합니다. 최대한 일정 조율해서 잘 다니는 편입니다. 많은 이용 부탁드립니다. ");
		introduce.add("안녕하세요 20대 회사원 여자입니다. 여성분만 이용 부탁드립니다.");
		introduce.add("안녕하세요 40대 회사원 남자입니다. 감사합니다");
		introduce.add("안녕하세요 30대 회사원 여자입니다. 여성분만 이용 부탁드립니다.");
		introduce.add("안녕하세요 50대 회사원 남자입니다. 감사합니다");
		introduce.add("안녕하세요 40대 회사원 여자입니다. 여성분만 이용 부탁드립니다.");
		introduce.add("안녕하세요 60대 회사원 남자입니다. 감사합니다");
		introduce.add("안녕하세요 50대 회사원 여자입니다.");
		introduce.add("안녕하세요 70대 회사원 남자입니다. 감사합니다");
		introduce.add("안녕하세요 저는 30대 직장인 드라이버입니다. 조용하게 가는 것을 선호하며, 위생에 민감한 편이기 때문에 제 차에 타실 때 비치되어 있는 손 소독제 꼭 사용해주셨으면 좋겠습니다. 또, 내릴 때는 본인 소지품 및 쓰레기는 꼭 챙겨 나가주시길 바랍니다.");
		introduce.add("안녕하세요 제 차는 항상 반려동물(강아지) 이 타고 있기 때문에 이 점 고려하셔서 예약 부탁드립니다. 그리고 유저님들도 제 차에 반려동물 탑승이 가능한데 너무 공격적이지 않은 성향이었으면 좋겠습니다. 그리고 내리실 때 개인 물품 꼭 챙겨주세요.");
		introduce.add("안녕하세요 저는 지금까지 메이트 이용 경험이 15회 이상이고, 자유롭고 편하게 여행 다니는 것을 굉장히 좋아합니다. 최대한 일정 조율해서 잘 다니는 편입니다. 많은 이용 부탁드립니다. ");
		introduce.add("안녕하세요 20대 회사원 여자입니다. 여성분만 이용 부탁드립니다.");
		introduce.add("안녕하세요 40대 회사원 남자입니다. 감사합니다");
		introduce.add("안녕하세요 30대 회사원 여자입니다. 여성분만 이용 부탁드립니다.");
		List<String> id = new ArrayList<String>();
		id.add("aaaa");
		id.add("bbbb");
		id.add("cccc");
		id.add("dddd");
		id.add("eeee");
		id.add("ffff");
		id.add("gggg");
		id.add("hhhh");
		id.add("iiii");
		id.add("jjjj");
		id.add("kkkk");
		id.add("llll");
		id.add("mmmm");
		id.add("nnnn");
		id.add("oooo");
		id.add("pppp");
		id.add("qqqq");
		id.add("rrrr");
		id.add("ssss");
		id.add("tttt");
		id.add("uuuu");
		id.add("vvvv");
		id.add("wwww");
		id.add("xxxx");
		id.add("yyyy");
		id.add("zzzz");
		id.add("aaaa1");
		id.add("bbbb2");
		id.add("cccc3");
		id.add("dddd4");
		id.add("eeee5");
		id.add("ffff6");
		id.add("gggg7");
		id.add("hhhh8");
		id.add("iiii9");
		id.add("jjjj10");
		id.add("kkkk11");
		id.add("llll12");
		id.add("mmmm13");
		id.add("nnnn14");
		id.add("oooo15");
		id.add("pppp16");
		id.add("qqqq17");
		id.add("rrrr18");
		id.add("ssss19");
		id.add("tttt20");
		id.add("uuuu21");
		id.add("vvvv22");
		id.add("wwww23");
		id.add("xxxx24");
		
		List<String> pw = new ArrayList<String>();
		pw.add("aaaa");
		pw.add("bbbb");
		pw.add("cccc");
		pw.add("dddd");
		pw.add("eeee");
		pw.add("ffff");
		pw.add("gggg");
		pw.add("hhhh");
		pw.add("iiii");
		pw.add("jjjj");
		pw.add("kkkk");
		pw.add("llll");
		pw.add("mmmm");
		pw.add("nnnn");
		pw.add("oooo");
		pw.add("pppp");
		pw.add("qqqq");
		pw.add("rrrr");
		pw.add("ssss");
		pw.add("tttt");
		pw.add("uuuu");
		pw.add("vvvv");
		pw.add("wwww");
		pw.add("xxxx");
		pw.add("yyyy");
		pw.add("zzzz");
		pw.add("aaaa1");
		pw.add("bbbb2");
		pw.add("cccc3");
		pw.add("dddd4");
		pw.add("eeee5");
		pw.add("ffff6");
		pw.add("gggg7");
		pw.add("hhhh8");
		pw.add("iiii9");
		pw.add("jjjj10");
		pw.add("kkkk11");
		pw.add("llll12");
		pw.add("mmmm13");
		pw.add("nnnn14");
		pw.add("oooo15");
		pw.add("pppp16");
		pw.add("qqqq17");
		pw.add("rrrr18");
		pw.add("ssss19");
		pw.add("tttt20");
		pw.add("uuuu21");
		pw.add("vvvv22");
		pw.add("wwww23");
		pw.add("xxxx24"); 
		List<String> gender = new ArrayList<String>();
		gender.add("female");
		gender.add("male");
		gender.add("female");
		gender.add("male");
		gender.add("female");
		gender.add("male");
		gender.add("female");
		gender.add("male");
		gender.add("female");
		gender.add("male");
		gender.add("female");
		gender.add("male");
		gender.add("female");
		gender.add("male");
		gender.add("female");
		gender.add("male");
		gender.add("female");
		gender.add("male");
		gender.add("female");
		gender.add("male");
		gender.add("female");
		gender.add("male");
		gender.add("female");
		gender.add("male");
		gender.add("female");
		gender.add("male");
		gender.add("female");
		gender.add("male");
		gender.add("female");
		gender.add("male");
		gender.add("female");
		gender.add("male");
		gender.add("female");
		gender.add("male");
		gender.add("female");
		gender.add("male");
		gender.add("female");
		gender.add("male");
		gender.add("female");
		gender.add("male");
		gender.add("female");
		gender.add("male");
		gender.add("female");
		gender.add("male");
		gender.add("female");
		gender.add("male");
		gender.add("female");
		gender.add("male");
		gender.add("female");
		gender.add("male");
		List<String> carno = new ArrayList<String>();
		carno.add("23부 9812");
		carno.add("223바 3142");
		carno.add("234부 9812");
		carno.add("273바 3142");
		carno.add("267부 9812");
		carno.add("952바 3142");
		carno.add("594부 9812");
		carno.add("235바 3142");
		carno.add("54부 9812");
		carno.add("91바 3142");
		carno.add("20부 9812");
		carno.add("95바 3142");
		carno.add("85부 9812");
		carno.add("75바 3142");
		carno.add("72부 9812");
		carno.add("172바 3142");
		carno.add("921부 9812");
		carno.add("952바 3142");
		carno.add("34부 9812");
		carno.add("465바 3142");
		carno.add("854부 9812");
		carno.add("953바 3142");
		carno.add("91부 9812");
		carno.add("942바 3142");
		carno.add("723부 9812");
		carno.add("952바 3142");
		carno.add("845부 9812");
		carno.add("212바 3142");
		carno.add("943부 9812");
		carno.add("384바 3142");
		carno.add("964부 9812");
		carno.add("965바 3142");
		carno.add("241부 9812");
		carno.add("734바 3142");
		carno.add("951카 9812");
		carno.add("964바 3142");
		carno.add("758부 9812");
		carno.add("964바 3142");
		carno.add("803부 9812");
		carno.add("734바 3142");
		carno.add("943부 9812");
		carno.add("057바 3142");
		carno.add("71부 9812");
		carno.add("893바 3142");
		carno.add("23히 9812");
		carno.add("223파 3142");
		carno.add("23차 9812");
		carno.add("223사 3142");
		carno.add("23라 9812");
		carno.add("223마 3142");
		List<String> carpic = new ArrayList<String>();
		for(int i=1;i<51;i++) {
			carpic.add("carpic"+i+".jpg");
		}
		
		for(int i=1;i<name.size()+1;i++) {
			Map<String, Object> map = new HashMap<>();
			map.put("name", name.get(i-1));
			map.put("car", car.get(i-1));
			map.put("gender", gender.get(i-1));
			map.put("id", id.get(i-1));
			map.put("pw", pw.get(i-1));
			map.put("introduce", introduce.get(i-1));
			map.put("carNum", carno.get(i-1));
			map.put("carpic", carpic.get(i-1));
			map.put("userNo", i);
			map.put("carNo", i);
			map.put("carDetailNo", i);
			ss.insert("spotmate.testUser", map);
			ss.insert("spotmate.testCar", map);
			ss.insert("spotmate.testCarDetail", map);
		}
		
		
		
	}
	
}