package com.spotmate.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spotmate.vo.DriverLicenseVo;

@Repository
public class DriverLicenseDao {

	@Autowired
	private SqlSession ss;
	

	// 드라이버 + 카 정보 가져오기
	public DriverLicenseVo getCarInfo(int userNo) {
		System.out.println("MypageRDao>getCarInfo");
		DriverLicenseVo dlvo = ss.selectOne("driverLicense.getCarInfo", userNo);
		return dlvo;
	}

		
	//등록한 차 옵션 정보 가져오기
	public List<Integer> getCarDetail(int userNo) {
		System.out.println("MypageRDao>getCarDetail");
		List<Integer> carDetailList = ss.selectList("driverLicense.selectCarDetailList", userNo);
		return carDetailList;
	}
		
	
	
	// 유저정보수정(최초등록+수정)
	public int userUpdate(DriverLicenseVo dlvo) {
		System.out.println("MypageRDao>userUpdate");
		int count = ss.update("driverLicense.userUpdate", dlvo);

		return count;
	}
	
	// 카정보업데이트(최초등록+수정)
	public int carUpdate(DriverLicenseVo dlvo) {
		System.out.println("MypageRDao>carUpdate");
		int count = ss.update("driverLicense.carUpdate", dlvo);
		return count;
	}

	
	// 카정보업데이트(수정할때 파일 정보는 없데이트 안함)
	public int carUpdateNoFile(DriverLicenseVo dlvo) {
		System.out.println("MypageRDao>carUpdateNoFile");
		
		int count = ss.update("driverLicense.carUpdateNoFile", dlvo);
		return count;
	}
	
	
	// 특정 카의 상세옵션 삭제하기
	public int carDetailDelete(DriverLicenseVo dlvo) {
		System.out.println("MypageRDao>carDetailDelete");
		int count = ss.delete("driverLicense.carDetailDelete", dlvo);
		return count;
	}
	
	
	//특정카의 상세옵션 추가하기
	public int carDetailUpdate(Map<String, Integer> carDetailMap) {
		System.out.println("MypageRDao>carDetailUpdate");
		int count = ss.insert("driverLicense.carDetailInsert", carDetailMap);
		return count;
	}

	
	
}
