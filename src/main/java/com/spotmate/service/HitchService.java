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
	private HitchDao hd;
	private ConvertPoint cp = new ConvertPoint();
	
	public List<HitchVo> getHitchList() {
		List<HitchVo> hL = hd.SelectHitchList();
		for( int i=0;i<hd.SelectHitchList().size();i++ ) {
			hL.get(i).setConvertPoint(cp.convertPoint(hd.SelectHitchList().get(i).getPoint()));
			if( hL.get(i).getLatlng() != null ) {
				hL.get(i).setNowaddr(hL.get(i).getLatlng().split(",")[2]);
			}
		}
		return hL;
	}
	
	public int makeReserv(HitchReservVo hrVo) {
		return hd.updateReserv(hrVo);
	}
	
	public void watchPos(MapVo mVo) {
		hd.watchPos(mVo);
	}
	
	public Map<String, Object> getDriverInfo(int no) {
		ConvertPoint cp = new ConvertPoint();
		Map<String, Object> hMap = hd.selectDriverInfo(no);
		HitchVo hVo = (HitchVo) hMap.get("hVo");
		hMap.remove("hVo");
		hVo.setSplace1(hVo.getFullPlace().split(",")[0]);
		hVo.setEplace1(hVo.getFullPlace().split(",")[1]);
		hVo.setConvertFare(cp.convertPoint(hVo.getPoint()));
		hMap.put("hVo", hVo);
		return hMap;
	}
	
	public MapVo updateDriverPos(MapVo mVo) {
		return hd.selectDriverPos(mVo);
	}
	
	public List<HitchVo> getNear(MapVo mVo) {
		Haversine haver = new Haversine();
		List<HitchVo> hL = hd.getNear();
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
