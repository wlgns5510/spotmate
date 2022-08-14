package com.spotmate.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spotmate.service.MypageJService;
import com.spotmate.vo.CouponVo;

@Controller
@RequestMapping(value = "/mypageJ")
public class MypageJController {

	@Autowired
	private MypageJService mypageJService;

	// 쿠폰메인
	@RequestMapping(value = "/myCouponMain", method = { RequestMethod.GET, RequestMethod.POST })
	public String myCouponMain(Model model, @RequestParam(value = "startDate", required = false, defaultValue = "") String startDate,
											@RequestParam(value = "endDate", required = false, defaultValue = "") String endDate,
											@RequestParam(value = "option1", required = false, defaultValue = "") String option1,
											@RequestParam(value = "option2", required = false, defaultValue = "") String option2) {
		System.out.println("MypageJController > myCouponMain");
		
		
		List<CouponVo> couponList = mypageJService.getCouponList(startDate, endDate, option1, option2);
		
		
		model.addAttribute("couponList", couponList);
		
		return "/mypage/myCouponMain";
	}

	@RequestMapping(value = "/myCouponBuy", method = { RequestMethod.GET, RequestMethod.POST })
	public String myCouponBuy() {
		return "/mypage/myCouponBuy";
	}

	@RequestMapping(value = "/myCouponUse", method = { RequestMethod.GET, RequestMethod.POST })
	public String myCouponUse() {
		return "/mypage/myCouponUse";
	}

	@RequestMapping(value = "/myInfoChk", method = { RequestMethod.GET, RequestMethod.POST })
	public String myInfoChk() {
		return "/mypage/myInfoChk";
	}
	
	//포인트충전
	@RequestMapping(value = "/myPointCharge", method = { RequestMethod.GET, RequestMethod.POST })
	public String myPointCharge(Long point) {
		System.out.println(point);
		
		return "/mypage/myPointCharge";
	}

	@RequestMapping(value = "/myPointMain", method = { RequestMethod.GET, RequestMethod.POST })
	public String myPointMain() {
		return "/mypage/myPointMain";
	}

	@RequestMapping(value = "/myPointRefundMain", method = { RequestMethod.GET, RequestMethod.POST })
	public String myPointRefundMain() {
		return "/mypage/myPointRefundMain";
	}

	@RequestMapping(value = "/myPointRefundForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String myPointRefundForm() {
		return "/mypage/myPointRefundForm";
	}

}
