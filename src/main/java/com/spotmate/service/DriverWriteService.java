package com.spotmate.service;

import org.springframework.stereotype.Service;

import com.spotmate.dao.DriverWriteDao;
import com.spotmate.vo.DriverWriteVo;

@Service
public class DriverWriteService {
	
	private DriverWriteDao dwd;
	
	public void register(DriverWriteVo dwv) {
		dwd.Insert(dwv);
	}

}