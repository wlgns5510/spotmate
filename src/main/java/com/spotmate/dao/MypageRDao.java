package com.spotmate.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spotmate.vo.DriverLicenseVo;

@Repository

public class MypageRDao {

	@Autowired
	private SqlSession ss;

	// 등록
	public int myDriverInsert(DriverLicenseVo dlvo) {
		int count = ss.insert("mypageR.myDriverinsert", dlvo);
		System.out.println(dlvo);
		System.out.println(count + "건 등록되었습니다.");

		return count;

	}

	// users테이블에 면허정보 업데이트
	public int update(DriverLicenseVo dlvo) {

		int count = ss.update("mypageR.myDriverUpdate", dlvo);
		System.out.println(count + "건 업데이트 되었습니다.");
		return count;

	}

	// carDetail 값 저장
	public int carDetailInsert(Map<String, Integer> carDetailMap) {

		int count = ss.insert("mypageR.carDetailInsert", carDetailMap);
		return count;

	}

	
	

	public DriverLicenseVo getCarInfo(int userNo) {
		DriverLicenseVo dlvo = ss.selectOne("mypageR.getCarInfo", userNo);
		
		return dlvo;
	}
	
	//유저정보수정
	public int userUpdate(DriverLicenseVo dlvo) {
		int count= ss.update("mypageR.userUpdate", dlvo);
		
		return count;
	}
	
	public int carUpdate(DriverLicenseVo dlvo) {
		int count = ss.update("mypageR.carUpdate", dlvo);
		return count;
	}
	
	public int carDetailDelete(DriverLicenseVo dlvo) {
		ss.delete("mypageR.carDetailDelete", dlvo);
		return 0;
	}
	
	public int carDetailUpdate(DriverLicenseVo dlvo, Map<String, Integer> carDetailMap) {
		int count = ss.insert("mypageR.carDetailInsert", carDetailMap);
		return count;
	}
	
	
	//카정보수정
	

	

/*// 수정 
	public int update(DriverLicenseVo dlvo) {
		System.out.println("DriverLicenseService>update()");

		ss.update("mypageR.update", dlvo);

		return 0;

	}*/

}