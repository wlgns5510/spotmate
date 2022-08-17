package com.spotmate.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.UncategorizedSQLException;
import org.springframework.stereotype.Repository;

import com.spotmate.vo.HitchReservVo;
import com.spotmate.vo.HitchVo;
import com.spotmate.vo.MapVo;

@Repository
public class HitchDao {
	
	@Autowired
	private SqlSession ss;
	
	public List<HitchVo> SelectHitchList() {
		return ss.selectList("spotmate.selecthitchlist");
	}
	
	public int updateReserv(HitchReservVo hrVo) {
		ss.update("spotmate.updatereserv", hrVo);
		int people = ss.selectOne("spotmate.updatepeople", hrVo.getMateNo());
		if(people < 0) {
			ss.update("spotmate.recoverreserv", hrVo);
			return -1;
		}
		return people;
	}
	
	public void watchPos(MapVo mVo) {
		try {
			ss.update("spotmate.watchpos", mVo);
		} catch (UncategorizedSQLException e) {
		}
		
//		String addr = ss.selectOne("spotmate.nowaddr", mVo.getMateNo());
	}
	
	public HitchVo selectDriverInfo(int no) {
		return ss.selectOne("spotmate.selecthitchdriverinfo", no);
	}
}