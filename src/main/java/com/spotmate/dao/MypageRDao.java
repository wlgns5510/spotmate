package com.spotmate.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spotmate.vo.DriverLicenseVo;
import com.spotmate.vo.MyUsageVo;
import com.spotmate.vo.UsageSearchVo;
import com.spotmate.vo.myQnaVo;

@Repository

public class MypageRDao {

	@Autowired
	private SqlSession ss;
	
	
	

	//myqna insert
	public void InsertQna(myQnaVo mqv) {
		System.out.println("MypageRDao > InsertQna");
		int count = ss.insert("mypageR.InsertQna", mqv);
		
		System.out.println(count + "건 등록되었습니다.");
	}
	
	
	//myqna list 
	public String getMyQnaList(myQnaVo mqv){
		List<myQnaVo> MyQnaList = ss.selectList("mypageR.selectmqaList");
		return "";
	
	}
	
	
	

	// 등록
	public int myDriverInsert(DriverLicenseVo dlvo) {
		int count = ss.insert("mypageR.myDriverinsert", dlvo);
		System.out.println(dlvo);
		System.out.println(count + "건 등록되었습니다.");

		return count;

	}

	// users테이블에 면허정보 업데이트
	public int update(DriverLicenseVo dlvo) {

		int count = ss.update("mypageR.myDriverUpdate", dlvo);
		System.out.println(count + "건 업데이트 되었습니다.");
		return count;

	}

	// carDetail 값 저장
	public int carDetailInsert(Map<String, Integer> carDetailMap) {

		int count = ss.insert("mypageR.carDetailInsert", carDetailMap);
		return count;

	}

	public DriverLicenseVo getCarInfo(int userNo) {
		DriverLicenseVo dlvo = ss.selectOne("mypageR.getCarInfo", userNo);

		return dlvo;
	}

	// 유저정보수정
	public int userUpdate(DriverLicenseVo dlvo) {
		int count = ss.update("mypageR.userUpdate", dlvo);

		return count;
	}

	public int carUpdate(DriverLicenseVo dlvo) {
		int count = ss.update("mypageR.carUpdate", dlvo);
		return count;
	}

	public int carDetailDelete(DriverLicenseVo dlvo) {
		ss.delete("mypageR.carDetailDelete", dlvo);
		return 0;
	}

	public int carDetailUpdate(DriverLicenseVo dlvo, Map<String, Integer> carDetailMap) {
		int count = ss.insert("mypageR.carDetailInsert", carDetailMap);
		return count;
	}

	
	
	//카정보수정
	
//	public List<MyUsageVo> getUserUsageList(int userNo) {
//		return ss.selectList("mypageR.getuserusagelist", userNo);
//	}
//	
//	public List<MyUsageVo> getDriverUsageList(int userNo) {
//		return ss.selectList("mypageR.getdriverusagelist", userNo);
//	}
	
	public int totalUserCnt(int userNo) {
		return ss.selectOne("mypageR.totalusercnt", userNo);
	}
	
	public List<MyUsageVo> getUserCrtPage(int userNo, int startRnum, int endRnum) {
		Map<String, Object> map = new HashMap<>();
		map.put("userNo", userNo);
		map.put("sNum", startRnum);
		map.put("eNum", endRnum);
		return ss.selectList("mypageR.getuserusagelist", map);
	}
	
	public List<MyUsageVo> getDriverCrtPage(int userNo, int startRnum, int endRnum) {
		Map<String, Object> map = new HashMap<>();
		map.put("userNo", userNo);
		map.put("sNum", startRnum);
		map.put("eNum", endRnum);
		return ss.selectList("mypageR.getdriverusagelist", map);
	}
	
	public int getUserSearchCnt(UsageSearchVo usVo, int userNo) {
		Map<String, Object> map = new HashMap<>();
		map.put("usVo", usVo);
		map.put("userNo", userNo);
		return ss.selectOne("mypageR.getusersearchcnt", map);
	}
	
