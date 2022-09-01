package com.spotmate.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spotmate.dao.NoticeDao;
import com.spotmate.vo.NoticeSearchVo;
import com.spotmate.vo.NoticeVo;

@Service
public class NoticeService {
	
	@Autowired
	private NoticeDao nDao;
	
	public Map<String, Object> getNoticeList(int crtPage, NoticeSearchVo nsVo) {

		final int listCnt = 10;
		final int pageBtnCount = 10;
		
		List<NoticeVo> nL = new ArrayList<>();
		
		Map<String, Object> nMap = new HashMap<>();
		
		crtPage = (crtPage > 0) ? crtPage : (crtPage = 1);

		int startRnum = (crtPage - 1) * listCnt + 1;
		int endRnum = startRnum + listCnt - 1;

		int endPageNum = (int) Math.ceil(crtPage / (double) pageBtnCount) * pageBtnCount;
		int startPageNum = (endPageNum - pageBtnCount) + 1;
		boolean prev = (startPageNum != 1) ? true : false;

		boolean next = false;
		if (nsVo.getStartDate() == null) {
			int totalCnt = nDao.totalCnt();
			if ((listCnt * endPageNum) < totalCnt) {
				next = true;
			} else {
				endPageNum = (int) Math.ceil(totalCnt / (double) listCnt);
			}
			 nL = nDao.getNoticeCrtPage(startRnum, endRnum);
			 
		} else {
			int searchCnt = nDao.totalSearchCnt(nsVo);
			if ((listCnt * endPageNum) < searchCnt) {
				next = true;
			} else {
				endPageNum = (int) Math.ceil(searchCnt / (double) listCnt);
			}
			nL = nDao.getNoticeSearchCrtPage(startRnum, endRnum, nsVo);
		}
		
		for(int i=0;i<nL.size();i++) {
			setNoticeType(nL.get(i));
		}
		
		nMap.put("nList", nL);
		nMap.put("prev", prev);
		nMap.put("next", next);
		nMap.put("startPageNum", startPageNum);
		nMap.put("endPageNum", endPageNum);
		nMap.put("crtPage", crtPage);
		nMap.put("pageBtnCount", pageBtnCount);

		return nMap;
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
	
	//read페이지에 필요한 정보들
	public NoticeVo getNoticeContent(int noticeNo) {
		NoticeVo nVo = nDao.getNoticeContent(noticeNo);
		nDao.setHit(noticeNo);

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
