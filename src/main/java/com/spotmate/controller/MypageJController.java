package com.spotmate.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
public class MypageJController {
	 

	 
	@RequestMapping(value="/myCouponBuy", method={RequestMethod.GET, RequestMethod.POST})
	public String myCouponBuy() {
		return "/mypage/myCouponBuy";
	}
	@RequestMapping(value="/myCouponUse", method={RequestMethod.GET, RequestMethod.POST})
	public String myCouponUse() {
		return "/mypage/myCouponUse";
	}
	
	//쿠폰메인
	@RequestMapping(value="/myCouponMain", method={RequestMethod.GET, RequestMethod.POST})
	public String myCouponMain() {
		
		
		return "/mypage/myCouponMain";
	}
	
	@RequestMapping(value="/myInfoChk", method={RequestMethod.GET, RequestMethod.POST})
	public String myInfoChk() {
		return "/mypage/myInfoChk";
	}
	@RequestMapping(value="/myPointCharge", method={RequestMethod.GET, RequestMethod.POST})
	public String myPointCharge() {
		return "/mypage/myPointCharge";
	}
	@RequestMapping(value="/myPointMain", method={RequestMethod.GET, RequestMethod.POST})
	public String myPointMain() {
		return "/mypage/myPointMain";
	}
	@RequestMapping(value="/myPointRefundMain", method={RequestMethod.GET, RequestMethod.POST})
	public String myPointRefundMain() {
		return "/mypage/myPointRefundMain";
	}
	@RequestMapping(value="/myPointRefundForm", method={RequestMethod.GET, RequestMethod.POST})
	public String myPointRefundForm() {
		return "/mypage/myPointRefundForm";
	}
	
	

	
	
}
