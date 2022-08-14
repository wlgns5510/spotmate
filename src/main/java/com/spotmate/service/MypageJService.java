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
	
	
	//쿠폰리스트가져오기
	public List<CouponVo> getCouponList(String startDate, String endDate, String option1, String option2) {
		System.out.println("MypageJService > getCouponList");
		
		if("gas".equals(option1)) {
			option1 = "주유";
		}
		
		if("unused".equals(option2)) {
			option2= "미사용";
		}else if("use".equals(option2)) {
			option2= "사용완료";
		}
		
		
		Map<String, Object> pmap = new HashMap<String, Object>();
		pmap.put("startDate", startDate);
		pmap.put("endDate", endDate);
		pmap.put("option1", option1);
		pmap.put("option2", option2);
		
		
		List<CouponVo> couponList = mypagejDao.getCouponList(pmap);
		
		return couponList;

	}
}
