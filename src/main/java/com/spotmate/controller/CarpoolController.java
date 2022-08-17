package com.spotmate.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spotmate.service.CarpoolService;
import com.spotmate.vo.CarpoolVo;

@Controller
public class CarpoolController {
	
	@Autowired
	CarpoolService carpoolService;
	


	@RequestMapping(value = "/spotMain", method = { RequestMethod.GET, RequestMethod.POST })
	public String spotMain() {
		
		return "/spotcarpool/spotMain";
	}

	@RequestMapping(value = "/spotCarpool", method = { RequestMethod.GET, RequestMethod.POST })

	public String spotCarpool() {
		
		return "/spotcarpool/spotCarpool";
	}

	/*
	//리스트 (탑승 가능 차량 리스트 + 출발지, 도착지 검색)
	@RequestMapping(value = "/spotCarpool/list", method = { RequestMethod.GET, RequestMethod.POST })
	public String list(Model model) {
		System.out.println("CarpoolController>list()");

		List<CarpoolVo> carpoolList = carpoolService.getList();

		model.addAttribute("carpoolList", carpoolList);

		return "/spotCarpool/list";

	}*/
	
		
	@RequestMapping(value = "/spotCarpoolDeep", method = { RequestMethod.GET, RequestMethod.POST })
	public String spotCarpoolDeep() {
		return "/spotcarpool/spotCarpoolDeep";
	}
	
	
	//리뷰 리스트 
	
	@RequestMapping(value = "/spotCarpoolDeep/list", method = { RequestMethod.GET, RequestMethod.POST })
	public String list2(Model model) {
		System.out.println("CarpoolController>list()");

		List<CarpoolVo> reviewList = carpoolService.getList2();

		model.addAttribute("reviewList", reviewList);

		return "/spotCarpoolDeep/list";

		}
	
	
	//드라이버 차량 정보 가져오기

	@RequestMapping(value = "/spotCarpoolDeep/driverInfoRead", method = { RequestMethod.GET, RequestMethod.POST })
	public String read(Model model, @RequestParam("no") int no) {
		System.out.println("CarpoolController>read()");


		CarpoolVo carpoolVo = carpoolService.read(no);

		model.addAttribute("carpoolVo", carpoolVo);

		return "/spotCarpoolDeep/driverInfoRead";

	}
}

