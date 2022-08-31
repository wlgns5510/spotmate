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

import com.spotmate.service.CarpoolService;
import com.spotmate.vo.CarpoolVo;
import com.spotmate.vo.UserVo;

@Controller
public class CarpoolController {
	
	@Autowired
	CarpoolService carpoolService;
	

  
	@RequestMapping(value = "/spotMain", method = { RequestMethod.GET, RequestMethod.POST })
	public String spotMain() {
		
		return "/spotcarpool/spotMain";
	}

	
	// 차량 리스트
	
	@RequestMapping(value = "/spotCarpool", method = { RequestMethod.GET, RequestMethod.POST })
	public String list(Model model, @ModelAttribute CarpoolVo carpoolVo) {

		System.out.println("CarpoolController>list()");
		System.out.println(carpoolVo.toString());
		Map<String, Object> cMap = carpoolService.getList(carpoolVo);
		
		
		model.addAttribute("cMap", cMap);

		System.out.println("====================================");
		System.out.println(cMap);
		System.out.println("====================================");
		
		return "/spotcarpool/spotCarpool";
	}

	
	//드라이버 차량 정보 가져오기 (기본, 상세조건, 리뷰, 추천 리스트)
	
	@RequestMapping(value = "/spotCarpoolDeep/{no}", method = { RequestMethod.GET, RequestMethod.POST })
	public String spotCarpoolDeep(Model model, @PathVariable("no") int mateNo, CarpoolVo carpoolVo) {
		
		Map<String,Object> cVoMap = carpoolService.read(mateNo,carpoolVo);
		model.addAttribute("cVoMap", cVoMap);
		
		return "/spotcarpool/spotCarpoolDeep";
	}
	
	
	//user 예약내역 DB 저장
	
	@RequestMapping(value = "/saveCarpool", method = { RequestMethod.GET, RequestMethod.POST })
	public String saveCarpool (@ModelAttribute CarpoolVo carpoolVo, HttpSession session) {
		
		System.out.println("CarpoolController > saveCarpool");
		
		UserVo authUser= (UserVo)session.getAttribute("authUser");
		
		int userNo = authUser.getNo();
				
		int result = carpoolService.saveCarpool(userNo, carpoolVo); 
		
		if ( result == 0 ) {
			return "redirect:/myReservationUserMain/1";
		} else if( result == -2 ) {
			return "redirect:/spotCarpoolDeep/"+carpoolVo.getSpotMateNo()+"?pointResult=fail";
		} else {
			return "redirect:/spotCarpoolDeep/"+carpoolVo.getSpotMateNo()+"?result=fail";
		}
	}
	
	
	
}