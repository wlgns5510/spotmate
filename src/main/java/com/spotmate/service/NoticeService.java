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
		List<NoticeVo> nL = nDao.getList();
		for(int i=0;i<nL.size();i++) {
			setNoticeType(nL.get(i));
		}
		return nL;
	}
	
	public void insertNotice(String title, String content,String notiDetail) {
		Map<String, Object> map = new HashMap<>();
		map.put("title", title);
		map.put("content", content);
		map.put("notiDetail", notiDetail);
		nDao.insertNotice(map);
	}
	
	public int deleteNotice(int no) {
		return nDao.deleteNotice(no);
	}
	
	public NoticeVo getNoticeContent(int noticeNo) {
		NoticeVo nVo = nDao.getNoticeContent(noticeNo);
		
		setNoticeType(nVo);
		
		return nVo;
	}
	
	private void setNoticeType(NoticeVo nVo) {
		if (nVo.getType().equals("season")) {
			nVo.setType("카풀 정기권");
		} else if (nVo.getType().equals("carpool")) {
			nVo.setType("카풀 1회성");
		} else if (nVo.getType().equals("hitchhike")) {
			nVo.setType("히치 하이크");
		} else if (nVo.getType().equals("mate")) {
			nVo.setType("메이트");
		} else if (nVo.getType().equals("notice")) {
			nVo.setType("공지사항");
		} else if (nVo.getType().equals("event")) {
			nVo.setType("이벤트");
		}
	}
}
