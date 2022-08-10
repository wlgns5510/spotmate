package com.spotmate.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spotmate.dao.DriverWriteDao;
import com.spotmate.vo.DriverWriteVo;

@Service
public class DriverWriteService {
	
	@Autowired
	private DriverWriteDao dwd;
	
	public void CarpoolRegister(DriverWriteVo dwv) {
		dwd.CarpoolInsert(dwv);
	}
	
	public void HitchRegister(DriverWriteVo dwv) {
		dwd.HitchInsert(dwv);
	}

}