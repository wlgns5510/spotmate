package com.spotmate.controller;

import java.time.LocalTime;
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
import com.spotmate.vo.HitchInfoVo;
import com.spotmate.vo.HitchReservVo;
import com.spotmate.vo.HitchVo;
import com.spotmate.vo.MapVo;
import com.spotmate.vo.UserVo;

@Controller
public class HitchhikeController {
	
	@Autowired
	private HitchService hService;
	
	@RequestMapping(value="/spotHitchhike", method={RequestMethod.GET, RequestMethod.POST})
	public String hitch() {
		return "/spothitch/spotHitchMain";
	}
	
	@RequestMapping(value="/spotHitchDriver", method={RequestMethod.GET, RequestMethod.POST})
	public String hitchDriver(Model model, HttpSession session) {
		UserVo authVo = (UserVo) session.getAttribute("authUser");
		model.addAttribute("hVo", hService.getHdriverPage(authVo.getNo()));
		return "/spothitch/spotHitchDriver";
	}
	
//	@ResponseBody
//	@RequestMapping(value="/search", method= {RequestMethod.GET, RequestMethod.POST})
//	public List<HitchVo> search (@RequestBody sVo) {
//		return hService.getsearchList(sVo);
//	}
	
	@ResponseBody
	@RequestMapping(value="/nearHitchList", method= {RequestMethod.GET, RequestMethod.POST})
	public List<HitchVo> nearHitchList(@RequestBody MapVo mVo) {
		return hService.getHitchList(mVo);
	}
	
	@ResponseBody
	@RequestMapping(value="/updateInfo", method= {RequestMethod.GET, RequestMethod.POST})
	public Map<String, Object> updateInfo(@RequestBody HitchInfoVo hiVo) {
		Map<String, Object> hMap = new HashMap<>();
		hMap.put("hVo", hService.getSummaryInfo(hiVo.getMateNo()));
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
	public int rideReq(@RequestBody HitchReservVo hrVo) {
		int people = hService.makeReserv(hrVo);
		if(people == -1) {
			return -1;
		}
		return people;
	}
	
	@ResponseBody
	@RequestMapping(value="/now", method= {RequestMethod.GET, RequestMethod.POST})
	public int now(@RequestBody MapVo mVo) {
		LocalTime now = LocalTime.now();
		System.out.println(now +": "+mVo);
		hService.watchPos(mVo);
		return 1;
	}
	
	@ResponseBody
	@RequestMapping(value="/userPos", method= {RequestMethod.GET, RequestMethod.POST})
	public List<HitchVo> userPos(@RequestBody MapVo mVo) {
		LocalTime now = LocalTime.now();
		System.out.println(now +": "+mVo);
		return hService.getNear(mVo);
	}
}