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
	
	//메이트 리스트 가져오기(옵션)
	public List<MateVo> getMateOptionList() {
		System.out.println("MateService >> getMateOptionList");
		
		List<MateVo> mateOptionList = mateDao.getMateOptionList();
		
		return mateOptionList;
	}
	
	//메이트 리스트 가져오기(장소)
		public List<MateVo> getMatePlaceList() {
			System.out.println("MateService >> getMatePlaceList");
			
			List<MateVo> matePlaceList = mateDao.getMatePlaceList();
			
			return matePlaceList;
		}
}
