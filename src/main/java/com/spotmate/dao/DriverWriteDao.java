package com.spotmate.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spotmate.vo.DriverWriteVo;
import com.spotmate.vo.MateWriteVo;
import com.spotmate.vo.StartEndTimeVo;

@Repository
public class DriverWriteDao {
	
	@Autowired
	private SqlSession ss;
	
	public void carpoolInsert(DriverWriteVo dwVo) {
		ss.insert("spotmate.carpoolinsert", dwVo);
	}
	public void hitchInsert(DriverWriteVo dwVo) {
		ss.insert("spotmate.hitchinsert", dwVo);
	}
	public void mateInsert(MateWriteVo mwVo) {
		ss.insert("spotmate.mateinsert", mwVo);
	}
	
	public String chkLicense(int userNo) {
		return ss.selectOne("spotmate.chkLicense", userNo);
	}
	
	public String getDriverIntroduce(int userNo) {
		String introduce = ss.selectOne("spotmate.getDriverIntroduce", userNo);
		return introduce;
	}
	
	public String getDriverDetailOpt(int userNo) {
		String detailOpt = ss.selectOne("spotmate.getDriverDetailOpt", userNo);
		return detailOpt;
	}
	
	public int getMateNo(int userNo) {
		return ss.selectOne("spotmate.getmateno", userNo);
	}
	
	public List<StartEndTimeVo> chkAnotherCarpool(int userNo) {
		List<StartEndTimeVo> seVo = ss.selectList("spotmate.chkanothercarpool", userNo); 
		return seVo;
	}
	
	public String chkAnotherHitchhike(int userNo) {
		return ss.selectOne("spotmate.chkanotherhitchhike", userNo);
	}
	
}