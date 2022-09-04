package com.spotmate.service;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spotmate.dao.MypageRDao;
import com.spotmate.function.ConvertPoint;
import com.spotmate.vo.MyUsageVo;
import com.spotmate.vo.ReviewInfoVo;
import com.spotmate.vo.ReviewVo;
import com.spotmate.vo.UsageSearchVo;

@Service
public class MypageRService {

	@Autowired
	private MypageRDao mDao;

	private Map<String, Object> uMap = new HashMap<String, Object>();
	private List<MyUsageVo> mL = new ArrayList<>();

	final int listCnt = 10;
	final int pageBtnCount = 10;

	public Map<String, Object> getUserUsageList(int userNo, int crtPage, UsageSearchVo usVo) {

		crtPage = (crtPage > 0) ? crtPage : (crtPage = 1);

		int startRnum = (crtPage - 1) * listCnt + 1;
		int endRnum = startRnum + listCnt - 1;

		search(usVo);

		int endPageNum = (int) Math.ceil(crtPage / (double) pageBtnCount) * pageBtnCount;
		int startPageNum = (endPageNum - pageBtnCount) + 1;
		boolean prev = (startPageNum != 1) ? true : false;

		boolean next = false;
		if (usVo.getType() == null) {
			int totalCnt = mDao.totalUserCnt(userNo);
			if ((listCnt * endPageNum) < totalCnt) {
				next = true;
			} else {
				endPageNum = (int) Math.ceil(totalCnt / (double) listCnt);
			}
			mL = mDao.getUserCrtPage(userNo, startRnum, endRnum);
		} else {
			int searchCnt = mDao.getUserSearchCnt(usVo, userNo);
			if ((listCnt * endPageNum) < searchCnt) {
				next = true;
			} else {
				endPageNum = (int) Math.ceil(searchCnt / (double) listCnt);
			}
			mL = mDao.getUserSearchCrtPage(userNo, startRnum, endRnum, usVo);
		}

		setMl(mL);

		uMap.put("usVo", usVo);
		uMap.put("mL", mL);
		uMap.put("prev", prev);
		uMap.put("next", next);
		uMap.put("startPageNum", startPageNum);
		uMap.put("endPageNum", endPageNum);
		uMap.put("crtPage", crtPage);
		uMap.put("pageBtnCount", pageBtnCount);

		return uMap;
	}

	public Map<String, Object> getDriverUsageList(int userNo, int crtPage, UsageSearchVo usVo) {

		crtPage = (crtPage > 0) ? crtPage : (crtPage = 1);

		int startRnum = (crtPage - 1) * listCnt + 1;
		int endRnum = startRnum + listCnt - 1;

		search(usVo);

		int endPageNum = (int) Math.ceil(crtPage / (double) pageBtnCount) * pageBtnCount;
		int startPageNum = (endPageNum - pageBtnCount) + 1;
		boolean prev = (startPageNum != 1) ? true : false;

		boolean next = false;

		if (usVo.getType() == null) {
			int totalCnt = mDao.totalDriverCnt(userNo);
			if ((listCnt * endPageNum) < totalCnt) {
				next = true;
			} else {
				endPageNum = (int) Math.ceil(totalCnt / (double) listCnt);
			}
			mL = mDao.getDriverCrtPage(userNo, startRnum, endRnum);
		} else {
			int searchCnt = mDao.getDriverSearchCnt(usVo, userNo);
			if ((listCnt * endPageNum) < searchCnt) {
				next = true;
			} else {
				endPageNum = (int) Math.ceil(searchCnt / (double) listCnt);
			}
			mL = mDao.getDriverSearchCrtPage(userNo, startRnum, endRnum, usVo);
		}

		setMl(mL);

		uMap.put("usVo", usVo);
		uMap.put("mL", mL);
		uMap.put("prev", prev);
		uMap.put("next", next);
		uMap.put("startPageNum", startPageNum);
		uMap.put("endPageNum", endPageNum);
		uMap.put("crtPage", crtPage);
		uMap.put("pageBtnCount", pageBtnCount);

		return uMap;
	}

