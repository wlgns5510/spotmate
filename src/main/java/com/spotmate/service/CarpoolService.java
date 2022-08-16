package com.spotmate.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spotmate.dao.CarpoolDao;
import com.spotmate.vo.CarpoolVo;

@Service
public class CarpoolService {
	
	@Autowired
	private CarpoolDao cD;
	
	public List<CarpoolVo> getCarpoolList() {
		return cD.selectList();
	}

}
