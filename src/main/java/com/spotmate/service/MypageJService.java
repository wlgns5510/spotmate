package com.spotmate.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spotmate.dao.MypageJDao;
import com.spotmate.vo.CouponVo;
import com.spotmate.vo.PointVo;
import com.spotmate.vo.RefundVo;
import com.spotmate.vo.UserVo;

@Service
public class MypageJService {

	@Autowired
	private MypageJDao mypagejDao;

	// 쿠폰리스트가져오기
	public Map<String, Object> getCouponBList(CouponVo couponVo, int userNo) {
		System.out.println("MypageJService > getCouponBList");

		couponVo.setUserNo(userNo);

		int crtPage = couponVo.getCrtPage();

		///////////// 리스트//////////////

		// 페이지당 글갯수
		int listCnt = 5;

		// 전체페이지
		crtPage = (crtPage > 0) ? crtPage : (crtPage = 1);

		// 시작글번호
		int startRnum = (crtPage - 1) * listCnt + 1;

		// 끝글번호
		int endRnum = (startRnum + listCnt) - 1;

		// 시작글번호 끝글번호 대입
		couponVo.setStartRnum(startRnum);
		couponVo.setEndRnum(endRnum);

		List<CouponVo> couponBList = mypagejDao.getCouponBList(couponVo);

		///////////// 페이징계산//////////////

		// 전체글갯수
		int totalCouponCnt = mypagejDao.totalCouponCnt(couponVo);
		System.out.println(totalCouponCnt);

		// 페이지당 버튼 갯수
		int pageBtnCount = 5;

		// 마지막 버튼 번호
		int endPageBtnNo = (int) Math.ceil(crtPage / (double) pageBtnCount) * pageBtnCount;

		// 시작 버튼 번호
		int startPageBtnNo = (endPageBtnNo - pageBtnCount) + 1;

		System.out.println(crtPage + "," + startPageBtnNo + "," + endPageBtnNo);

		// 다음 화살표 유무
		boolean next = false;
		if (listCnt * endPageBtnNo < totalCouponCnt) {
			next = true;

		} else {
			endPageBtnNo = (int) Math.ceil(totalCouponCnt / (double) listCnt);

		}

		// 이전 화살표 유무
		boolean prev = false;
		if (startPageBtnNo != 1) {
			prev = true;

		}

		Map<String, Object> cMap = new HashMap<String, Object>();
		cMap.put("couponBList", couponBList);
		cMap.put("prev", prev);
		cMap.put("next", next);
		cMap.put("endPageBtnNo", endPageBtnNo);
		cMap.put("startPageBtnNo", startPageBtnNo);

		return cMap;

	}

	// 포인트충전
	public void chargePoint(Long point, int userNo) {
		System.out.println("MypageJService > chargePoint");

		PointVo pointVo = new PointVo();

		pointVo.setPoint(point);
		pointVo.setUserNo(userNo);

		mypagejDao.chargePoint(pointVo);
	}

	// 쿠폰상품리스트

	public List<CouponVo> getCouponList(String minValue, String maxValue, String option1, String option2) {
		System.out.println("MypageJService > getCouponList");

		Map<String, Object> cMap = new HashMap<String, Object>();

		cMap.put("minValue", minValue);
		cMap.put("maxValue", maxValue);
		cMap.put("option1", option1);
		cMap.put("option2", option2);

		List<CouponVo> couponList = mypagejDao.getCouponList(cMap);

		System.out.println(cMap);

		System.out.println(couponList);

		return couponList;
	}

	// CouponUseMain
	public Map<String, Object> getCouponUseMain(int couponNo, int userNo) {
		System.out.println("MypageJService > getCouponUseMain");

		CouponVo couponVo = mypagejDao.getCouponImg(couponNo);

		int totalPoint = mypagejDao.getTotalPoint(userNo);

		Map<String, Object> cuMap = new HashMap<String, Object>();

		cuMap.put("couponVo", couponVo);
		cuMap.put("totalPoint", totalPoint);
		System.out.println(totalPoint);

		return cuMap;
	};

