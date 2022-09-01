package com.spotmate.dao;

import java.util.List;
import java.util.Map;

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
	
	public void insertNotice(Map<String, Object> map) {
		ss.insert("notice.insertNotice", map);
	}
	
	public int deleteNotice(int no) {
		return ss.delete("notice.deleteNotice", no);
	}
	
	public NoticeVo getNoticeContent(int noticeNo) {
		return ss.selectOne("notice.getNoticeContent", noticeNo);
	}

}