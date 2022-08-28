package com.spotmate.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spotmate.service.MateService;
import com.spotmate.vo.CarpoolVo;
import com.spotmate.vo.MateVo;

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
		List<MateVo> mateList = mateService.getMateList(mateVo);
		
		
			Random random = new Random();
			
			random.nextInt(28);
		
			ArrayList<Integer> randomNumList = new ArrayList<Integer>();
			
			//mateList의 크기에 맞게 랜덤숫자도 넣어줌
			for(int i=1; i<=mateList.size(); i++) {
				randomNumList.add(random.nextInt(28));
			}
			
		//ds 데이터보내기 --> request attribute에 넣는다
		model.addAttribute("mateList", mateList);
		model.addAttribute("randomNumList", randomNumList);
		
		
		return "/mate/mateMain";
	}

	//mateNo에 해당하는 메이트딥 이동 + 드라이버 차량 정보 가져오기 + 경로상세 + 차량의 상세조건
	@RequestMapping(value = "/mateDeep/{no}", method = { RequestMethod.GET, RequestMethod.POST })
	public String mateDeep(@PathVariable("no") int mateNo, Model model) {
		System.out.println("MateController >> mateDeep");
		
		MateVo mateVo = mateService.deepMateRead(mateNo);	//해당 메이트에 관한 정보
		MateVo mateDriverVo = mateService.deepMateDriverRead(mateNo);	//해당 메이트의 운전자,차량정보
		List<MateVo> matePlaceList = mateService.deepPlaceRead(mateNo);	//해당 메이트의 출발지, 경유지, 도착지정보
		List<MateVo> mateDetailList = mateService.deepDetailRead(mateNo); //해당 메이트의 운전자가 설정한 상세조건
		List<CarpoolVo> reviewList = mateService.deepReviewList(mateNo);	//해당 메이트의 운전자의 별점리스트
		CarpoolVo reviewAvg = mateService.deepReviewAvg(mateNo);	//해당 메이트 운전자의 별점 평균
		System.out.println(reviewList);
		
		model.addAttribute("mateVo", mateVo);
		model.addAttribute("matePlaceList", matePlaceList);
		model.addAttribute("mateDriverVo", mateDriverVo);
		model.addAttribute("mateDetailList", mateDetailList);
		model.addAttribute("reviewList", reviewList);
		model.addAttribute("reviewAvg", reviewAvg);
		
		return "/mate/mateDeep";
	}
	
	@RequestMapping(value = "/testMate", method = { RequestMethod.GET, RequestMethod.POST })
	public String test() {
		return "/mate/testMate";
	}
	
	
}