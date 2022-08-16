package com.spotmate.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spotmate.vo.DriverLicenseVo;
import com.spotmate.vo.DriverWriteVo;
import com.spotmate.vo.MateWriteVo;

@Repository
public class DriverWriteDao {
	
	@Autowired
	private SqlSession ss;
	
	public void CarpoolInsert(DriverWriteVo dwVo) {
		ss.insert("spotmate.carpoolinsert", dwVo);
	}
	public void HitchInsert(DriverWriteVo dwVo) {
		ss.insert("spotmate.hitchinsert", dwVo);
	}
	public void MateInsert(MateWriteVo mwVo) {
		ss.insert("spotmate.mateinsert", mwVo);
	}
	
	public String SelectDriverInfo() {
		return ss.selectOne("spotmate.selectdriverinfo");
	}
	public void myDriverInsert(DriverLicenseVo dlvo) {
		ss.insert("spotmate.myDriverinsert", dlvo);
		
	}
	
}