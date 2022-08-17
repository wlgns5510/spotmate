package com.spotmate.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spotmate.dao.HitchDao;
import com.spotmate.function.ConvertPoint;
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
	
	public HitchVo getDriverInfo(int no) {
		return hd.selectDriverInfo(no);
	}
	
	

}
