package com.spotmate.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spotmate.vo.DriverWriteVo;

@Repository
public class MypageDao {
	
	@Autowired
	private SqlSession ss;
	
	public DriverWriteVo getList() {
		return ss.selectOne("spotmate.select");
	}
	

}
