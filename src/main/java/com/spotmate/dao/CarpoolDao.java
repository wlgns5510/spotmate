package com.spotmate.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spotmate.vo.CarpoolVo;
import com.spotmate.vo.SpotDetailVo;

@Repository
public class CarpoolDao {

	@Autowired
	private SqlSession sqlSession;

	// 차량 리스트 가져오기 (Deep 페이지 차량 추천 리스트 동일)
	
	public List<CarpoolVo> getCarpoolList(CarpoolVo carpoolVo) {
		System.out.println("CarpoolDao > list()");

		List<CarpoolVo> carpoolList = sqlSession.selectList("carpool.selectCarpoolList", carpoolVo);

		return carpoolList;
	}

	// 쿠폰 전체 글 갯수
	public int totalCarpoolCnt(CarpoolVo carpoolVo) {
		System.out.println("CarpoolDao > totalCarpoolCnt");

		int totalCarpoolCnt = sqlSession.selectOne("carpool.totalCarpoolCnt", carpoolVo);

		return totalCarpoolCnt;
	}
	
	// 드라이버 기본 정보 (탑승 정보 + 드라이버 차량 정보)
	
	public CarpoolVo read(int no) {
		System.out.println("carpoolDao>read()");

		return sqlSession.selectOne("carpool.selectDriverInfo", no);
	}

	// 드라이버 기본 정보 (상세 조건 리스트)
	
	public List<SpotDetailVo> read2(int no) {
		System.out.println("carpoolDao>read2()");

		return sqlSession.selectList("carpool.selectDetailInfo", no);
	}

	// 리뷰 배너 
	public List<CarpoolVo> getreviewList(int no) {
		System.out.println("carpoolDao>reviewlist()");

		List<CarpoolVo> reviewList = sqlSession.selectList("carpool.selectReviewList", no);
		return reviewList;
	}
	/*
	// 리뷰 배너 
	public List<CarpoolVo> getreviewList() {
		System.out.println("CarpoolDao>reviewlist()");

		List<CarpoolVo> reviewList = sqlSession.selectList("carpool.selectReviewList");

		return reviewList;
	}*/
	

	// user예약내역 DB 저장
	
	public void saveCarpool(CarpoolVo carpoolVo) {
		System.out.println("CarpoolDao> saveCarpool()");

		int count = sqlSession.insert("carpool.insertUserCarpoolInfo", carpoolVo);

		System.out.println(count);

	}

}