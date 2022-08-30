package com.spotmate.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.executor.ExecutorException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.UncategorizedSQLException;
import org.springframework.stereotype.Repository;

import com.spotmate.vo.HitchReservVo;
import com.spotmate.vo.HitchSearchResultVo;
import com.spotmate.vo.HitchSearchVo;
import com.spotmate.vo.HitchVo;
import com.spotmate.vo.MapVo;

@Repository
public class HitchDao {
	
	@Autowired
	private SqlSession ss;
	
	public List<HitchVo> getNear(int userNo) {
		return ss.selectList("spotmate.selectnear", userNo);
	}
	public List<HitchVo> nearHitchList(int userNo) {
		return ss.selectList("spotmate.nearhitchlist", userNo);
	}
	//신청한게 있나 없나 확인
	public Map<String, Object> cancelChk(int mateNo, int userNo) {
		Map<String, Object> nMap = new HashMap<>();
		Map<String, Object> map = new HashMap<>();
		nMap.put("mateNo", mateNo);
		nMap.put("userNo", userNo);
		try {
			 map = ss.selectOne("spotmate.cancelChk", nMap);
		} catch(NullPointerException e) {
		}
		return map;
	}
	//유저가 탑승예약 할 때
	public int updateReserv(HitchReservVo hrVo){
//		int canRide = ss.selectOne("spotmate.chkpeople", hrVo.getMateNo());
//		if ( canRide >= hrVo.getPeople()) {
		ss.update("spotmate.updatereservpeople", hrVo);
		ss.insert("spotmate.makereserv", hrVo);
//		} else {
//			return -1;
//		}
		return ss.selectOne("spotmate.chkpeople", hrVo);
	}
	//유저가 탑승예약 취소 할 때	
	public int cancelReserv(int userNo, int mateNo) {
		int people = -1;
		Map<String, Object> nMap = new HashMap<String, Object>();
		nMap.put("userNo", userNo);
		nMap.put("mateNo", mateNo);
		try {
			ss.insert("spotmate.cancelreserv", nMap);
			ss.delete("spotmate.deletecancelreserv", nMap);
			people = ss.selectOne("spotmate.chkpeople", mateNo);
		} catch(ExecutorException e) {
			return people;
		}
		return people;
	}
	//탑승가능한 상태인지 아닌지(내가 신청하기 직전에 다른 사람이 눌러서 인원이 초과될 수 있으니 확인)
	public int chkRide(int mateNo) {
		return ss.selectOne("spotmate.chkride", mateNo);
	}
	//드라이버 현재 위치 저장하면서 탑승한 유저 목록 가져옴
	public List<HitchReservVo> watchPos(MapVo mVo) {
		try {
			ss.update("spotmate.watchpos", mVo);
		} catch (UncategorizedSQLException e) {}
		return ss.selectList("spotmate.selectrideuser", mVo.getMateNo());
	}
	
	public Map<String, Object> selectDriverInfo(int mateNo) {
		HitchVo hVo = ss.selectOne("spotmate.selecthitchdriverinfo", mateNo);
		if (hVo == null) {
			hVo = ss.selectOne("spotmate.selecthitchdriverinfonoreview", mateNo);
			hVo.setStar(0.0);
		}
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
	
	public List<HitchVo> getHdriverPage(int driverNo) {
		return ss.selectList("spotmate.gethdriverpage", driverNo);
	}
	
	public HitchVo selectSummaryInfo(int mateNo, int userNo) {
		Map<String, Object> map = new HashMap<>();
		map.put("mateNo", mateNo);
		map.put("userNo", userNo);
		return ss.selectOne("spotmate.selectsummarydriverinfo", map);
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
	
	public List<HitchSearchResultVo> searchList(HitchSearchVo hsVo) {
		return ss.selectList("spotmate.searchlist", hsVo);
	}
}