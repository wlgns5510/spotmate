package com.spotmate.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spotmate.vo.DriverWriteVo;

@Repository
public class HitchDao {
	
	@Autowired
	private SqlSession ss;
	
	public List<DriverWriteVo> SelectHitchList() {
		return ss.selectList("spotmate.selecthitchlist");
	}

}
