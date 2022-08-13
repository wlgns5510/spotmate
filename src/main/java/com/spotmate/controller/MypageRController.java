package com.spotmate.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class MypageRController {
	 
	
	 
	
	@RequestMapping(value="/myDriverForm", method={RequestMethod.GET, RequestMethod.POST})
	public String myDriverForm() {
		return "/mypage/myDriverForm";
	}
	@RequestMapping(value="/myDriverMain", method={RequestMethod.GET, RequestMethod.POST})
	public String myDriverMain() {
		return "/mypage/myDriverMain";
	}
	@RequestMapping(value="/myDriverMain2", method={RequestMethod.GET, RequestMethod.POST})
	public String myDriverMain2() {
		return "/mypage/myDriverMain2";
	}
	@RequestMapping(value="/myQnaMain", method={RequestMethod.GET, RequestMethod.POST})
	public String myQnaMain() {
		return "/mypage/myQnaMain";
	}
	@RequestMapping(value="/myQnaWriteForm", method={RequestMethod.GET, RequestMethod.POST})
	public String myQnaWriteForm() {
		return "/mypage/myQnaWriteForm";
	}
	@RequestMapping(value="/myReservationDriverMain", method={RequestMethod.GET, RequestMethod.POST})
	public String myReservationDriverMain() {
		return "/mypage/myReservationDriverMain";
	}
	@RequestMapping(value="/myReservationUserMain", method={RequestMethod.GET, RequestMethod.POST})
	public String myReservationUserMain() {
		return "/mypage/myReservationUserMain";
	}
	@RequestMapping(value="/myUsageDriverMain", method={RequestMethod.GET, RequestMethod.POST})
	public String myUsageDriverMain() {
		return "/mypage/myUsageDriverMain";
	}
	@RequestMapping(value="/myUsageUserMain", method={RequestMethod.GET, RequestMethod.POST})
	public String myUsageUserMain() {
		return "/mypage/myUsageUserMain";
	}
	
	
}
