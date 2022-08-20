package com.spotmate.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spotmate.vo.MateVo;

@Repository
public class MateDao {

	@Autowired
	private SqlSession sqlSession;
	
	//메이트 리스트 가져오기
	public List<MateVo> getMateList(){
		System.out.println("MateDao >> getMateList");
		
		List<MateVo> mateList = sqlSession.selectList("mate.selectMateList");
		
		return mateList;
	}
	
	//메이트 리스트 가져오기(옵션)
	public List<MateVo> getMateOptionList(){
		System.out.println("MateDao >> getMateOptionList");
		
		List<MateVo> mateOptionList = sqlSession.selectList("mate.selectMateOptionList");
		
		return mateOptionList;
	}
	
	//메이트 리스트 가져오기(장소)
	public List<MateVo> getMatePlaceList(){
		System.out.println("MateDao >> getMatePlaceList");
		
		List<MateVo> matePlaceList = sqlSession.selectList("mate.selectMatePlaceList");
		
		return matePlaceList;
	}
	
	//해당 mate의 spotmateDB정보가져오기
	public MateVo deepMateRead(int mateNo) {
		System.out.println("MateDao >> deepMateRead");
		
		return sqlSession.selectOne("mate.deepMateRead", mateNo);
	}
	
	//해당 mate의 placeDB정보가져오기
	public List<MateVo> deepPlaceRead(int mateNo) {
		System.out.println("MateDao >> deepPlaceRead");
		
		return sqlSession.selectList("mate.deepPlaceRead", mateNo);
	}
}