	public List<MyUsageVo> getUserSearchCrtPage(int userNo, int startRnum, int endRnum, UsageSearchVo usVo) {
		Map<String, Object> map = new HashMap<>();
		map.put("usVo", usVo);
		map.put("userNo", userNo);
		map.put("sNum", startRnum);
		map.put("eNum", endRnum);
		return ss.selectList("mypageR.getusersearchlist", map);
	}
	
	public int totalDriverCnt(int userNo) {
		return ss.selectOne("mypageR.totaldrivercnt", userNo);
	}
	
	public int getDriverSearchCnt(UsageSearchVo usVo, int userNo) {
		Map<String, Object> map = new HashMap<>();
		map.put("usVo", usVo);
		map.put("userNo", userNo);
		return ss.selectOne("mypageR.getdriversearchcnt", map);
	}
	
	public List<MyUsageVo> getDriverSearchCrtPage(int userNo, int startRnum, int endRnum, UsageSearchVo usVo) {
		Map<String, Object> map = new HashMap<>();
		map.put("usVo", usVo);
		map.put("userNo", userNo);
		map.put("sNum", startRnum);
		map.put("eNum", endRnum);
		return ss.selectList("mypageR.getdriversearchlist", map);
	}
	
	
	
	public int totalUserCntResv(int userNo) {
		return ss.selectOne("mypageR.totalusercntresv", userNo);
	}
	public int getUserSearchCntResv(UsageSearchVo usVo, int userNo) {
		Map<String, Object> map = new HashMap<>();
		map.put("usVo", usVo);
		map.put("userNo", userNo);
		return ss.selectOne("mypageR.getusersearchcntresv", map);
	}
	
	public List<MyUsageVo> getUserSearchCrtPageResv(int userNo, int startRnum, int endRnum, UsageSearchVo usVo) {
		Map<String, Object> map = new HashMap<>();
		map.put("usVo", usVo);
		map.put("userNo", userNo);
		map.put("sNum", startRnum);
		map.put("eNum", endRnum);
		return ss.selectList("mypageR.getusersearchlistresv", map);
	}
	
	public List<MyUsageVo> getUserCrtPageResv(int userNo, int startRnum, int endRnum) {
		Map<String, Object> map = new HashMap<>();
		map.put("userNo", userNo);
		map.put("sNum", startRnum);
		map.put("eNum", endRnum);
		return ss.selectList("mypageR.getuserlistresv", map);
	}
	
	public List<MyUsageVo> getDriverCrtPageResv(int userNo, int startRnum, int endRnum) {
		Map<String, Object> map = new HashMap<>();
		map.put("userNo", userNo);
		map.put("sNum", startRnum);
		map.put("eNum", endRnum);
		return ss.selectList("mypageR.getdriverlistresv", map);
	}
	
	public int totalDriverCntResv(int userNo) {
		return ss.selectOne("mypageR.totaldrivercntresv", userNo);
	}
	
	
	public int getDriverSearchCntResv(UsageSearchVo usVo, int userNo) {
		Map<String, Object> map = new HashMap<>();
		map.put("usVo", usVo);
		map.put("userNo", userNo);
		return ss.selectOne("mypageR.getdriversearchcntresv", map);
	}

	public List<MyUsageVo> getDriverSearchCrtPageResv(int userNo, int startRnum, int endRnum, UsageSearchVo usVo) {
		Map<String, Object> map = new HashMap<>();
		map.put("usVo", usVo);
		map.put("userNo", userNo);
		map.put("sNum", startRnum);
		map.put("eNum", endRnum);
		return ss.selectList("mypageR.getdriversearchlistresv", map);
	}
	
	// 카정보수정

	/*
	 * // 수정 public int update(DriverLicenseVo dlvo) {
	 * System.out.println("DriverLicenseService>update()");
	 * 
	 * ss.update("mypageR.update", dlvo);
	 * 
	 * return 0;
	 * 
	 * }
	 */

}