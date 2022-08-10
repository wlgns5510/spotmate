package com.spotmate.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class RealtimeController {
	
	@RequestMapping("/real")
	public ModelAndView real() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/test/real");
		return mv;
	}
}