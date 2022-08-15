package com.spotmate.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spotmate.vo.CarpoolVo;

@Repository
public class CarpoolDao {
	
	@Autowired
	private SqlSession ss;
	
	public List<CarpoolVo> selectList() {
		List<CarpoolVo> csL = ss.selectList("carpool.selectslist");
		List<CarpoolVo> ceL = ss.selectList("carpool.selectelist");
		for (int i=0;i<csL.size();i++) {
			if (csL.get(i).getNo() == ceL.get(i).getNo()) {
				csL.get(i).setSplace(csL.get(i).getPlace());
				csL.get(i).setEplace(ceL.get(i).getPlace());
			}
		}
		return csL;
	}
}
