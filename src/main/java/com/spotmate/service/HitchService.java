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
import com.spotmate.vo.HitchVo;
import com.spotmate.vo.MapVo;

@Service
public class HitchService {
	
	@Autowired
	private HitchDao hDao;
	private ConvertPoint cp = new ConvertPoint();
	
	public List<HitchVo> getHitchList(MapVo mVo) {
		List<HitchVo> hL = hDao.SelectHitchList();
		List<HitchVo> nhL = new ArrayList<HitchVo>();
		for( int i=0;i<hDao.SelectHitchList().size();i++ ) {
			if( hL.get(i).getLatlng() != null ) {
				Haversine haver = new Haversine();
				if ( haver.calcByHaversine(mVo.getLat(), mVo.getLng(), Double.parseDouble(hL.get(i).getLatlng().split(",")[1]), Double.parseDouble(hL.get(i).getLatlng().split(",")[0])) < 5) {
					hL.get(i).setConvertPoint(cp.convertPoint(hDao.SelectHitchList().get(i).getPoint()));
					hL.get(i).setNowaddr(hL.get(i).getLatlng().split(",")[2]);
					nhL.add(hL.get(i));
				}
			}
		}
		return nhL;
	}
	
	public int makeReserv(HitchReservVo hrVo) {
		return hDao.updateReserv(hrVo);
	}
	
	public void watchPos(MapVo mVo) {
		hDao.watchPos(mVo);
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
	
	public HitchVo getSummaryInfo(int mateNo) {
		return hDao.selectSummaryInfo(mateNo);
	}
	
	public List<HitchVo> getNear(MapVo mVo) {
		Haversine haver = new Haversine();
		List<HitchVo> hL = hDao.getNear();
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
	
	

}
