package com.spotmate.controller;

import java.util.List;
import java.util.Map;

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
	private MypageJService mypagejService;

	// 쿠폰메인
	@RequestMapping(value = "/myCouponMain", method = { RequestMethod.GET, RequestMethod.POST })
	public String myCouponMain(Model model,
			@RequestParam(value = "startDate", required = false, defaultValue = "") String startDate,
			@RequestParam(value = "endDate", required = false, defaultValue = "") String endDate,
			@RequestParam(value = "option1", required = false, defaultValue = "") String option1,
			@RequestParam(value = "option2", required = false, defaultValue = "") String option2,
			@RequestParam(value = "crtPage", required = false, defaultValue = "1") int crtPage) {
		System.out.println("MypageJController > myCouponMain");

		Map<String, Object> cMap = mypagejService.getCouponList(startDate, endDate, option1, option2, crtPage);

		model.addAttribute("cMap", cMap);

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

	@RequestMapping(value = "/myPointCharge", method = { RequestMethod.GET, RequestMethod.POST })
	public String myPointCharge() {
		System.out.println("MypageJController > myPointCharge");

		return "/mypage/myPointCharge";
	}

	// 카카오페이
	@RequestMapping(value = "/kakaoPaySuccess", method = { RequestMethod.GET, RequestMethod.POST })
	public void myPointCharge(Long point) {
		System.out.println("MypageJController > kakaoPaySuccess");

		mypagejService.chargePoint(point);
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
