package com.spotmate.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spotmate.dao.MateDao;
import com.spotmate.vo.MateVo;

@Service
public class MateService {

	@Autowired
	private MateDao mateDao;
	
	
	//메이트 리스트 가져오기
	public List<MateVo> getMateList() {
		System.out.println("MateService >> getMateList");
		
		List<MateVo> mateList = mateDao.getMateList();
		
		return mateList;
	}	
	
	//메이트 리스트 가져오기(장소)
	public List<MateVo> getMatePlaceList() {
		System.out.println("MateService >> getMatePlaceList");
		
		List<MateVo> matePlaceList = mateDao.getMatePlaceList();
		
		return matePlaceList;
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
	
	
	
	

}