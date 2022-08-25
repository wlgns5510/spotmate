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
	
	//해당 메이트가 반려동물가능여부를 체크했는지 확인
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
	
	//해당 메이트에 관한 정보
	public MateVo deepMateRead(int no) {
		System.out.println("MateDao >> deepMateRead");
		
		return sqlSession.selectOne("mate.deepMateRead", no);
	}
	
	//해당 메이트의 운전자,차량정보
	public MateVo deepMateDriverRead(int no) {
		System.out.println("MateDao >> deepMateDriverRead");
		
		return sqlSession.selectOne("mate.deepMateDriverRead", no);
	}
	
	//해당 메이트의 출발지, 경유지, 도착지정보
	public List<MateVo> deepPlaceRead(int no) {
		System.out.println("MateDao >> deepPlaceRead");
		
		return sqlSession.selectList("mate.deepPlaceRead", no);
	}
	
	//해당 메이트의 운전자가 설정한 상세조건
	public List<MateVo> deepDetailRead(int no) {
		System.out.println("MateDao >> deepDetailRead");
		
		return sqlSession.selectList("mate.deepDetailRead", no);
	}
}