	public Map<String, Object> getUserResvList(int userNo, int crtPage, UsageSearchVo usVo) {

		crtPage = (crtPage > 0) ? crtPage : (crtPage = 1);

		int startRnum = (crtPage - 1) * listCnt + 1;
		int endRnum = startRnum + listCnt - 1;

		search(usVo);
		

		int endPageNum = (int) Math.ceil(crtPage / (double) pageBtnCount) * pageBtnCount;
		int startPageNum = (endPageNum - pageBtnCount) + 1;
		boolean prev = (startPageNum != 1) ? true : false;

		boolean next = false;
		if (usVo.getType() == null) {
			int totalCnt = mDao.totalUserCntResv(userNo);
			if ((listCnt * endPageNum) < totalCnt) {
				next = true;
			} else {
				endPageNum = (int) Math.ceil(totalCnt / (double) listCnt);
			}
			mL = mDao.getUserCrtPageResv(userNo, startRnum, endRnum);
		} else {
			int searchCnt = mDao.getUserSearchCntResv(usVo, userNo);
			if ((listCnt * endPageNum) < searchCnt) {
				next = true;
			} else {
				endPageNum = (int) Math.ceil(searchCnt / (double) listCnt);
			}
			mL = mDao.getUserSearchCrtPageResv(userNo, startRnum, endRnum, usVo);
		}

		setMl(mL);

		uMap.put("usVo", usVo);
		uMap.put("mL", mL);
		uMap.put("prev", prev);
		uMap.put("next", next);
		uMap.put("startPageNum", startPageNum);
		uMap.put("endPageNum", endPageNum);
		uMap.put("crtPage", crtPage);
		uMap.put("pageBtnCount", pageBtnCount);

		return uMap;
	}

	public Map<String, Object> getDriverResvList(int userNo, int crtPage, UsageSearchVo usVo) {

		crtPage = (crtPage > 0) ? crtPage : (crtPage = 1);

		int startRnum = (crtPage - 1) * listCnt + 1;
		int endRnum = startRnum + listCnt - 1;

		search(usVo);

		int endPageNum = (int) Math.ceil(crtPage / (double) pageBtnCount) * pageBtnCount;
		int startPageNum = (endPageNum - pageBtnCount) + 1;
		boolean prev = (startPageNum != 1) ? true : false;

		boolean next = false;

		if (usVo.getType() == null) {
			int totalCnt = mDao.totalDriverCntResv(userNo);
			if ((listCnt * endPageNum) < totalCnt) {
				next = true;
			} else {
				endPageNum = (int) Math.ceil(totalCnt / (double) listCnt);
			}
			mL = mDao.getDriverCrtPageResv(userNo, startRnum, endRnum);
		} else {
			int searchCnt = mDao.getDriverSearchCntResv(usVo, userNo);
			if ((listCnt * endPageNum) < searchCnt) {
				next = true;
			} else {
				endPageNum = (int) Math.ceil(searchCnt / (double) listCnt);
			}
			mL = mDao.getDriverSearchCrtPageResv(userNo, startRnum, endRnum, usVo);
		}

		setMl(mL);

		uMap.put("usVo", usVo);
		uMap.put("mL", mL);
		uMap.put("prev", prev);
		uMap.put("next", next);
		uMap.put("startPageNum", startPageNum);
		uMap.put("endPageNum", endPageNum);
		uMap.put("crtPage", crtPage);
		uMap.put("pageBtnCount", pageBtnCount);

		return uMap;
	}
	
	public int endResv(int mateNo, int userNo) {
		Map<String, Object> map = new HashMap<>();
		map.put("mateNo", mateNo);
		map.put("userNo", userNo);
		int count = mDao.endResv(map);
		int resvNo = mDao.getResvNo(map);
		System.out.println(resvNo);
		map.put("resvNo", resvNo);
		mDao.driverGetPoint(map);
		return count;
	}
	
	public ReviewInfoVo forReviewInfo(int resvNo) {
		ConvertPoint cp = new ConvertPoint();
		Map<String, Object> map = new HashMap<>();
		map.put("resvNo", resvNo);
		map.put("mateNo", mDao.getMateNoByResvNo(resvNo));
		ReviewInfoVo riVo = mDao.forReviewInfo(map);
		riVo.setSplace(riVo.getFullPlace().split(",")[0]);
		riVo.setEplace(riVo.getFullPlace().split(",")[1]);
		riVo.setConvertPoint(cp.convertPoint(riVo.getPoint()));
		return riVo;
	}
	
	public Map<String, Object> forReviewInfo(int resvNo, int userNo) {
		ConvertPoint cp = new ConvertPoint();
		Map<String, Object> map = new HashMap<>();
		map.put("resvNo", resvNo);
		map.put("mateNo", mDao.getMateNoByResvNo(resvNo));
		ReviewInfoVo riVo = mDao.forReviewInfo(map);
		Map<String, Object> reviewReadMap =  mDao.getReview(resvNo, userNo);
		riVo.setSplace(riVo.getFullPlace().split(",")[0]);
		riVo.setEplace(riVo.getFullPlace().split(",")[1]);
		riVo.setConvertPoint(cp.convertPoint(riVo.getPoint()));
		reviewReadMap.put("riVo", riVo);
		return reviewReadMap;
	}
	
