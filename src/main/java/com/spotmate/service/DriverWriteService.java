package com.spotmate.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spotmate.dao.DriverWriteDao;
import com.spotmate.function.ConvertPoint;
import com.spotmate.function.LatlngHttpRequest;
import com.spotmate.function.NaviHttpRequest;
import com.spotmate.vo.DaylatlngVo;
import com.spotmate.vo.DriverWriteVo;
import com.spotmate.vo.LatlngVo;
import com.spotmate.vo.MateWriteVo;
import com.spotmate.vo.StartEndTimeVo;

@Service
public class DriverWriteService {
	
	@Autowired
	private DriverWriteDao dwDao;
	@Autowired
	private ConvertPoint cp;
	
	public void carpoolRegister(DriverWriteVo dwVo, int userNo, int carNo) {
		dwVo.setUserNo(userNo);
		dwVo.setCarNo(carNo);
		int temp1 = Integer.parseInt(dwVo.getStime1().split(":")[1]) + (int)(dwVo.getIntdur()/60);
		int temp2 = Integer.parseInt(dwVo.getStime1().split(":")[0]) + (int)(temp1/60);
		int temp3 = (int)(temp1 % 60);
		String str1 ="";
		String str2 ="";
		if ((temp2+"").length() == 1) {
			str1 = "0"+temp2;
		} else {
			str1 = temp2+"";
		}
		if ((temp3+"").length() == 1) {
			str2 = "0"+temp3;
		} else {
			str2 = temp3+"";
		}
		
		dwVo.setEtime1(str1+":"+str2);
		
		dwDao.carpoolInsert(dwVo);
	}
	
	public void hitchRegister(DriverWriteVo dwVo, int userNo, int carNo) {
		dwVo.setUserNo(userNo);
		dwVo.setCarNo(carNo);
		dwDao.hitchInsert(dwVo);
	}
	
	public void mateRegister(MateWriteVo mwVo, int userNo, int carNo) {
		mwVo.setUserNo(userNo);
		mwVo.setCarNo(carNo);
		dwDao.mateInsert(mwVo);
	}
	
	public DriverWriteVo setIntfare(DriverWriteVo dwVo) {
		dwVo.setIntfare(Integer.parseInt(dwVo.getFare().replaceAll("[,P]", "")));
		return dwVo;
	}
	
	public Map<String, Object> getDriverInfo(int userNo) {
		Map<String, Object> map = new HashMap<>();
		String introduce = dwDao.getDriverIntroduce(userNo);
		String detailOpt = dwDao.getDriverDetailOpt(userNo);
		map.put("INTRODUCE", introduce);
		map.put("NAME", detailOpt);
		return map;
	}
	
	public int getMateNo(int userNo) {
		return dwDao.getMateNo(userNo);
	}
	
