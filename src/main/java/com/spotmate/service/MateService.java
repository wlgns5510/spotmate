package com.spotmate.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spotmate.dao.MateDao;
import com.spotmate.vo.CarpoolVo;
import com.spotmate.vo.DetailOptVo;
import com.spotmate.vo.MateVo;

@Service
public class MateService {

	@Autowired
	private MateDao mateDao;
	
	
	//메이트 리스트 가져오기
	public Map<String, Object> getMateList(MateVo mateVo) {
		System.out.println("MateService >> getMateList");
		
		int tmpPage = mateVo.getCrtPage();
		
		//페이지당 글갯수(10개)
		int listCnt = 4;
		
		//현재페이지
		int crtPage = (tmpPage > 0) ? tmpPage : (crtPage = 1);	//다른값 넣으면 1로 변환
		
		//시작 글번호
		int startRnum = (crtPage-1)*listCnt + 1;
		
		//끝 글번호
		int endRnum = (startRnum + listCnt) - 1;
		
		
		mateVo.setStartRnum(startRnum);
		mateVo.setEndRnum(endRnum);
		
		
		List<MateVo> mateList = mateDao.getMateList(mateVo);
		
		
		//mateList의 크기에 맞게 랜덤숫자도 넣어줌
		Random random = new Random();
		for(int i=0; i<mateList.size(); i++) {
			mateList.get(i).setRandomImgNo(random.nextInt(28));			
		}
		
		
		//옵션리스트 가져오기
		List<DetailOptVo> optList = mateDao.getOptList();
		
		Map<String, Object> mateListMap = new HashMap<String, Object>();
		mateListMap.put("mateList", mateList);
		mateListMap.put("optList", optList);
		System.out.println(optList);
		
		
		return mateListMap;
	}		
	
	//해당 메이트에 관한 정보
	public Map<String, Object> deepMateRead(int no, MateVo mVo) {
		System.out.println("MateService >> deepMateRead");
		
		//해당 메이트에 관한 정보
		MateVo mateVo = mateDao.deepMateRead(no);	
		
		//해당 메이트의 운전자,차량정보
		MateVo mateDriverVo = mateDao.deepMateDriverRead(no);	
		
		//해당 메이트의 출발지, 경유지, 도착지정보
		List<MateVo> matePlaceList = mateDao.deepPlaceRead(no);	
		
		//해당 메이트의 운전자가 설정한 상세조건
		List<MateVo> mateDetailList = mateDao.deepDetailRead(no);	
		
		//해당 메이트의 운전자의 별점리스트
		List<CarpoolVo> reviewList = mateDao.deepReviewList(no);	
		
		//해당 메이트 운전자의 별점 평균
		CarpoolVo reviewAvg = mateDao.deepReviewAvg(no);	
		
		//Deep페이지 차량 추천 리스트 박스
		mVo.setStartRnum(1);
		mVo.setEndRnum(4);
		List<MateVo> recommendList = mateDao.getMateList(mVo);
		
		
		Map<String, Object> mateDriverMap = new HashMap<String, Object>();
		mateDriverMap.put("mateVo", mateVo);
		mateDriverMap.put("mateDriverVo", mateDriverVo);
		mateDriverMap.put("matePlaceList", matePlaceList);
		mateDriverMap.put("mateDetailList", mateDetailList);
		mateDriverMap.put("reviewList", reviewList);
		mateDriverMap.put("reviewAvg", reviewAvg);
		mateDriverMap.put("recommendList", recommendList);
		
		return mateDriverMap;	
	}
	
	//드라이버 
	
	//메이트 user 예약내역 DB에 저장하기
	public int saveMate(int userNo, MateVo mateVo) {
		System.out.println("MateService >> saveMate");
		
		mateVo.setUserNo(userNo);
		
		int mateNo = mateVo.getSpotMateNo();		
		int people = mateVo.getPeople();
		int canRide = mateDao.chkPeople(mateNo);
		int usablePoint = mateDao.getTotalPoint(userNo);
		if(canRide < people) {
			return -1;
		} else if(usablePoint < mateVo.getPoint()) {
			return -2;
		} else if(canRide >= people && usablePoint >= mateVo.getPoint()) {
			Map<String, Object> map = new HashMap<>();
			map.put("people", people);
			map.put("mateNo", mateNo);
			mateDao.updateReservPeople(map);	//인원수 업데이트(스팟메이트)
			mateDao.saveMate(mateVo);	//예약내역 저장
			mateDao.savePoint(mateVo);
			return 0;
		} else {
			return -1;
		}
		
		
	}
	
	
	
	
	
	
	
	
	
			
	

}