package com.spotmate.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spotmate.dao.DriverWriteDao;
import com.spotmate.vo.DriverWriteVo;
import com.spotmate.vo.MateWriteVo;

@Service
public class DriverWriteService {
	
	@Autowired
	private DriverWriteDao dwd;
	
	public void CarpoolRegister(DriverWriteVo dwVo) {
		dwd.CarpoolInsert(dwVo);
	}
	
	public void HitchRegister(DriverWriteVo dwVo) {
		dwd.HitchInsert(dwVo);
	}
	
	public void MateRegister(MateWriteVo mwVo) {
		dwd.MateInsert(mwVo);
	}
	
	public String getDriverInfo() {
		return dwd.SelectDriverInfo();
	}

}