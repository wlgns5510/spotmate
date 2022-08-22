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
	public List<CouponVo> getCouponBList(Map<String, Object> pMap) {
		System.out.println("MypageJDao > getCouponBList");

		List<CouponVo> couponBList = sqlSession.selectList("mypagej.selectCouponBList", pMap);
 
		return couponBList;
	}

	// 포인트충전
	public void chargePoint(Long point) {
		System.out.println("MypageJDao > chargePoint");
		
		int count = sqlSession.insert("mypagej.insertPoint", point);
		System.out.println(count + "건의 포인트 충전이 완료되었습니다.");
	}
	
	// 쿠폰전체글 갯수
	public int totalCouponCnt(int userNo) {
		System.out.println("MypageJDao > totalCouponCnt");
		
		int totalCouponCnt = sqlSession.selectOne("mypagej.totalCouponCnt", userNo);
		
		return totalCouponCnt;
	}
	
	//쿠폰상품리스트
	public List<CouponVo> getCouponList() {
		System.out.println("MypageJService > getCouponList");
		
		List<CouponVo> couponList= sqlSession.selectList("mypagej.selectCouponList");
		
		return couponList;
	}

	//쿠폰이미지가져오기
	public String getCouponImg(int couponNo) {
		System.out.println("MypageJService > getCouponImg");
		
		String couponImg = sqlSession.selectOne("mypagej.selectCouponImg", couponNo);
		
		return couponImg;
	};
}
