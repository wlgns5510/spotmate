package com.spotmate.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spotmate.vo.DriverWriteVo;

@Repository
public class DriverWriteDao {
	
	@Autowired
	private SqlSession ss;
	
	public void CarpoolInsert(DriverWriteVo dwv) {
		ss.insert("spotmate.carpoolinsert", dwv);
	}
	public void HitchInsert(DriverWriteVo dwv) {
		ss.insert("spotmate.hitchinsert", dwv);
	}

}