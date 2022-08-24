package com.spotmate.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spotmate.dao.CarpoolDao;
import com.spotmate.vo.CarpoolVo;
import com.spotmate.vo.SpotDetailVo;

@Service
public class CarpoolService {

	@Autowired
	private CarpoolDao carpoolDao;

	// 차량 리스트 가져오기
	public Map<String, Object> getList(CarpoolVo carpoolVo) {
		System.out.println("carpoolService > getcarpoolList");
		System.out.println(carpoolVo);

		int crtPage = carpoolVo.getCrtPage();

		/////////////////////////////////////////////
		// 리스트가져오기
		/////////////////////////////////////////////
		// 페이지당 글갯수
		int listCnt = 5;

		// 현재페이지
		crtPage = (crtPage > 0) ? crtPage : (crtPage = 1);

		// 시작글번호
		int startRnum = (crtPage - 1) * listCnt + 1;

		// 끝글번호
		int endRnum = (startRnum + listCnt) - 1;

		// 시작글번호 끝글번호 대입
		carpoolVo.setStartRnum(startRnum);
		carpoolVo.setEndRnum(endRnum);

		// 리스트 요청
		List<CarpoolVo> carpoolList = carpoolDao.getCarpoolList(carpoolVo);
		System.out.println(carpoolList);

		//////////////////////////////////////////////
		// 페이징 계산
		//////////////////////////////////////////////
		int totalCarpoolCnt = carpoolDao.totalCarpoolCnt(carpoolVo);
		System.out.println(totalCarpoolCnt);

		// 페이지당 버튼 갯수
		int pageBtnCount = 5;

		// 마지막 버튼 번호
		int endPageBtnNo = (int) Math.ceil(crtPage / (double) pageBtnCount) * pageBtnCount;

		// 시작 버튼 번호
		int startPageBtnNo = (endPageBtnNo - pageBtnCount) + 1;

		// 다음 화살표 유무
		boolean next = false;
		if ((listCnt * endPageBtnNo) < totalCarpoolCnt) {
			next = true;

		} else {
			endPageBtnNo = (int) Math.ceil(totalCarpoolCnt / (double) listCnt);
		}

		// 이전 화살표 유무
		boolean prev = false;
		if (startPageBtnNo != 1) {
			prev = true;
		}

		Map<String, Object> cMap = new HashMap<String, Object>();
		cMap.put("carpoolList", carpoolList);

		cMap.put("prev", prev);
		cMap.put("next", next);
		cMap.put("startPageBtnNo", startPageBtnNo);
		cMap.put("endPageBtnNo", endPageBtnNo);

		return cMap;

	}

	// 드라이버 차량 정보 가져오기
	public Map<String, Object> read(int no) {
		System.out.println("CarpoolService>read()");

		// 기본정보
		CarpoolVo cVo = carpoolDao.read(no);
		/*
		 * CarpoolVo star = carpoolDao.avgStar(no); int avgStar = star.getAvgStar();
		 * cVo.setAvgStar(avgStar);
		 * 
		 * cvoList.add(cVo);
		 */
		// 기본정보 (상세조건)
		List<SpotDetailVo> spotDetailList = carpoolDao.read2(no);

		// 리뷰 리스트*
		List<CarpoolVo> reviewList = carpoolDao.getreviewList();

		// Deep 차량 추천 리스트 박스
		CarpoolVo carPoolVo = new CarpoolVo();
		carPoolVo.setStartRnum(1);
		carPoolVo.setEndRnum(4);

		List<CarpoolVo> recommendList = carpoolDao.getCarpoolList(carPoolVo);

		Map<String, Object> driverMap = new HashMap<String, Object>();
		driverMap.put("cVo", cVo);
		driverMap.put("spotDetailList", spotDetailList);
		driverMap.put("reviewList", reviewList);
		driverMap.put("recommendList", recommendList);

		System.out.println("===========================================");
		System.out.println(driverMap);
		System.out.println("===========================================");

		return driverMap;
	}

	// user예약내역 DB저장
	public void saveCarpool(int userNo) {
		System.out.println("CarpoolService > saveCarpool");

		CarpoolVo carpoolVo = new CarpoolVo();

		carpoolVo.setUserNo(userNo);

		carpoolDao.saveCarpool(carpoolVo);
	}

}