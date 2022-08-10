package com.spotmate.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spotmate.dao.MypageDao;
import com.spotmate.vo.DriverWriteVo;

@Service
public class MypageService {
	
	@Autowired
	private MypageDao md;
	
	public DriverWriteVo getList() {
		return md.getList();
	}

}
