package com.spotmate.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spotmate.service.MypageJService;
import com.spotmate.vo.CouponVo;
import com.spotmate.vo.PointVo;
import com.spotmate.vo.UserVo;

@Controller
@RequestMapping(value = "/mypageJ")
public class MypageJController {

	@Autowired
	private MypageJService mypagejService;

	// 쿠폰메인
	@RequestMapping(value = "/myCouponMain", method = { RequestMethod.GET, RequestMethod.POST })
	public String myCouponMain(Model model, HttpSession session,
			@RequestParam(value = "startDate", required = false, defaultValue = "") String startDate,
			@RequestParam(value = "endDate", required = false, defaultValue = "") String endDate,
			@RequestParam(value = "option1", required = false, defaultValue = "") String option1,
			@RequestParam(value = "option2", required = false, defaultValue = "") String option2,
			@RequestParam(value = "crtPage", required = false, defaultValue = "1") int crtPage) {
		System.out.println("MypageJController > myCouponMain");

		UserVo authUser = (UserVo) session.getAttribute("authUser");
		int userNo = authUser.getNo();

		Map<String, Object> cMap = mypagejService.getCouponBList(startDate, endDate, option1, option2, crtPage, userNo);

		model.addAttribute("cMap", cMap);

		return "/mypage/myCouponMain";
	}

	@RequestMapping(value = "/myCouponBuy", method = { RequestMethod.GET, RequestMethod.POST })
	public String myCouponBuy(Model model) {
		System.out.println("MypageJController > myCouponBuy");

		List<CouponVo> couponList = mypagejService.getCouponList();

		model.addAttribute("couponList", couponList);

		return "/mypage/myCouponBuy";
	}

	// 쿠폰클릭
	@RequestMapping(value = "/myCouponUse/{no}", method = { RequestMethod.GET, RequestMethod.POST })
	public String myCouponUse(@PathVariable("no") int couponNo, Model model) {
		System.out.println("MypageJController > myCouponUse");

		String couponImg = mypagejService.getCouponImg(couponNo);

		model.addAttribute("couponImg", couponImg);

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
	public void myPointCharge(Long point, HttpSession session) {
		System.out.println("MypageJController > kakaoPaySuccess");
		
		UserVo authUser= (UserVo)session.getAttribute("authUser");
		
		int userNo = authUser.getNo();
		
		mypagejService.chargePoint(point, userNo);
		
	}

	// 포인트메인
	@RequestMapping(value = "/myPointMain", method = { RequestMethod.GET, RequestMethod.POST })
	public String myPointMain(Model model, HttpSession session,
			@RequestParam(value = "startDate", required = false, defaultValue = "") String startDate,
			@RequestParam(value = "endDate", required = false, defaultValue = "") String endDate,
			@RequestParam(value = "option1", required = false, defaultValue = "") String option1,
			@RequestParam(value = "option2", required = false, defaultValue = "") String option2) {
		System.out.println("MypageJController > myPointMain");

		UserVo authUser = (UserVo) session.getAttribute("authUser");

		int userNo = authUser.getNo();

		List<PointVo> pointList = mypagejService.getPointList(userNo);

		model.addAttribute("pointList", pointList);

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