	// 포인트리스트가져오기
	public Map<String, Object> getPointList(PointVo pointVo, int userNo) {
		System.out.println("MypageJService > getPointList");

		pointVo.setUserNo(userNo);

		int crtPage = pointVo.getCrtPage();

		///////////// 리스트//////////////

		// 페이지당 글갯수
		int listCnt = 5;

		// 전체페이지
		crtPage = (crtPage > 0) ? crtPage : (crtPage = 1);

		// 시작글번호
		int startRnum = (crtPage - 1) * listCnt + 1;

		// 끝글번호
		int endRnum = (startRnum + listCnt) - 1;

		// 시작글번호 끝글번호 대입
		pointVo.setStartRnum(startRnum);
		pointVo.setEndRnum(endRnum);

		List<PointVo> pointList = mypagejDao.getPointList(pointVo);

		///////////// 페이징계산//////////////

		// 전체글갯수
		int totalCouponCnt = mypagejDao.totalPointCnt(pointVo);
		System.out.println(totalCouponCnt);

		// 페이지당 버튼 갯수
		int pageBtnCount = 5;

		// 마지막 버튼 번호
		int endPageBtnNo = (int) Math.ceil(crtPage / (double) pageBtnCount) * pageBtnCount;

		// 시작 버튼 번호
		int startPageBtnNo = (endPageBtnNo - pageBtnCount) + 1;

		System.out.println(crtPage + "," + startPageBtnNo + "," + endPageBtnNo);

		// 다음 화살표 유무
		boolean next = false;
		if (listCnt * endPageBtnNo < totalCouponCnt) {
			next = true;

		} else {
			endPageBtnNo = (int) Math.ceil(totalCouponCnt / (double) listCnt);

		}

		// 이전 화살표 유무
		boolean prev = false;
		if (startPageBtnNo != 1) {
			prev = true;

		}

		Map<String, Object> cMap = new HashMap<String, Object>();
		cMap.put("pointList", pointList);
		cMap.put("prev", prev);
		cMap.put("next", next);
		cMap.put("endPageBtnNo", endPageBtnNo);
		cMap.put("startPageBtnNo", startPageBtnNo);

		

		for (PointVo p : pointList) {
			if ("히치하이크".equals(p.getType()) && p.getPoint() > 0 || "메이트".equals(p.getType()) && p.getPoint() > 0
					|| "카풀1회성".equals(p.getType()) && p.getPoint() > 0
					|| "카풀정기권".equals(p.getType()) && p.getPoint() > 0) {
				p.setpType("드라이버");
			}
			if ("히치하이크".equals(p.getType()) && p.getPoint() < 0 || "메이트".equals(p.getType()) && p.getPoint() < 0
					|| "카풀1회성".equals(p.getType()) && p.getPoint() < 0
					|| "카풀정기권".equals(p.getType()) && p.getPoint() < 0) {
				p.setpType("유저");
			}

		}

		System.out.println(pointList);

		return cMap;
	}

	// 쿠폰구매
	public void couponPurchase(int userNo, CouponVo couponVo) {
		System.out.println("MypageJService > couponPurchase");

		couponVo.setUserNo(userNo);

		System.out.println(couponVo);
		int count = mypagejDao.insertCouponUsage(couponVo);

		int count2 = mypagejDao.insertpointUsage(couponVo);

		System.out.println(count + "건 등록" + count2 + "건등록");

	}
	
	//환불리스트가져오기
	public Map<String, Object> getRefundList(RefundVo refundVo, int userNo) {
		System.out.println("MypageJService > getRefundList");

		refundVo.setUserNo(userNo);

		int crtPage = refundVo.getCrtPage();

		///////////// 리스트//////////////

		// 페이지당 글갯수
		int listCnt = 5;

		// 전체페이지
		crtPage = (crtPage > 0) ? crtPage : (crtPage = 1);

		// 시작글번호
		int startRnum = (crtPage - 1) * listCnt + 1;

		// 끝글번호
		int endRnum = (startRnum + listCnt) - 1;

		// 시작글번호 끝글번호 대입
		refundVo.setStartRnum(startRnum);
		refundVo.setEndRnum(endRnum);

		List<RefundVo> refundList = mypagejDao.getRefundList(refundVo);

		///////////// 페이징계산//////////////

		// 전체글갯수
		int totalRefundCnt = mypagejDao.totalRefundCnt(refundVo);

		// 페이지당 버튼 갯수
		int pageBtnCount = 5;

		// 마지막 버튼 번호
		int endPageBtnNo = (int) Math.ceil(crtPage / (double) pageBtnCount) * pageBtnCount;

		// 시작 버튼 번호
		int startPageBtnNo = (endPageBtnNo - pageBtnCount) + 1;


		// 다음 화살표 유무
		boolean next = false;
		if (listCnt * endPageBtnNo < totalRefundCnt) {
			next = true;

		} else {
			endPageBtnNo = (int) Math.ceil(totalRefundCnt / (double) listCnt);

		}

		// 이전 화살표 유무
		boolean prev = false;
		if (startPageBtnNo != 1) {
			prev = true;

		}

		Map<String, Object> cMap = new HashMap<String, Object>();
		cMap.put("refundList", refundList);
		cMap.put("prev", prev);
		cMap.put("next", next);
		cMap.put("endPageBtnNo", endPageBtnNo);
		cMap.put("startPageBtnNo", startPageBtnNo);
		
		return cMap;

	}
	
	
	//포인트 환불
	public void refundPoint(RefundVo refundVo, int userNo) {
		System.out.println("MypageJService > refundPoint");
		
		refundVo.setUserNo(userNo);
		
		int count = mypagejDao.insertRefundPoint(refundVo);
		
		System.out.println(count + "건 환불신청이 완료되었습니다.");
		
	}
	
	//유저정보가져오기
	public UserVo getUser(int userNo) {
		System.out.println("MypageJService > getUser");
		
		UserVo userVo = mypagejDao.getUser(userNo);
		
		return userVo;
	}
	
	//개인정보수정
	public void userModify(UserVo userVo, int userNo) {
		System.out.println("MypageJService > userModify");
		
		userVo.setNo(userNo);
		
		int count = mypagejDao.updateUser(userVo);
		
		System.out.println(count + "건 수정되었습니다.");
	}
}