	public Map<String, Object> setDayPath(DaylatlngVo dayLatlng) throws IOException {
		Map<Integer, List<Double>> dll = new HashMap<>();
		List<Double> start = new ArrayList<Double>();
		setLatlng(start, dayLatlng.getSlng(), dayLatlng.getSlat());
		dll.put(0, start);
		List<Double> way1 = new ArrayList<Double>();
		if ( dayLatlng.getWlng1() != 0.0 ) {
			setLatlng(way1, dayLatlng.getWlng1(), dayLatlng.getWlat1());
			dll.put(1, way1);
		}
		List<Double> way2 = new ArrayList<Double>();
		if ( dayLatlng.getWlng2() != 0.0 ) {
			setLatlng(way2, dayLatlng.getWlng2(), dayLatlng.getWlat2());
			dll.put(2, way2);
		}
		List<Double> way3 = new ArrayList<Double>();
		if ( dayLatlng.getWlng3() != 0.0 ) {
			setLatlng(way3, dayLatlng.getWlng3(), dayLatlng.getWlat3());
			dll.put(3, way3);
		}
		List<Double> way4 = new ArrayList<Double>();
		if ( dayLatlng.getWlng4() != 0.0 ) {
			setLatlng(way4, dayLatlng.getWlng4(), dayLatlng.getWlat4());
			dll.put(4, way4);
		}
		List<Double> way5 = new ArrayList<Double>();
		if ( dayLatlng.getWlng5() != 0.0 ) {
			setLatlng(way5, dayLatlng.getWlng5(), dayLatlng.getWlat5());
			dll.put(5, way5);
		}
		List<Double> end = new ArrayList<Double>();
		setLatlng(end, dayLatlng.getElng(), dayLatlng.getElat());
		dll.put(6, end);
		
		List<Double> mergedRoute = new ArrayList<Double>();
		List<Integer> lst = new ArrayList<Integer>();
		int sum = 0;
		
		for (int i=0;i<7;i++) {
			if ( dll.get(i) != null ) {
				lst.add(i);
			}
		}
		
		for (int i=0;i<lst.size();i++) {
			if ( i == lst.size()-1) {
				break;
			}
			try {
				LatlngHttpRequest lhr = new LatlngHttpRequest(dll.get(lst.get(i)), dll.get(lst.get(i+1)));
				List<Double> route = lhr.getVer();
				sum += lhr.getFare();
				mergedRoute.addAll(route);
			} catch (NullPointerException e) {
				System.out.println("길찾기 실패");
			}
		}
		
		Map<String, Object> totalInfo = new HashMap<>();
		
		int fare = 0;
		StringBuffer totalFare = new StringBuffer();
		if ((int) (sum * 0.3) % 10 == 0) {
			fare = (int) (sum * 0.3);
		} else {
			for (int j = 1; j < 10; j++) {
				if ((int) (sum * 0.3) % 10 == j) {
					fare = (int) (sum * 0.3) + (10 - j);
				}
			}
		}
		totalFare.append(fare);
		String totalFares = cp.convertPoint(totalFare);
		
		StringBuffer benefit = new StringBuffer();
		if ((sum - (int) (sum * 0.3)) % 10 == 0) {
			fare = sum - (int) (sum * 0.3);
		} else {
			for (int j = 1; j < 10; j++) {
				if ( (sum - (int) (sum * 0.3)) % 10 == j) {
					fare = (sum - (int) (sum * 0.3)) + (10 - j);
				}
			}
		}
		benefit.append(fare);
		String benefits = cp.convertPoint(totalFare);
		
		totalInfo.put("latlng", mergedRoute);
		totalInfo.put("fare", totalFares);
		totalInfo.put("benefit", benefits);
		
		return totalInfo;
	}
	
	public MateWriteVo sumFare(MateWriteVo mwVo) {
		int fare = Integer.parseInt(mwVo.getFare1().replaceAll("[,P]", ""));
		if (mwVo.getFare2() != null) {
			fare += Integer.parseInt(mwVo.getFare2().replaceAll("[,P]", ""));
		}
		if (mwVo.getFare3() != null) {
			fare += Integer.parseInt(mwVo.getFare3().replaceAll("[,P]", ""));
		}
		if (mwVo.getFare4() != null) {
			fare += Integer.parseInt(mwVo.getFare4().replaceAll("[,P]", ""));
		}
		if (mwVo.getFare5() != null) {
			fare += Integer.parseInt(mwVo.getFare5().replaceAll("[,P]", ""));
		}
		
		String fares = cp.convertPoint(fare);
		mwVo.setTotalFare(fares);
		mwVo.setIntfare(fare);
		return mwVo;
	}
	
	public Map<String, Object> setPath(LatlngVo latlng) throws IOException {
		List<Double> start = new ArrayList<Double>();
		setLatlng(start, latlng.getSlng(), latlng.getSlat());
		List<Double> end = new ArrayList<Double>();
		setLatlng(end, latlng.getElng(), latlng.getElat());
		int day = latlng.getDay();
		NaviHttpRequest nhr = new NaviHttpRequest(start, end);
		if(day != 0) {
			nhr = new NaviHttpRequest(start, end, day);
		} else {
			nhr = new NaviHttpRequest(start, end);
		}
		Map<String, Object> totalInfo = nhr.getVer();
		totalInfo.put("start", start);
		totalInfo.put("end", end);
		totalInfo.put("splace", latlng.getSplace());
		totalInfo.put("eplace", latlng.getEplace());
		
		return totalInfo;
	}
	
	public List<StartEndTimeVo> chkAnotherCarpool(int userNo) {
		return dwDao.chkAnotherCarpool(userNo);
	}
	
	public String chkAnotherHitchhike(int userNo) {
		return dwDao.chkAnotherHitchhike(userNo);
	}
	
	private void setLatlng(List <Double> doubleList, double lat, double lng) {
		doubleList.add(lat);
		doubleList.add(lng);
	}

}