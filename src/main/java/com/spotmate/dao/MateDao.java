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
}
