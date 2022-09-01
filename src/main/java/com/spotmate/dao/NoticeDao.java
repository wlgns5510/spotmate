package com.spotmate.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spotmate.vo.NoticeSearchVo;
import com.spotmate.vo.NoticeVo;

@Repository
public class NoticeDao {
	
	@Autowired
	private SqlSession ss;
	
	public List<NoticeVo> getNoticeCrtPage(int startRnum, int endRnum) {
		Map<String, Object> map = new HashMap<>();
		map.put("sNum", startRnum);
		map.put("eNum", endRnum);
		return ss.selectList("notice.getNoticeCrtPage", map);
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
	
	//조회수 증가
	public void setHit(int noticeNo) {
		ss.selectOne("notice.setHit", noticeNo);
	}
	
	public int totalCnt() {
		return ss.selectOne("notice.totalCnt");
	}
	
	public int totalSearchCnt(NoticeSearchVo nsVo) {
		return ss.selectOne("notice.totalSearchCnt", nsVo);
	}
	
	public List<NoticeVo> getNoticeSearchCrtPage(int startRnum, int endRnum, NoticeSearchVo nsVo) {
		Map<String, Object> map = new HashMap<>();
		map.put("sNum", startRnum);
		map.put("eNum", endRnum);
		map.put("nsVo", nsVo);
		System.out.println(nsVo);
		return ss.selectList("notice.getNoticeSearchCrtPage", map);
		
	}
	
	

}