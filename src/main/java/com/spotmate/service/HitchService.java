package com.spotmate.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spotmate.dao.HitchDao;
import com.spotmate.function.ConvertPoint;
import com.spotmate.function.Haversine;
import com.spotmate.vo.HitchReservVo;
import com.spotmate.vo.HitchSearchResultVo;
import com.spotmate.vo.HitchSearchVo;
import com.spotmate.vo.HitchVo;
import com.spotmate.vo.MapVo;

@Service
public class HitchService {
	
	@Autowired
	private HitchDao hDao;
	private ConvertPoint cp = new ConvertPoint();
	
	
	//탑승가능한 상태인지 아닌지(내가 신청하기 직전에 다른 사람이 눌러서 인원이 초과될 수 있으니 확인)
	public int chkRide(int mateNo, int userNo) {
		return hDao.chkResv(mateNo, userNo);
	}
	
	//유저가 탑승예약 할 때
	public int makeReserv(HitchReservVo hrVo) {
		hDao.updateResvPeople(hrVo);
		hDao.updateReserv(hrVo);
		hDao.usePoint(hrVo);
		int cnt = hDao.chkRide(hrVo.getMateNo());
		return cnt;
	}
	//신청한게 있나 없나 확인
	public Map<String, Object> cancelChk(int mateNo, int userNo) {
		return hDao.cancelChk(mateNo, userNo);
	}
	
	public int cancelReserv(int userNo, int mateNo) {
		return hDao.cancelReserv(userNo, mateNo);
	}
	
	public List<HitchReservVo> watchPos(MapVo mVo) {
		return hDao.watchPos(mVo);
	}
	
	public List<HitchVo> getHdriverPage(int driverNo) {
		return hDao.getHdriverPage(driverNo);
	}
	
	public Map<String, Object> getDriverInfo(int no) {
		ConvertPoint cp = new ConvertPoint();
		Map<String, Object> hMap = hDao.selectDriverInfo(no);
		HitchVo hVo = (HitchVo) hMap.get("hVo");
		hMap.remove("hVo");
		hVo.setSplace1(hVo.getFullPlace().split(",")[0]);
		hVo.setEplace1(hVo.getFullPlace().split(",")[1]);
		hVo.setConvertFare(cp.convertPoint(hVo.getPoint()));
		hMap.put("hVo", hVo);
		return hMap;
	}
	
	public MapVo updateDriverPos(MapVo mVo) {
		return hDao.selectDriverPos(mVo);
	}
	
	public HitchVo getSummaryInfo(int mateNo, int userNo) {
		return hDao.selectSummaryInfo(mateNo, userNo);
	}
	
	public List<HitchVo> nearHitchList(MapVo mVo, int userNo) {
		List<HitchVo> hL = hDao.nearHitchList(userNo);
		List<HitchVo> nhL = new ArrayList<HitchVo>();
		for( int i=0;i<hL.size();i++ ) {
			if( hL.get(i).getLatlng() != null ) {
				Haversine haver = new Haversine();
				if (haver.calcByHaversine(mVo.getLat(), mVo.getLng(), Double.parseDouble(hL.get(i).getLatlng().split(",")[1]), Double.parseDouble(hL.get(i).getLatlng().split(",")[0])) < 5) {
					hL.get(i).setConvertPoint(cp.convertPoint(hL.get(i).getPoint()));
					hL.get(i).setNowaddr(hL.get(i).getLatlng().split(",")[2]);
					nhL.add(hL.get(i));
				}
			}
		}
		// 출발지에서부터 유저와 드라이버의 거리 재기
//		haver.calcByHaversine(mVo.getLat(), mVo.getLng(), hL.get(i).getLat(), hL.get(i).getLng()) > haver.calcByHaversine(Double.parseDouble(hL.get(i).getLatlng().split(",")[1]), Double.parseDouble(hL.get(i).getLatlng().split(",")[0]), hL.get(i).getLat(), hL.get(i).getLng()) && 
		return nhL;
	}
	
	public List<HitchVo> nearHitchList() {
		List<HitchVo> hL = hDao.nearHitchList();
		return hL;
	}
	
	public List<HitchVo> getNear(MapVo mVo, int userNo) {
		Haversine haver = new Haversine();
		List<HitchVo> hL = hDao.getNear(userNo);
		List<HitchVo> nhL = new ArrayList<HitchVo>();
		for(int i=0;i<hL.size();i++) {
			if (hL.get(i).getLatlng() != null) {
				if ( haver.calcByHaversine(mVo.getLat(), mVo.getLng(), Double.parseDouble(hL.get(i).getLatlng().split(",")[1]), Double.parseDouble(hL.get(i).getLatlng().split(",")[0])) < 5) {
					nhL.add(hL.get(i));
				}
			}
		}
		return nhL;
	}
	
	public List<HitchSearchResultVo> searchList(HitchSearchVo hsVo) {
		Haversine haver = new Haversine();
		List<HitchSearchResultVo> hsrL = hDao.searchList(hsVo);
		List<HitchSearchResultVo> nhsrL = new ArrayList<HitchSearchResultVo>();
		for(int i=0;i<hsrL.size();i++) {
			if (hsrL.get(i).getLatlng() != null) {
				if ( haver.calcByHaversine(hsVo.getLat(), hsVo.getLng(), Double.parseDouble(hsrL.get(i).getLatlng().split(",")[1]), Double.parseDouble(hsrL.get(i).getLatlng().split(",")[0])) < 5) {
					hsrL.get(i).setConvertPoint(cp.convertPoint(hsrL.get(i).getPoint()));
					hsrL.get(i).setNowAddr(hsrL.get(i).getLatlng().split(",")[2]);
					nhsrL.add(hsrL.get(i));
				}
			}
		}
		return nhsrL;
	}
	

}
