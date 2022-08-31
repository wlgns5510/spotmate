package com.spotmate.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spotmate.service.HitchService;
import com.spotmate.vo.CancelChkVo;
import com.spotmate.vo.HitchInfoVo;
import com.spotmate.vo.HitchReservVo;
import com.spotmate.vo.HitchSearchResultVo;
import com.spotmate.vo.HitchSearchVo;
import com.spotmate.vo.HitchVo;
import com.spotmate.vo.MapVo;
import com.spotmate.vo.UserVo;

@Controller
public class HitchhikeController {
	
	@Autowired
	private HitchService hService;
	@Autowired
	private HttpSession ss;
	
	@RequestMapping(value="/spotHitchhike", method={RequestMethod.GET, RequestMethod.POST})
	public String hitch() {
		return "/spothitch/spotHitchMain";
	}
	
	@RequestMapping(value="/spotHitchDriver", method={RequestMethod.GET, RequestMethod.POST})
	public String hitchDriver(Model model, HttpSession session) {
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		if(authUser == null) {
			return "redirect:/loginForm";
		}
		model.addAttribute("hVo", hService.getHdriverPage(authUser.getNo()));
		return "/spothitch/spotHitchDriver";
	}
	
	
	@ResponseBody
	@RequestMapping(value="/hitchsearch", method= {RequestMethod.GET, RequestMethod.POST})
	public List<HitchSearchResultVo> search (@RequestBody HitchSearchVo hsVo) {
		System.out.println(hsVo.toString());
		return hService.searchList(hsVo);
	}
	
	//hitchmain접속 시 주변 5km이내 차량 리스트 보여주는 부분
		@ResponseBody
		@RequestMapping(value="/nearHitchList", method= {RequestMethod.GET, RequestMethod.POST})
		public List<HitchVo> nearHitchList(@RequestBody MapVo mVo, HttpSession ss) {
			UserVo authUser = (UserVo)ss.getAttribute("authUser");
			if(authUser == null) {
				return hService.nearHitchList();
			}
			return hService.nearHitchList(mVo, authUser.getNo());
		}
	//이동중인 차 위치 확인
		@ResponseBody
		@RequestMapping(value="/driverPos", method= {RequestMethod.GET, RequestMethod.POST})
		public List<HitchVo> userPos(@RequestBody MapVo mVo) {
			UserVo authUser = (UserVo)ss.getAttribute("authUser");
			try {
				return hService.getNear(mVo, authUser.getNo());
			} catch (NullPointerException e) {
				return hService.getNear(mVo, 0);
			}
		}
	
	//신청한게 있나 없나 확인
	@ResponseBody
	@RequestMapping(value="/cancelChk", method= {RequestMethod.GET, RequestMethod.POST})
	public CancelChkVo cancelChk(@RequestBody int mateNo) {
		UserVo authUser = (UserVo)ss.getAttribute("authUser");
		Map<String, Object> map = new HashMap<>();
		CancelChkVo ccVo = new CancelChkVo();
		if( authUser != null ) {
			map = hService.cancelChk(mateNo, authUser.getNo());
		}
		try {
			int people = Integer.parseInt(map.get("PEOPLE").toString());
			ccVo.setResult(people);
		} catch (NullPointerException e){
			ccVo.setResult(-1);
		}
		ccVo.setMateNo(mateNo);
		return ccVo;
	}
	
	//탑승가능한 상태인지 아닌지(내가 신청하기 직전에 다른 사람이 눌러서 인원이 초과될 수 있으니 확인)
	@ResponseBody
	@RequestMapping(value="/chkRide", method= {RequestMethod.GET, RequestMethod.POST})
	public int chkRide(@RequestBody int mateNo) {
		return hService.chkRide(mateNo);
	}
	
	
	@ResponseBody
	@RequestMapping(value="/updateInfo", method= {RequestMethod.GET, RequestMethod.POST})
	public Map<String, Object> updateInfo(@RequestBody HitchInfoVo hiVo) {
		UserVo authUser = (UserVo)ss.getAttribute("authUser");
		Map<String, Object> hMap = new HashMap<>();
		if( authUser != null ) {
			hMap.put("hVo", hService.getSummaryInfo(hiVo.getMateNo(), authUser.getNo()));
		}
		hMap.put("hiVo", hiVo);
		return hMap;
	}
	
	@RequestMapping(value="/spotHitchhikedeep/{no}", method={RequestMethod.GET, RequestMethod.POST})
	public String hitchdeep(@PathVariable("no") int no, Model model) {
		Map<String, Object> hMap = hService.getDriverInfo(no);
		hMap.put("mateNo", no);
		model.addAttribute("hMap", hMap);
		return "/spothitch/spotHitchDeep";
	}
	
	@ResponseBody
	@RequestMapping(value="/updateDriverPos", method= {RequestMethod.GET, RequestMethod.POST})
	public MapVo updateDriverPos(@RequestBody MapVo mVo) {
		return hService.updateDriverPos(mVo);
	}
	
	
	@ResponseBody
	@RequestMapping(value="/rideReq", method={RequestMethod.GET, RequestMethod.POST})
	public int rideReq(@RequestBody HitchReservVo hrVo, HttpSession ss) {
		UserVo authUser = (UserVo)ss.getAttribute("authUser");
		hrVo.setUserNo(authUser.getNo());
		return hService.makeReserv(hrVo);
	}
	
	@ResponseBody
	@RequestMapping(value="/cancel", method={RequestMethod.GET, RequestMethod.POST})
	public int cancel(@RequestBody int mateNo, HttpSession ss) {
		UserVo authUser = (UserVo)ss.getAttribute("authUser");
		return hService.cancelReserv(authUser.getNo(), mateNo);
	}
	
	//Driver 현재 위치및 신청한 유저 위치 받아오는 부분
	@ResponseBody
	@RequestMapping(value="/now", method= {RequestMethod.GET, RequestMethod.POST})
	public List<HitchReservVo> now(@RequestBody MapVo mVo) {
		return hService.watchPos(mVo);
	}
	
}