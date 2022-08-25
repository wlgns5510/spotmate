package com.spotmate.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

	// 등록
	public void myDriverRegister(DriverLicenseVo dlvo) {
		System.out.println("DriverLicenseService>myDriverRegister()");  

		// 회원정보 업데이트
		int ucount = mrDao.update(dlvo);

		// 자동차정보 등록
		int icount = mrDao.myDriverInsert(dlvo);

		// 옵션등록
		int carNo = dlvo.getCarNo();

		List<Integer> chType = dlvo.getCh_type();  
		for (int i = 0; i < chType.size(); i++) {

			Map<String, Integer> carDetailMap = new HashMap<String, Integer>();
			carDetailMap.put("carNo", carNo);
			carDetailMap.put("detailNo", chType.get(i));
			mrDao.carDetailInsert(carDetailMap);
		}
	}

	
	public DriverLicenseVo getCarInfo(int userNo) {
		
		DriverLicenseVo dlvo = mrDao.getCarInfo(userNo);
		
		return dlvo;
	}
	
	//수정
	public void carInfoModify(DriverLicenseVo dlvo) {
		
		//유저정보수정
		int count= mrDao.userUpdate(dlvo);
		System.out.println(count + "건 유저정보 수정");
		
		count = mrDao.carUpdate(dlvo);
		System.out.println(count + "건 차정보 수정");

		List<Integer> chType = dlvo.getCh_type();  
		for (int i = 0; i < chType.size(); i++) {

			Map<String, Integer> carDetailMap = new HashMap<String, Integer>();
			carDetailMap.put("carNo", dlvo.getCarNo());
			carDetailMap.put("detailNo", chType.get(i));
			mrDao.carDetailUpdate(dlvo, carDetailMap);
		}
		
	}

	/*
	 * //수정 public int modify(DriverLicenseVo dlvo) {
	 * System.out.println("DriverLicenseService>modify()");
	 * 
	 * int count = mrDao.update(dlvo);
	 * 
	 * return count; }
	 */

}
