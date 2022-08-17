package com.spotmate.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spotmate.vo.DriverLicenseVo;

@Repository

public class MypageRDao {

	@Autowired

	//필드 
	private SqlSession ss;

	//등록 
	public void myDriverInsert(DriverLicenseVo dlvo) {
		ss.insert("spotmate.myDriverinsert", dlvo);
		
	}
	
	//수정폼 
	public DriverLicenseVo getUser() {
		System.out.println("DriverLicenseService>getUser()");
		DriverLicenseVo dlvo= ss.selectOne("mypageR.updateform");
		return dlvo;
	}

	//수정
	public int update(DriverLicenseVo dlvo) {
		System.out.println("DriverLicenseService>update()");
		
		ss.update("mypageR.update",dlvo);
		
		return 0;
	}

	

}
