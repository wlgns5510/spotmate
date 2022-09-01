package com.spotmate.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	public void insertNotice(String title, String content) {
		Map<String, Object> map = new HashMap<>();
		map.put("title", title);
		map.put("content", content);
		nDao.insertNotice(map);
	}
}
