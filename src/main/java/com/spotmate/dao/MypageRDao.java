package com.spotmate.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spotmate.vo.MyUsageVo;
import com.spotmate.vo.ReviewInfoVo;
import com.spotmate.vo.ReviewVo;
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
	public List<myQnaVo> getMyQnaList(int userNo){
		List<myQnaVo> myqnaList = ss.selectList("mypageR.selectmqaList", userNo);
		return myqnaList;
	}
	
	
	



	

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
	
	public int endResv(Map<String, Object> map) {
		return ss.update("mypageR.endResv", map);
	}
	
	public int getResvNo(Map<String, Object> map) {
		return ss.insert("mypageR.getResvNo", map);
	}
	
	public void driverGetPoint(Map<String, Object> map) {
		ss.insert("mypageR.driverGetPoint", map);
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
	
	public int getMateNoByResvNo(int resvNo) {
		return ss.selectOne("mypageR.getMateNoByResvNo", resvNo);
	}
	
	public ReviewInfoVo forReviewInfo(Map<String, Object> map) {
		return ss.selectOne("mypageR.forReviewInfo", map);
	}
	
	public void insertUserReview(ReviewVo rVo) {
		ss.insert("mypageR.insertUserReview", rVo);
	}
	public void afterInsertUserReview(int resvNo) {
		ss.update("mypageR.afterInsertUserReview", resvNo);
	}
	
	public List<Map<String, Object>> getPassengerList(Map<String, Object> map) {
		return ss.selectList("mypageR.getPassengerList", map);
	}
	
	public List<Integer> getReviewedPassengerList(int resvNo) {
		return ss.selectList("mypageR.getReviewedPassengerList", resvNo);
	}
	
	public void insertDriverReview(ReviewVo rVo) {
		ss.insert("mypageR.insertDriverReview", rVo);
	}
	public void afterInsertDriverReview(int resvNo) {
		ss.update("mypageR.afterInsertDriverReview", resvNo);
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