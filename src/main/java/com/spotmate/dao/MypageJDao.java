package com.spotmate.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spotmate.vo.CouponVo;

@Repository
public class MypageJDao {

	@Autowired
	private SqlSession sqlSession;

	// 쿠폰리스트가져오기
	public List<CouponVo> getCouponList(Map<String, Object> pMap) {
		System.out.println("MypageJDao > getCouponList");

		List<CouponVo> couponList = sqlSession.selectList("mypagej.selectCouponList", pMap);
 
		return couponList;
	}

	// 포인트충전
	public void chargePoint(Long point) {
		System.out.println("MypageJDao > chargePoint");
		
		int count = sqlSession.insert("mypagej.insertPoint", point);
		System.out.println(count + "건의 포인트 충전이 완료되었습니다.");
	}
	
	// 쿠폰전체글 갯수
	public int totalCouponCnt() {
		System.out.println("MypageJDao > totalCouponCnt");
		
		int totalCouponCnt = sqlSession.selectOne("mypagej.totalCouponCnt");
		
		return totalCouponCnt;
	}
	


}
