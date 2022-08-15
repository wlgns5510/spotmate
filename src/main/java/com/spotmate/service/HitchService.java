package com.spotmate.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spotmate.dao.HitchDao;
import com.spotmate.vo.DriverWriteVo;

@Service
public class HitchService {
	
	@Autowired
	private HitchDao hd;
	
	
	public List<DriverWriteVo> getHitchList() {
		return hd.SelectHitchList();
	}
	
	
	

}
