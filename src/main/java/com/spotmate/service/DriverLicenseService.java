package com.spotmate.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spotmate.dao.MypageRDao;
import com.spotmate.vo.DriverLicenseVo;

@Service
public class DriverLicenseService {

	@Autowired

	private MypageRDao mrDao;

	// 글 가져오기(글읽기, 수정폼, 댓글쓰기폼)
	/*
	 * public static DriverLicenseVo getReply(int dlvo, String type ) {
	 * System.out.println("DriverLicenseService/getReply"); DriverLicenseVo
	 * myDriverMain2 = null; return myDriverMain2;
	 */

	//등록
	public void myDriverRegister(DriverLicenseVo dlvo) {
		mrDao.myDriverInsert(dlvo);
		//System.out.println("END");
		
	}


	// 수정폼
	public DriverLicenseVo getUser() {

		System.out.println("DriverLicenseService>getUser()");

		DriverLicenseVo dlvo = mrDao.getUser();

		return dlvo;

	}
	
	//수정
	public int modify(DriverLicenseVo dlvo) {
		System.out.println("DriverLicenseService>modify()");
		
		int count = mrDao.update(dlvo);
		
		return count;
	}

	
	

}
