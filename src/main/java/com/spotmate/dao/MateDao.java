package com.spotmate.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spotmate.vo.CarpoolVo;
import com.spotmate.vo.DetailOptVo;
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
	
	//해당 메이트 운전자의 별점 평균
	public CarpoolVo deepReviewAvg(int no) {
		System.out.println("MateDao >> deepReviewAvg");
		CarpoolVo cVo = sqlSession.selectOne("mate.deepReviewAvg", no);
		return cVo;
	}
	
	//조건 모두 가져오기
	public List<DetailOptVo> getOptList() {
		System.out.println("MateDao >> getOptList");
		
		List<DetailOptVo> optList =  sqlSession.selectList("mate.getOptList");
		
		return optList;
	}
	
	//메이트 user 예약내역 DB에 저장하기
	public void saveMate(MateVo mateVo) {
		System.out.println("MateDao >> saveMate");
		
		
		sqlSession.insert("mate.insertUserMateInfo",mateVo);		
	}
	
	//인원체크하기(차량 탑승가능인원)
	public int chkPeople(int mateNo) {
		System.out.println("MateDao >> chkPeople");
	
		return sqlSession.selectOne("mate.chkpeople", mateNo);
	}
	
	//인원체크하기(탑승할 인원), 차량 탑승가능인원에서 탑승할 인원을 빼준다.
	public void updateReservPeople(Map<String,Object> map) {
		System.out.println("MateDao >> updateReservPeople");
		
		sqlSession.update("mate.updatereservpeople", map);
	}
	
	//user 예약시 포인트 DB 저장
	public void savePoint(MateVo mateVo) {
		System.out.println("MateDao >> savePoint");
		
		sqlSession.insert("mate.insertUserMatePoint", mateVo);
		
	}
	
	//user가 갖고 있는 포인트 잔액
	public int getTotalPoint(int userNo) {
		System.out.println("MateDao >> getTotalPoint");
		
		int totalPoint = sqlSession.selectOne("mypagej.selectTotalPoint", userNo);
		
		return totalPoint;
	}
	
}
