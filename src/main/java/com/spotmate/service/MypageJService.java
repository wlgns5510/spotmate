package com.spotmate.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spotmate.dao.MypageJDao;
import com.spotmate.vo.CouponVo;

@Service
public class MypageJService {

	@Autowired
	private MypageJDao mypagejDao;

	// 쿠폰리스트가져오기
	public Map<String, Object> getCouponList(String startDate, String endDate, String option1, String option2, int crtPage) {
		System.out.println("MypageJService > getCouponList");
		
		/////////////리스트//////////////
		
		//페이지당 글갯수
		int listCnt = 10;
		
		//전체페이지
		crtPage = (crtPage > 0) ? crtPage : (crtPage = 1);
		
		//시작글번호
		int startRnum = (crtPage - 1)*listCnt + 1;
		
		//끝글번호
		int endRnum = (startRnum + listCnt) - 1;
		
		
		Map<String, Object> pMap = new HashMap<String, Object>();
		pMap.put("startDate", startDate);
		pMap.put("endDate", endDate);
		pMap.put("option1", option1);
		pMap.put("option2", option2);
		pMap.put("startRnum", startRnum);
		pMap.put("endRnum", endRnum);

		List<CouponVo> couponList = mypagejDao.getCouponList(pMap);

		/////////////페이징계산//////////////
		
		//전체글갯수
		int totalCouponCnt = mypagejDao.totalCouponCnt();
		System.out.println(totalCouponCnt);
		
		//페이지당 버튼 갯수
		int pageBtnCount = 10;
		
		//마지막 버튼 번호
		int endPageBtnNo = (int)Math.ceil(crtPage/(double)pageBtnCount)*pageBtnCount;
		
		//시작 버튼 번호
		int startPageBtnNo = (endPageBtnNo - pageBtnCount) + 1;
		
		System.out.println(crtPage + "," + startPageBtnNo + "," + endPageBtnNo);
		
		//다음 화살표 유무
		boolean next = false;
		if(listCnt * endPageBtnNo < totalCouponCnt) {
			next = true;
		
		}else {
			endPageBtnNo = (int)Math.ceil(totalCouponCnt/(double)listCnt);
		
		}
		
		//이전 화살표 유무
		boolean prev = false;
		if(startPageBtnNo !=1) {
			prev = true;
			
		}
		
		//마지막페이지번호
		int endPageNo = (int)Math.ceil(totalCouponCnt/(double)listCnt);
		
		
		System.out.println(prev + "," + startPageBtnNo + "," + endPageBtnNo + "," + next + "," + endPageNo);
		
		Map<String, Object> cMap = new HashMap<String, Object>();
		cMap.put("couponList", couponList);
		cMap.put("prev", prev);
		cMap.put("next", next);
		cMap.put("endPageBtnNo", endPageBtnNo);
		cMap.put("startPageBtnNo", startPageBtnNo);
		cMap.put("endPageNo", endPageNo);
		System.out.println(cMap);
		
		return cMap;

	}

	// 포인트충전
	public void chargePoint(Long point) {
		System.out.println("MypageJService > chargePoint");

		mypagejDao.chargePoint(point);
	}
	

		
	

}
