package com.spotmate.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spotmate.vo.CouponVo;

@Repository
public class MypageJDao {

	@Autowired
	private SqlSession salSession;
	
	
	//쿠폰리스트가져오기
	public void getCouponList() {
		List<CouponVo> couponList= salSession.selectList("mypagej.selectCouponList");
		
		System.out.println(couponList);
	}
	
}