	public Map<String, Object> forDriverReviewInfo(int resvNo) {
		ConvertPoint cp = new ConvertPoint();
		Map<String, Object> map = new HashMap<>();
		List<Integer> ReviewedPassengerList = mDao.getReviewedPassengerList(resvNo);
		Map<String, Object> driverReview = mDao.getDriverReview(resvNo, ReviewedPassengerList);
		map.put("resvNo", resvNo);
		map.put("mateNo", mDao.getMateNoByResvNo(resvNo));
		ReviewInfoVo riVo = mDao.forReviewInfo(map);
		riVo.setSplace(riVo.getFullPlace().split(",")[0]);
		riVo.setEplace(riVo.getFullPlace().split(",")[1]);
		riVo.setConvertPoint(cp.convertPoint(riVo.getPoint()));
		driverReview.put("riVo", riVo);
		System.out.println(driverReview.get("star"));
		return driverReview;
	}
	
	
	public void insertUserReview (ReviewVo rVo) {
		mDao.insertUserReview(rVo);
		mDao.afterInsertUserReview(rVo.getResvNo());
	}
	
	public List<Map<String, Object>> getPassengerList(int resvNo, int userNo) {
		List<Integer> ReviewedPassengerList = mDao.getReviewedPassengerList(resvNo);
		List<Map<String, Object>> noReviewPassengerList = new ArrayList<>();
		Map<String, Object> map = new HashMap<>();
		map.put("mateNo", mDao.getMateNoByResvNo(resvNo));
		map.put("userNo", userNo);
		List<Map<String, Object>> mList = mDao.getPassengerList(map);
		System.out.println(ReviewedPassengerList.toString());
		for(int i=0;i<mList.size();i++) {
			int reviewPassenger = Integer.parseInt(String.valueOf(mList.get(i).get("USERNO")));
			try {
				if (ReviewedPassengerList.get(i) != reviewPassenger) {
					noReviewPassengerList.add(mList.get(i));
				}
			} catch (IndexOutOfBoundsException e) {
				noReviewPassengerList.add(mList.get(i));
				continue;
			}
		}
		return noReviewPassengerList;
	}
	
	public void insertDriverReview (ReviewVo rVo, int userNo) {
		Map<String, Object> map = new HashMap<>();
		map.put("mateNo", mDao.getMateNoByResvNo(rVo.getResvNo()));
		map.put("userNo", userNo);
		mDao.insertDriverReview(rVo);
		if (mDao.getReviewedPassengerList(rVo.getResvNo()).size() == mDao.getPassengerList(map).size()) {
			mDao.afterInsertDriverReview(rVo.getResvNo());
		}
	}
	
	
	
	
	
	
	
	
	private void setMl(List<MyUsageVo> mL) {
		ConvertPoint cp = new ConvertPoint();
		for (int i = 0; i < mL.size(); i++) {
			if( mL.get(i).getStartDate() != null) {
				DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
				LocalDateTime now = LocalDateTime.now();
				LocalDateTime onTime = LocalDateTime.parse(mL.get(i).getStartDate(), formatter);
				now.format(formatter);
				if(now.isBefore(onTime)) {
					mL.get(i).setStatus("noRide");
				} else {
					mL.get(i).setStatus("ride");
				}
			}
			mL.get(i).setStartPlace(mL.get(i).getFullPlace().split(",")[0]);
			mL.get(i).setEndPlace(mL.get(i).getFullPlace().split(",")[1]);
			mL.get(i).setConvertPoint(cp.convertPoint(mL.get(i).getPoint()));
			if (mL.get(i).getType().equals("carpool")) {
				mL.get(i).setType("카풀 1회성");
			} else if (mL.get(i).getType().equals("seasonTicket")) {
				mL.get(i).setType("카풀 정기권");
			} else if (mL.get(i).getType().equals("hitchhike")) {
				mL.get(i).setType("히치 하이크");
			} else if (mL.get(i).getType().equals("mate")) {
				mL.get(i).setType("메이트");
			}
		}
	}

	private void search(UsageSearchVo usVo) {
		if (usVo.getType() != null) {
			if (usVo.getType().equals("selected")) {
				usVo.setType("");
			}
			if (usVo.getStatus() != null && !usVo.getStatus().equals("selected")) {
				DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
				LocalDateTime now = LocalDateTime.now();
				LocalDateTime onTime = LocalDateTime.parse(usVo.getStatus(), formatter);
				usVo.setNowTime(onTime.toString());
				now.format(formatter);
				if(now.isBefore(onTime)) {
					usVo.setStatus("noRide");
				} else {
					usVo.setStatus("ride");
				}
			}
		}
	}
}
