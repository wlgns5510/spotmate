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
	public Map<String, Object> deepMateRead(int no) {
		System.out.println("MateService >> deepMateRead");
		
		MateVo mateVo = mateDao.deepMateRead(no);	//해당 메이트에 관한 정보
		MateVo mateDriverVo = mateDao.deepMateDriverRead(no);	//해당 메이트의 운전자,차량정보
		List<MateVo> matePlaceList = mateDao.deepPlaceRead(no);	//해당 메이트의 출발지, 경유지, 도착지정보
		List<MateVo> mateDetailList = mateDao.deepDetailRead(no);	//해당 메이트의 운전자가 설정한 상세조건
		List<CarpoolVo> reviewList = mateDao.deepReviewList(no);	//해당 메이트의 운전자의 별점리스트
		CarpoolVo reviewAvg = mateDao.deepReviewAvg(no);	//해당 메이트 운전자의 별점 평균
		
		Map<String, Object> MateDriverMap = new HashMap<String, Object>();
		MateDriverMap.put("mateVo", mateVo);
		MateDriverMap.put("mateDriverVo", mateDriverVo);
		MateDriverMap.put("matePlaceList", matePlaceList);
		MateDriverMap.put("mateDetailList", mateDetailList);
		MateDriverMap.put("reviewList", reviewList);
		MateDriverMap.put("reviewAvg", reviewAvg);
		
		return MateDriverMap;	
	}
	
	
	
	
	
	
	
	
	
	
	
	
			
	

}