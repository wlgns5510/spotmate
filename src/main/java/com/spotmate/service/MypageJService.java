package com.spotmate.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spotmate.dao.MypageJDao;

@Service
public class MypageJService {

	@Autowired
	private MypageJDao mypagejDao;
	
	
	//쿠폰리스트가져오기
	public void getCouponList() {
		mypagejDao.getCouponList();

	}
}
