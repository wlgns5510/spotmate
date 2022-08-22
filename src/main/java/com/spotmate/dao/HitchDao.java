package com.spotmate.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.UncategorizedSQLException;
import org.springframework.stereotype.Repository;

import com.spotmate.vo.HitchReservVo;
import com.spotmate.vo.HitchVo;
import com.spotmate.vo.MapVo;

@Repository
public class HitchDao {
	
	@Autowired
	private SqlSession ss;
	
	public List<HitchVo> SelectHitchList() {
		return ss.selectList("spotmate.selecthitchlist");
	}
	
	public int updateReserv(HitchReservVo hrVo) {
		ss.update("spotmate.updatereserv", hrVo);
		int people = ss.selectOne("spotmate.updatepeople", hrVo.getMateNo());
		if(people < 0) {
			ss.update("spotmate.recoverreserv", hrVo);
			return -1;
		}
		return people;
	}
	
	public void watchPos(MapVo mVo) {
		try {
			ss.update("spotmate.watchpos", mVo);
		} catch (UncategorizedSQLException e) {
		}
		
//		String addr = ss.selectOne("spotmate.nowaddr", mVo.getMateNo());
	}
	
	public Map<String, Object> selectDriverInfo(int mateNo) {
		HitchVo hVo = ss.selectOne("spotmate.selecthitchdriverinfo", mateNo);
		List<String> nowPos = ss.selectList("spotmate.selecthitchdriverinfonowpos", mateNo);
		Map<String, Object> hMap = new HashMap<>();
		hMap.put("hVo", hVo);
		List<Double> nowLatlng = new ArrayList<>();
		nowLatlng.add(Double.parseDouble(nowPos.get(1).split(",")[0]));
		nowLatlng.add(Double.parseDouble(nowPos.get(1).split(",")[1]));
		hMap.put("nowLatlng", nowLatlng);
		hMap.put("nowAddr", nowPos.get(1).split(",")[2]);
		hMap.put("latlng", nowPos.get(0));
		return hMap;
	}
	
	public HitchVo getHdriverPage(int driverNo) {
		return ss.selectOne("spotmate.gethdriverpage", driverNo);
	}
	
	public HitchVo selectSummaryInfo(int mateNo) {
		return ss.selectOne("spotmate.selectsummarydriverinfo", mateNo);
	}
	
	public List<HitchVo> getNear() {
		return ss.selectList("spotmate.selectnear");
	}
	
	public MapVo selectDriverPos(MapVo mVo) {
		MapVo mVo2 = ss.selectOne("spotmate.selectDriverPos", mVo);
		if (!mVo2.getAddr().split(",")[2].equals(mVo.getAddr())) {
			mVo2.setLat(Double.parseDouble(mVo2.getAddr().split(",")[1]));
			mVo2.setLng(Double.parseDouble(mVo2.getAddr().split(",")[0]));
			mVo2.setAddr(mVo2.getAddr().split(",")[2]);
			return mVo2;
		};
		return mVo;
	}
}