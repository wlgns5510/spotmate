package com.spotmate.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spotmate.dao.MateDao;
import com.spotmate.vo.CarpoolVo;
import com.spotmate.vo.MateVo;

@Service
public class MateService {

	@Autowired
	private MateDao mateDao;
	
	
	//메이트 리스트 가져오기
	public List<MateVo> getMateList(MateVo mateVo) {
		System.out.println("MateService >> getMateList");
		
		List<MateVo> mateList = mateDao.getMateList(mateVo);
		
		return mateList;
	}		
	
	//해당 메이트에 관한 정보
	public MateVo deepMateRead(int no) {
		System.out.println("MateService >> deepMateRead");
		
		return mateDao.deepMateRead(no);
	}
	
	//해당 메이트의 운전자,차량정보
	public MateVo deepMateDriverRead(int no) {
		System.out.println("MateService >> deepMateDriverRead");
		
		return mateDao.deepMateDriverRead(no);
	}
	
	//해당 메이트의 출발지, 경유지, 도착지정보
	public List<MateVo> deepPlaceRead(int no) {
		System.out.println("MateService >> deepPlaceRead");
		
		return mateDao.deepPlaceRead(no);
	}
	
	//해당 메이트의 운전자가 설정한 상세조건
	public List<MateVo> deepDetailRead(int no) {
		System.out.println("MateService >> deepDetailRead");
		
		return mateDao.deepDetailRead(no);
	}
	
	//해당 메이트의 운전자의 별점리스트
	public List<CarpoolVo> deepReviewList(int no) {
		System.out.println("MateService >> deepReviewList");
		
		return mateDao.deepReviewList(no);
	}
	
	//해당 메이트 운전자의 별점 평균
	public CarpoolVo deepReviewAvg(int no) {
		System.out.println("MateService >> deepReviewAvg");
		
		return mateDao.deepReviewAvg(no);
	}
	
	// user예약내역 DB 저장
	public int saveMate(int userNo, CarpoolVo carpoolVo) {
		System.out.println("MateService > saveMate");

		carpoolVo.setUserNo(userNo);

		mateDao.saveMate(carpoolVo);
		int mateNo = carpoolVo.getSpotMateNo();
		int people = carpoolVo.getPeople();
		int canRide = mateDao.chkPeople(mateNo);
		if(canRide >= people) {
			Map<String, Object> map = new HashMap<>();
			map.put("people", people);
			map.put("mateNo", mateNo);
			mateDao.updateReservPeople(map);
			return 0;
		} else {
			return -1;
		}
			
	}

}