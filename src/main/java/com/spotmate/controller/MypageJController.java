package com.spotmate.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spotmate.service.MypageJService;
import com.spotmate.vo.CarpoolVo;
import com.spotmate.vo.CouponVo;
import com.spotmate.vo.PointVo;
import com.spotmate.vo.RefundVo;
import com.spotmate.vo.UserVo;

@Controller
@RequestMapping(value = "/mypageJ")
public class MypageJController {

	@Autowired
	private MypageJService mypagejService;

	// 쿠폰메인
	@RequestMapping(value = "/myCouponMain", method = { RequestMethod.GET, RequestMethod.POST })
	public String myCouponMain(Model model, @ModelAttribute CouponVo couponVo, HttpSession session) {
		System.out.println("MypageJController > myCouponMain");

		UserVo authUser = (UserVo) session.getAttribute("authUser");
		int userNo = authUser.getNo();

		Map<String, Object> cMap = mypagejService.getCouponBList(couponVo, userNo);

		model.addAttribute("cMap", cMap);

		return "/mypage/myCouponMain";
	}

	// 쿠폰상품
	@RequestMapping(value = "/myCouponBuy", method = { RequestMethod.GET, RequestMethod.POST })
	public String myCouponBuy(Model model,
			@RequestParam(value = "minValue", required = false, defaultValue = "") String minValue,
			@RequestParam(value = "maxValue", required = false, defaultValue = "") String maxValue,
			@RequestParam(value = "option1", required = false, defaultValue = "") String option1,
			@RequestParam(value = "option2", required = false, defaultValue = "") String option2) {
		System.out.println("MypageJController > myCouponBuy");

		List<CouponVo> couponList = mypagejService.getCouponList(minValue, maxValue, option1, option2);

		model.addAttribute("couponList", couponList);

		return "/mypage/myCouponBuy";
	}

	// 쿠폰클릭
	@RequestMapping(value = "/myCouponUse/{no}", method = { RequestMethod.GET, RequestMethod.POST })
	public String myCouponUse(@PathVariable("no") int couponNo, Model model, HttpSession session) {
		System.out.println("MypageJController > myCouponUse");

		UserVo authUser = (UserVo) session.getAttribute("authUser");

		int userNo = authUser.getNo();

		Map<String, Object> cuMap = mypagejService.getCouponUseMain(couponNo, userNo);

		model.addAttribute("cuMap", cuMap);

		return "/mypage/myCouponUse";
	}

	// 쿠폰구매
	@RequestMapping(value = "/couponPurchase", method = { RequestMethod.GET, RequestMethod.POST })
	public String myCouponPurchase(CouponVo couponVo, HttpSession session) {
		System.out.println("MypageJController > myCouponPurchase");

		UserVo authUser = (UserVo) session.getAttribute("authUser");

		int userNo = authUser.getNo();

		mypagejService.couponPurchase(userNo, couponVo);

		return "redirect:/mypageJ/myCouponMain";
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
	public void myPointCharge(Long point, HttpSession session) {
		System.out.println("MypageJController > kakaoPaySuccess");

		UserVo authUser = (UserVo) session.getAttribute("authUser");

		int userNo = authUser.getNo();

		mypagejService.chargePoint(point, userNo);

	}

	// 포인트메인
	@RequestMapping(value = "/myPointMain", method = { RequestMethod.GET, RequestMethod.POST })
	public String myPointMain(Model model, @ModelAttribute PointVo pointVo, HttpSession session) {
		System.out.println("MypageJController > myPointMain");
		
		UserVo authUser = (UserVo) session.getAttribute("authUser");

		int userNo = authUser.getNo();

		Map<String, Object> cMap = mypagejService.getPointList(pointVo, userNo);
		model.addAttribute("cMap", cMap);

		return "/mypage/myPointMain";
	}
	
	//포인트환불메인
	@RequestMapping(value = "/myPointRefundMain", method = { RequestMethod.GET, RequestMethod.POST })
	public String myPointRefundMain(Model model, @ModelAttribute RefundVo RefundVo, HttpSession session) {
		System.out.println("MypageJController > myPointRefundMain");
		
		UserVo authUser = (UserVo) session.getAttribute("authUser");

		int userNo = authUser.getNo();
		
		Map<String, Object> cMap= mypagejService.getRefundList(RefundVo, userNo);
		model.addAttribute("cMap", cMap);
		
		return "/mypage/myPointRefundMain";
	}

	@RequestMapping(value = "/myPointRefundForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String myPointRefundForm() {
		return "/mypage/myPointRefundForm";
	}

	// 포인트환불
	@RequestMapping(value = "/myPointRefund", method = { RequestMethod.GET, RequestMethod.POST })
	public String myPointRefund(@ModelAttribute RefundVo refundVo, HttpSession session) {
		
		UserVo authUser = (UserVo) session.getAttribute("authUser");

		int userNo = authUser.getNo();
		
		mypagejService.refundPoint(refundVo, userNo);

		return "redirect:/mypageJ/myPointRefundMain";
	}

}
