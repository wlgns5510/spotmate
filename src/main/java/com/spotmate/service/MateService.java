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
		
		//페이지당 글갯수(16개)
		int listCnt = 16;
		
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
	
	
	
	//메이트 user 예약내역 DB에 저장하기
	public int saveMate(int userNo, MateVo mateVo) {
		System.out.println("MateService >> saveMate");
		
		mateVo.setUserNo(userNo);
		
		int mateNo = mateVo.getSpotMateNo();
		System.out.println("메이트번호: " + mateNo);
		
		int people = mateVo.getPeople();
		System.out.println("신청한 인원수: " + people);
		
		int canRide = mateDao.chkPeople(mateNo);
		System.out.println("탑승 가능한 인원수: " + canRide);
		
		int usablePoint = mateDao.getTotalPoint(userNo);
		System.out.println("사용 가능 포인트: " + usablePoint);
		System.out.println("필요 포인트: " + mateVo.getPoint());
		System.out.println(mateVo);
		if(canRide < people) {	//이용자가 선택한 인원 메이트가능한 인원 보다 많을때 --> -1
			System.out.println("인원초과");
			return -1;
		} else if(usablePoint < mateVo.getPoint()) {	//이용자의 포인트가 필요포인트 보다 적을때 --> -2
			System.out.println("잔액부족");
			return -2;
		} else if(canRide >= people && usablePoint >= mateVo.getPoint()) {	//정상적으로 탑승하기가 완료됐을때 --> 0
			System.out.println("탑승완료");
			Map<String, Object> map = new HashMap<>();
			map.put("people", people);
			map.put("mateNo", mateNo);
			mateDao.updateReservPeople(map);	//인원수 업데이트(스팟메이트)
			mateDao.saveMate(mateVo);	//예약내역 저장
			mateDao.savePoint(mateVo);
			return 0;
		} else {
			System.out.println("탑승실패");
			return -1;
		}
		
		
	}
	

}