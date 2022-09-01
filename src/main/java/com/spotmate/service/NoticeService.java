package com.spotmate.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spotmate.dao.NoticeDao;
import com.spotmate.vo.NoticeVo;

@Service
public class NoticeService {
	
	@Autowired
	private NoticeDao nDao;
	
	
	public List<NoticeVo> getList() {
		return nDao.getList();
	}
}
