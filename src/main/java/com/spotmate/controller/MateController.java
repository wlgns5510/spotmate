package com.spotmate.controller;

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
import org.springframework.web.bind.annotation.ResponseBody;

import com.spotmate.service.MateService;
import com.spotmate.vo.MateVo;
import com.spotmate.vo.UserVo;

@Controller
public class MateController {
	
	@Autowired
	private MateService mateService;
	

	//메이트인포 이동
	@RequestMapping(value = "/mateInfo", method = { RequestMethod.GET, RequestMethod.POST })
	public String mateInfo() {
		System.out.println("MateController >> mateInfo");
		
		return "/mate/mateInfo";
	}

	//메이트메인 이동 + 메이트 리스트 가져오기
	@RequestMapping(value = "/mateMain", method = { RequestMethod.GET, RequestMethod.POST })
	public String mateMain(Model model, @ModelAttribute MateVo mateVo) {
		System.out.println("MateController >> mateMain");
				
		// Service를 통해서 getMateList를 가져온다	
		Map<String, Object> mLMap = mateService.getMateList(mateVo);

		model.addAttribute("mLMap", mLMap);
		
		return "/mate/mateMain";
	}

	
	
	//ajax 메이트 리스트 가져오기
	@ResponseBody
	@RequestMapping(value = "/mateList", method = { RequestMethod.GET, RequestMethod.POST })
	public Map<String, Object> getMateList(Model model, @RequestBody MateVo mateVo) {
		System.out.println("MateController >> getMateListA");
		
		System.out.println(mateVo);
		// Service를 통해서 getMateList를 가져온다	
		Map<String, Object> mLMap = mateService.getMateList(mateVo);
		
		System.out.println(mLMap);

		
		return mLMap;
	}
	
	
	
	//ajax 메이트 리스트 가져오기
	@ResponseBody
	@RequestMapping(value = "/optList", method = { RequestMethod.GET, RequestMethod.POST })
	public Map<String, Object> optList(Model model, @ModelAttribute MateVo mateVo) {
		System.out.println("MateController >> optList");
		
		// Service를 통해서 getMateList를 가져온다	
		Map<String, Object> mLMap = mateService.getMateList(mateVo);
		
		System.out.println(mLMap);

		
		return mLMap;
	}
	
	
	
	
	
	//mateNo에 해당하는 메이트딥 이동 + 드라이버 차량 정보 가져오기 + 경로상세 + 차량의 상세조건 + 차량 추천리스트
	@RequestMapping(value = "/mateDeep/{no}", method = { RequestMethod.GET, RequestMethod.POST })
	public String mateDeep(@PathVariable("no") int no, Model model, MateVo mVo) {
		System.out.println("MateController >> mateDeep");
		
		Map<String, Object> mMap = mateService.deepMateRead(no, mVo);
		
		model.addAttribute("mMap", mMap);
		
		
		return "/mate/mateDeep";
	}
	
	//메이트 user 예약내역 DB에 저장하기
	@RequestMapping(value = "/saveMate", method = { RequestMethod.GET, RequestMethod.POST })
	public String saveMate(@ModelAttribute MateVo mateVo, HttpSession session) {
		System.out.println("MateController >> saveMate");
		
		UserVo authUser = (UserVo)session.getAttribute("authUser"); //세션에서 로그인한 유저를 가져옴
		System.out.println("로그인한 회원정보: " + authUser);
		
		int userNo = authUser.getNo(); //로그인한 유저의 번호를 가져옴
		
		int result = mateService.saveMate(userNo, mateVo);
		System.out.println("result: " + result);
		if( result == 0) {
			return "redirect:/myReservationUserMain/1";
		}
				
		return "redirect:/mateDeep/" + mateVo.getSpotMateNo() + "?result=fail";
	}
	
	
	
	
	
	
}