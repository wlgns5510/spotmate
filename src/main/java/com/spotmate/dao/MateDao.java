package com.spotmate.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spotmate.vo.CarpoolVo;
import com.spotmate.vo.MateVo;

@Repository
public class MateDao {

	@Autowired
	private SqlSession sqlSession;
	
	//메이트 리스트 가져오기
	public List<MateVo> getMateList(MateVo mateVo){
		System.out.println("MateDao >> getMateList");
		
		List<MateVo> mateList = sqlSession.selectList("mate.selectMateList", mateVo);
		
		return mateList;
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
	
	//해당 메이트의 운전자의 별점리스트
	public List<CarpoolVo> deepReviewList(int no) {
		System.out.println("MateDao >> deepReviewList");
		
		return sqlSession.selectList("mate.deepReviewList", no);
		
	}
}
