package com.spotmate.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spotmate.service.DriverLicenseService;
import com.spotmate.service.MyQnaService;
import com.spotmate.service.MypageJService;
import com.spotmate.service.MypageRService;
import com.spotmate.vo.DriverLicenseVo;
import com.spotmate.vo.UsageSearchVo;
import com.spotmate.vo.UserVo;
import com.spotmate.vo.myQnaVo;

@Controller
public class MypageRController {

	@Autowired
	private DriverLicenseService dls;
	private UserVo uVo;

	@Autowired
	private MypageRService mService;

	@Autowired
	private HttpSession ss;

	@Autowired
	private MyQnaService mqs;
	@Autowired
	private MypageJService mypagejService;
	private int userNo;

	
	
	
	
	
	
	
	
	
	///////////////////////////////////////////////////////////////////////////////////////////
	
	// qna등록
		@RequestMapping(value = "/myQnaInsert", method = { RequestMethod.GET, RequestMethod.POST })
		public String myQnaInsert(@ModelAttribute myQnaVo mqv, HttpSession ss) {
			System.out.println(mqv);

			UserVo authUser = (UserVo) ss.getAttribute("authUser");
			int userNo = authUser.getNo();
			mqv.setUserNo(userNo);// 세팅을 해놓는다
			mqs.InsertQna(mqv); // 메소드가 없어 서비스로 만들어주러가야함

			return "/mypage/myQnaMain";

		}

		@RequestMapping(value = "/myQnaMain", method = { RequestMethod.GET, RequestMethod.POST })
		public String myQnaMain(@ModelAttribute myQnaVo mqv, HttpSession ss) {
			UserVo authUser = (UserVo) ss.getAttribute("authUser");
			int userNo = authUser.getNo();

			mqs.getMyQnaList(userNo);
			return "/mypage/myQnaMain";
		}
		
		@RequestMapping(value = "/myQnaWriteForm", method = { RequestMethod.GET, RequestMethod.POST })
		public String myQnaWriteForm() {
			return "/mypage/myQnaWriteForm";
		}
		
		
	////////////////////////////////////////////////////////////////// qna 
		@RequestMapping(value = "/myUsageUserMain/{no}", method = { RequestMethod.GET, RequestMethod.POST })
		public String myUsageUserMain(@PathVariable int no, Model model, @ModelAttribute UsageSearchVo usVo) {
			UserVo authUser = (UserVo)ss.getAttribute("authUser");
			if( authUser == null ) {
				return "redirect:/loginForm";
			}
			model.addAttribute("uMap", mService.getUserUsageList(authUser.getNo(), no, usVo));
			return "/mypage/myUsageUserMain";
		}
		
		@RequestMapping(value = "/myUsageDriverMain/{no}", method = { RequestMethod.GET, RequestMethod.POST })
		public String myUsageDriverMain(@PathVariable int no, Model model, @ModelAttribute UsageSearchVo usVo) {
			Map<String, Object> topNavMap = mypagejService.myPageTopNav(userNo);
			model.addAttribute("topNavMap", topNavMap);
			
			UserVo authUser = (UserVo)ss.getAttribute("authUser");
			
			if( authUser == null ) {
				return "redirect:/loginForm";
			}
			model.addAttribute("uMap", mService.getDriverUsageList(authUser.getNo(), no, usVo));
			return "/mypage/myUsageDriverMain";
		}
		
		@RequestMapping(value = "/myReservationUserMain/{no}", method = { RequestMethod.GET, RequestMethod.POST })
		public String myResvUserMain(@PathVariable int no, Model model, @ModelAttribute UsageSearchVo usVo) {
			UserVo authUser = (UserVo)ss.getAttribute("authUser");
			if( authUser == null ) {
				Map<String, Object> topNavMap = mypagejService.myPageTopNav(userNo);
				model.addAttribute("topNavMap", topNavMap);
				return "redirect:/loginForm";
			}
			model.addAttribute("uMap", mService.getUserResvList(authUser.getNo(), no, usVo));
			return "/mypage/myReservationUserMain";
		}
		
		@RequestMapping(value = "/myReservationDriverMain/{no}", method = { RequestMethod.GET, RequestMethod.POST })
		public String myResvDriverMain(@PathVariable int no, Model model, @ModelAttribute UsageSearchVo usVo) {
			UserVo authUser = (UserVo)ss.getAttribute("authUser");
			Map<String, Object> topNavMap = mypagejService.myPageTopNav(userNo);
			model.addAttribute("topNavMap", topNavMap);
			
			if( authUser == null ) {
				return "redirect:/loginForm";
			}
			model.addAttribute("uMap", mService.getDriverResvList(authUser.getNo(), no, usVo));
			return "/mypage/myReservationDriverMain";
		}
		
		@RequestMapping(value = "/review", method = { RequestMethod.GET, RequestMethod.POST })
		public String review(Model model) {
			return "/mypage/myReview";
		}
	
	
	
	
	
	
	
	}