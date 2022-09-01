package com.spotmate.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spotmate.vo.NoticeVo;

@Repository
public class NoticeDao {
	
	@Autowired
	private SqlSession ss;
	
	public List<NoticeVo> getList() {
		return ss.selectList("notice.getList");
	}

}