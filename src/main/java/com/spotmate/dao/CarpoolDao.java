package com.spotmate.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spotmate.vo.CarpoolVo;

@Repository
public class CarpoolDao {
	
		
		@Autowired
		private SqlSession sqlSession;
		
		
		// 리스트
		public List<CarpoolVo> getcarpoolList() {
			System.out.println("CarpoolDao>list()");

			List<CarpoolVo> carpoolList = sqlSession.selectList("carpool.selectCarpoolList");
			System.out.println(carpoolList);

			return carpoolList;
		}
		
	
		
		//리뷰 리스트
		public List<CarpoolVo> getreviewList() {
			System.out.println("CarpoolDao>list()");

			List<CarpoolVo> reviewList = sqlSession.selectList("carpool.selectReviewlist");
			System.out.println(reviewList);

			return reviewList;
		}
		
		
		//드라이버 정보 가져오기
		public CarpoolVo read(int no) {
			System.out.println("carpoolDao>read()");

			return sqlSession.selectOne("carpool.selectDriverInfo", no);
		}
		
	

}

