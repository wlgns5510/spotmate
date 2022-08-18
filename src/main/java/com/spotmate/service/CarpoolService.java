package com.spotmate.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spotmate.dao.CarpoolDao;
import com.spotmate.vo.CarpoolVo;

@Service
public class CarpoolService {
	

	@Autowired
	private CarpoolDao carpoolDao;
	
	/*
	// 리스트
	public List<CarpoolVo> getList() {
		System.out.println("CarpoolService > getList");

		List<CarpoolVo> carpoolList = carpoolDao.getcarpoolList();
		System.out.println(carpoolList);
		
		return carpoolList;
	}*/
	
	//리뷰 리스트
		public List<CarpoolVo> getList2() {
			System.out.println("ReviewService > getList2");

			List<CarpoolVo> reviewList = carpoolDao.getreviewList();
			System.out.println(reviewList);
			
			return reviewList;
		}
		
	// Deep 차량 추천 리스트 박스
		public List<CarpoolVo> getList3() {
			System.out.println("CarpoolService > getList3");

			List<CarpoolVo> recommendList = carpoolDao.getrecommendList();
			System.out.println(recommendList);
			
			return recommendList;
		}
		
	
		
	
	// 차량 리스트 가져오기
		public Map<String, Object> getList(String splace, String eplace, String time, int people, String startDate, String endDate, int crtPage) {
			System.out.println("carpoolService > getcarpoolList");
			
			/////////////리스트//////////////
			
			//페이지당 글갯수
			int listCnt = 10;
			
			//전체페이지
			crtPage = (crtPage > 0) ? crtPage : (crtPage = 1);
			
			//시작글번호
			int startRnum = (crtPage - 1)*listCnt + 1;
			
			//끝글번호
			int endRnum = (startRnum + listCnt) - 1;
			
			Map<String, Object> pMap = new HashMap<String, Object>();
			pMap.put("splace", splace);
			pMap.put("eplace", eplace);
			pMap.put("time", time);
			pMap.put("people", people);
			pMap.put("startDate", startDate);
			pMap.put("endDate", endDate);
			pMap.put("startRnum", startRnum);
			pMap.put("endRnum", endRnum);

			List<CarpoolVo> carpoolList = carpoolDao.getCarpoolList(pMap);

			/////////////페이징 계산//////////////
			
			//전체글갯수
			int totalCarpoolCnt = carpoolDao.totalCarpoolCnt();
			System.out.println(totalCarpoolCnt);
			
			//페이지당 버튼 갯수
			int pageBtnCount = 10;
			
			//마지막 버튼 번호
			int endPageBtnNo = (int)Math.ceil(crtPage/(double)pageBtnCount)*pageBtnCount;
			
			//시작 버튼 번호
			int startPageBtnNo = (endPageBtnNo - pageBtnCount) + 1;
			
			System.out.println(crtPage + "," + startPageBtnNo + "," + endPageBtnNo);
			
			//다음 화살표 유무
			boolean next = false;
			if(listCnt * endPageBtnNo < totalCarpoolCnt) {
				next = true;
			
			}else {
				endPageBtnNo = (int)Math.ceil(totalCarpoolCnt/(double)listCnt);
			
			}
			
			//이전 화살표 유무
			boolean prev = false;
			if(startPageBtnNo !=1) {
				prev = true;
				
			}
			
			//마지막페이지번호
			int endPageNo = (int)Math.ceil(totalCarpoolCnt/(double)listCnt);
			
			
			System.out.println(prev + "," + startPageBtnNo + "," + endPageBtnNo + "," + next + "," + endPageNo);
			
			Map<String, Object> cMap = new HashMap<String, Object>();
			cMap.put("carpoolList", carpoolList);
			cMap.put("prev", prev);
			cMap.put("next", next);
			cMap.put("endPageBtnNo", endPageBtnNo);
			cMap.put("startPageBtnNo", startPageBtnNo);
			cMap.put("endPageNo", endPageNo);
			
			
			return cMap;

		}
		
		
	
	
	//드라이버 차량 정보 가져오기
	public CarpoolVo read(int no) {

		System.out.println("CarpoolService>read()");
		
		return carpoolDao.read(no);
	}
	
}