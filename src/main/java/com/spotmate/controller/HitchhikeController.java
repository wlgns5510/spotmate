package com.spotmate.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spotmate.service.HitchService;

@Controller
public class HitchhikeController {
	
	@Autowired
	private HitchService hs;
	
	@RequestMapping(value="/spotHitchhike", method={RequestMethod.GET, RequestMethod.POST})
	public String hitch(Model model) {
		model.addAttribute("hitchList", hs.getHitchList());
		return "/spothitch/spotHitchMain";
	}
	@RequestMapping(value="/spotHitchhikedeep", method={RequestMethod.GET, RequestMethod.POST})
	public String hitchdeep() {
		return "/spothitch/spotHitchDeep";
	}
}