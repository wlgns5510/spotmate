package com.spotmate.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spotmate.service.MyQnaService;
import com.spotmate.service.MypageJService;
import com.spotmate.service.MypageRService;
import com.spotmate.vo.ReviewVo;
import com.spotmate.vo.UsageSearchVo;
import com.spotmate.vo.UserVo;
import com.spotmate.vo.myQnaVo;

@Controller
public class MypageRController {

	@Autowired
	private MypageRService mService;

	@Autowired
	private HttpSession ss;

	@Autowired
	private MyQnaService mqs;
	@Autowired
	private MypageJService mypagejService;

	
	
	
	
	
	
	
	
//////////////////////////////////////////////////////////////////qna 
	
	@RequestMapping(value = "/myQnaMain", method = { RequestMethod.GET, RequestMethod.POST })
	public String myQnaMain(Model model) {
		
		UserVo authUser = (UserVo) ss.getAttribute("authUser");
		
		int userNo = authUser.getNo();
		
		Map<String, Object> topNavMap = mypagejService.myPageTopNav(userNo);
		model.addAttribute("topNavMap", topNavMap);
		model.addAttribute("qList", mqs.getMyQnaList(userNo));
		
		return "/mypage/myQnaMain";
	}
	
	@RequestMapping(value = "/myQnaWriteForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String myQnaWriteForm() {
		return "/mypage/myQnaWriteForm";
	}
	
	// qna등록
	@RequestMapping(value = "/myQnaInsert", method = { RequestMethod.GET, RequestMethod.POST })
	public String myQnaInsert(@ModelAttribute myQnaVo mqv) {
		System.out.println(mqv);

		UserVo authUser = (UserVo) ss.getAttribute("authUser");
		int userNo = authUser.getNo();
		mqv.setUserNo(userNo);// 세팅을 해놓는다
		mqs.InsertQna(mqv); // 메소드가 없어 서비스로 만들어주러가야함

		 return "redirect:/myQnaMain";

	}
	

	@RequestMapping(value = "/myUsageUserMain/{no}", method = { RequestMethod.GET, RequestMethod.POST })
	public String myUsageUserMain(@PathVariable int no, Model model, @ModelAttribute UsageSearchVo usVo) {
		UserVo authUser = (UserVo)ss.getAttribute("authUser");
		if( authUser == null ) {
			return "redirect:/loginForm";
		}
		Map<String, Object> topNavMap = mypagejService.myPageTopNav(authUser.getNo());
		model.addAttribute("topNavMap", topNavMap);
		model.addAttribute("uMap", mService.getUserUsageList(authUser.getNo(), no, usVo));
		return "/mypage/myUsageUserMain";
	}
	
	@RequestMapping(value = "/myUsageDriverMain/{no}", method = { RequestMethod.GET, RequestMethod.POST })
	public String myUsageDriverMain(@PathVariable int no, Model model, @ModelAttribute UsageSearchVo usVo) {
		
		UserVo authUser = (UserVo)ss.getAttribute("authUser");
		
		if( authUser == null ) {
			return "redirect:/loginForm";
		}
		
		Map<String, Object> topNavMap = mypagejService.myPageTopNav(authUser.getNo());
		model.addAttribute("topNavMap", topNavMap);
		model.addAttribute("uMap", mService.getDriverUsageList(authUser.getNo(), no, usVo));
		return "/mypage/myUsageDriverMain";
	}

	
	@RequestMapping(value = "/myReservationUserMain/{no}", method = { RequestMethod.GET, RequestMethod.POST })
	public String myResvUserMain(@PathVariable int no, Model model, @ModelAttribute UsageSearchVo usVo) {
		UserVo authUser = (UserVo)ss.getAttribute("authUser");
		if( authUser == null ) {
			return "redirect:/loginForm";
		}
		Map<String, Object> topNavMap = mypagejService.myPageTopNav(authUser.getNo());
		model.addAttribute("topNavMap", topNavMap);
		model.addAttribute("uMap", mService.getUserResvList(authUser.getNo(), no, usVo));
		return "/mypage/myReservationUserMain";
	}
	
	@RequestMapping(value = "/myReservationDriverMain/{no}", method = { RequestMethod.GET, RequestMethod.POST })
	public String myResvDriverMain(@PathVariable int no, Model model, @ModelAttribute UsageSearchVo usVo) {
		UserVo authUser = (UserVo)ss.getAttribute("authUser");
		if( authUser == null ) {
			return "redirect:/loginForm";
		}
		Map<String, Object> topNavMap = mypagejService.myPageTopNav(authUser.getNo());
		model.addAttribute("topNavMap", topNavMap);
		model.addAttribute("uMap", mService.getDriverResvList(authUser.getNo(), no, usVo));
		return "/mypage/myReservationDriverMain";
	}
	
	@ResponseBody
	@RequestMapping(value = "/endResv", method = { RequestMethod.GET, RequestMethod.POST })
	public int endResv(@RequestBody Map<String, Object> map) {
		UserVo authUser = (UserVo)ss.getAttribute("authUser");
		int count = mService.endResv(Integer.parseInt(map.get("mateNo").toString()), authUser.getNo());
		if( map.get("type").toString().equals("히치 하이크")) {
			authUser.setChkHitch(0);
			ss.removeAttribute("authUser");
			ss.setAttribute("authUser", authUser);
		}
		return count;
//		return mService.endResv(mateNo, authUser.getNo());
	}
	
	@RequestMapping(value = "/userReview/{no}", method = { RequestMethod.GET, RequestMethod.POST })
	public String userReview(@PathVariable int no, Model model,
			 @RequestParam(value = "type", required = false) String type) {
		UserVo authUser = (UserVo)ss.getAttribute("authUser");
		if(type!=null) {
			model.addAttribute("riVo", mService.forReviewInfo(no, authUser.getNo()));
		} else {
			model.addAttribute("riVo", mService.forReviewInfo(no));
		}
		return "/mypage/myUserReview";
	}
	
	@RequestMapping(value = "/userReviewInsert", method = { RequestMethod.GET, RequestMethod.POST })
	public String userReviewInsert(@ModelAttribute ReviewVo rVo) {
		mService.insertUserReview(rVo);
		return "/mypage/endReview";
	}
	
	@RequestMapping(value = "/driverReview/{no}", method = { RequestMethod.GET, RequestMethod.POST })
	public String driverReview(@PathVariable int no, Model model) {
		Map<String, Object> map = new HashMap<>();
		UserVo authUser = (UserVo)ss.getAttribute("authUser");
		int userNo = authUser.getNo();
		map.put("pList", mService.getPassengerList(no, userNo));
		map.put("riVo", mService.forReviewInfo(no));
		model.addAttribute("map", map);
		return "/mypage/myDriverReview";
	}
	
	@RequestMapping(value = "/driverReviewInsert", method = { RequestMethod.GET, RequestMethod.POST })
	public String driverReviewInsert(@ModelAttribute ReviewVo rVo) {
		UserVo authUser = (UserVo)ss.getAttribute("authUser");
		if(rVo == null) {
			return "/mypage/endReview";
		}
		mService.insertDriverReview(rVo, authUser.getNo());
		return "/mypage/endReview";
	}


}
