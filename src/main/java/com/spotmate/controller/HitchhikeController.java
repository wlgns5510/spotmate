package com.spotmate.controller;

import java.time.LocalTime;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spotmate.service.HitchService;
import com.spotmate.vo.HitchReservVo;
import com.spotmate.vo.HitchVo;
import com.spotmate.vo.MapVo;

@Controller
public class HitchhikeController {
	
	@Autowired
	private HitchService hs;
	
	@RequestMapping(value="/spotHitchhike", method={RequestMethod.GET, RequestMethod.POST})
	public String hitch(Model model) {
		System.out.println(hs.getHitchList().toString());
		model.addAttribute("hitchList", hs.getHitchList());
		return "/spothitch/spotHitchMain";
	}
	@RequestMapping(value="/spotHitchhikedeep/{no}", method={RequestMethod.GET, RequestMethod.POST})
	public String hitchdeep(@PathVariable("no") int no, Model model) {
		Map<String, Object> hMap = hs.getDriverInfo(no);
		hMap.put("mateNo", no);
		model.addAttribute("hMap", hMap);
		return "/spothitch/spotHitchDeep";
	}
	
	@ResponseBody
	@RequestMapping(value="/updateDriverPos", method= {RequestMethod.GET, RequestMethod.POST})
	public MapVo updateDriverPos(@RequestBody MapVo mVo) {
		System.out.println(hs.updateDriverPos(mVo).toString());
		return hs.updateDriverPos(mVo);
	}
	
	
	@ResponseBody
	@RequestMapping(value="/rideReq", method={RequestMethod.GET, RequestMethod.POST})
	public int rideReq(@RequestBody HitchReservVo hrVo) {
		System.out.println(hrVo.toString());
		int people = hs.makeReserv(hrVo);
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
		hs.watchPos(mVo);
		return 1;
	}
	
	@ResponseBody
	@RequestMapping(value="/userPos", method= {RequestMethod.GET, RequestMethod.POST})
	public List<HitchVo> userPos(@RequestBody MapVo mVo) {
		LocalTime now = LocalTime.now();
		System.out.println(now +": "+mVo);
		return hs.getNear(mVo);
	}
}