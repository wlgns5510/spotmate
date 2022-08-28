package com.spotmate.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spotmate.vo.CouponVo;
import com.spotmate.vo.PointVo;
import com.spotmate.vo.RefundVo;
import com.spotmate.vo.UserVo;

@Repository
public class MypageJDao {

	@Autowired
	private SqlSession sqlSession;

	// 쿠폰리스트가져오기
	public List<CouponVo> getCouponBList(CouponVo couponVo) {
		System.out.println("MypageJDao > getCouponBList");

		List<CouponVo> couponBList = sqlSession.selectList("mypagej.selectCouponBList", couponVo);

		return couponBList;
	}

	// 포인트충전
	public void chargePoint(PointVo pointVo) {
		System.out.println("MypageJDao > chargePoint");

		int count = sqlSession.insert("mypagej.insertPoint", pointVo);
		System.out.println(count + "건의 포인트 충전이 완료되었습니다.");
	}

	// 쿠폰전체글 갯수
	public int totalCouponCnt(CouponVo couponVo) {
		System.out.println("MypageJDao > totalCouponCnt");

		int totalCouponCnt = sqlSession.selectOne("mypagej.totalCouponCnt", couponVo);

		return totalCouponCnt;
	}

	// 쿠폰상품리스트
	public List<CouponVo> getCouponList(Map<String, Object> cMap) {
		System.out.println("MypageJService > getCouponList");

		List<CouponVo> couponList = sqlSession.selectList("mypagej.selectCouponList", cMap);

		return couponList;
	}

	// 쿠폰이미지가져오기
	public CouponVo getCouponImg(int couponNo) {
		System.out.println("MypageJService > getCouponImg");

		CouponVo couponVo = sqlSession.selectOne("mypagej.selectCouponImg", couponNo);

		return couponVo;
	};

	// 포인트리스트가져오기
	public List<PointVo> getPointList(PointVo pointVo) {
		System.out.println("MypageJService > getPointList");
		
		List<PointVo> pointList= sqlSession.selectList("mypagej.selectPointList", pointVo);
		
		return pointList;
	}
	
	// 포인트전체글 갯수
	public int totalPointCnt(PointVo pointVo) {
		System.out.println("MypageJDao > totalPointCnt");

		int totalPointCnt = sqlSession.selectOne("mypagej.totalPointCnt", pointVo);

		return totalPointCnt;
	}
	
	//쿠폰구매insert(CouponUsage)
	public int insertCouponUsage(CouponVo couponVo) {
		System.out.println("MypageJService > insertCouponUsage");
		
		int count = sqlSession.insert("mypagej.insertCouponUsage", couponVo);
		
		return count;
	}
	
	//쿠폰구매insert(pointUsage)
	public int insertpointUsage(CouponVo couponVo) {
		System.out.println("MypageJService > insertpointUsage");
		
		int count = sqlSession.insert("mypagej.insertpointUsage", couponVo);
		
		return count;
	}
	
	//포인트환불(RefundPoint)
	public int insertRefundPoint(RefundVo refundVo) {
		System.out.println("MypageJService > insertpointUsage");
		
		int count = sqlSession.insert("mypagej.insertRefundPoint", refundVo);
		
		return count;
	}
	
	// 환불리스트가져오기
	public List<RefundVo> getRefundList(RefundVo refundVo) {
		System.out.println("MypageJService > getRefundList");
		
		List<RefundVo> refundList= sqlSession.selectList("mypagej.selectrefundList", refundVo);
		
		return refundList;
	}
	
	// 환불전체글 갯수
	public int totalRefundCnt(RefundVo refundVo) {
		System.out.println("MypageJDao > totalRefundCnt");

		int totalRefundCnt = sqlSession.selectOne("mypagej.totalRefundCnt", refundVo);

		return totalRefundCnt;
	}

	//유저정보가져오기
	public UserVo getUser(int userNo) {
		System.out.println("MypageJDao > getUser");
		
		UserVo userVo = sqlSession.selectOne("mypagej.getUser", userNo);
		
		return userVo;
	}
	
	//개인정보수정
	public int updateUser(UserVo userVo) {
		System.out.println("MypageJService > updateUser");
		
		int count = sqlSession.update("mypagej.updateUser", userVo);
		
		return count;
	}
	
	//총 별점평균가져오기
	public float getavgStar(int userVo) {
		System.out.println("MypageJService > getvgStar");
		
		float avgStar = sqlSession.selectOne("mypagej.selectavgStar", userVo);
		
		return avgStar;
	}
	
	// 총포인트가져오기
	public int getTotalPoint(int userNo) {
		System.out.println("MypageJService > getTotalPoint");
		
		int totalPoint= sqlSession.selectOne("mypagej.selectTotalPoint", userNo);
		
		return totalPoint;
	}
	
	//미사용쿠폰갯수 가져오기
	public int getNouUsedCoupon(int userNo) {
		System.out.println("MypageJService > getNouUsedCoupon");
		
		int nouUsedCoupon= sqlSession.selectOne("mypagej.selectNouUsedCoupon", userNo);
		
		return nouUsedCoupon;
	}
	

}
