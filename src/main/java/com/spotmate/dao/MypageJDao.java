package com.spotmate.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spotmate.vo.CouponVo;

@Repository
public class MypageJDao {

	@Autowired
	private SqlSession salSession;
	
	
	//쿠폰리스트가져오기
	public List<CouponVo> getCouponList(Map<String, Object> pmap) {
		System.out.println("MypageJDao > getCouponList");
	
		List<CouponVo> couponList= salSession.selectList("mypagej.selectCouponList", pmap);
		
		return couponList;
	}
	
}
