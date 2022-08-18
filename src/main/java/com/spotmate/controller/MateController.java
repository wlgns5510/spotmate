package com.spotmate.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spotmate.service.MateService;
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
	public String mateMain(Model model) {
		System.out.println("MateController >> mateMain");
		
		// Service를 통해서 getMateList를 가져온다
		List<MateVo> mateList = mateService.getMateList();
		List<MateVo> mateOptionList = mateService.getMateOptionList();
		List<MateVo> matePlaceList = mateService.getMatePlaceList();

		
		//ds 데이터보내기 --> request attribute에 넣는다
		model.addAttribute("mateList", mateList);
		model.addAttribute("mateOptionList", mateOptionList);
		model.addAttribute("matePlaceList", matePlaceList);
		
		return "/mate/mateMain";
	}

	//mateNo에 해당하는 메이트딥 이동
	@RequestMapping(value = "/mateDeep/{mateNo}", method = { RequestMethod.GET, RequestMethod.POST })
	public String mateDeep(@PathVariable("mateNo") int mateNo, Model model) {
		System.out.println("MateController >> mateDeep");
		
		MateVo mateVo = mateService.deepMateRead(mateNo);
		List<MateVo> matePlaceList = mateService.deepPlaceRead(mateNo);
		model.addAttribute("mateVo", mateVo);
		model.addAttribute("matePlaceVo", matePlaceList);
		
		return "/mate/mateDeep";
	}


}
