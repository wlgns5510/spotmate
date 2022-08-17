package com.spotmate.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
//github.com/ljk0071/spotmate2.git
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spotmate.vo.DriverLicenseVo;

@Controller
public class MypageRController {

	private static final Object DriverLicenseVo = null;

	@RequestMapping(value = "/myDriverForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String myDriverForm() {
		return "/mypage/myDriverForm";
	}

	@RequestMapping(value = "/myDriverMain", method = { RequestMethod.GET, RequestMethod.POST })
	public String myDriverMain() {
		return "/mypage/myDriverMain";
	}

	@RequestMapping(value = "/myDriverWriteInsert", method = { RequestMethod.GET, RequestMethod.POST })
	public String myDriverInsert(@ModelAttribute DriverLicenseVo dlvo, @RequestParam("ch_type") List<String> ckList) {
		System.out.println("============================================================");
		System.out.println(dlvo.toString()); //ch_type=[ch_type1, ch_type2, ch_type3, ch_type5]]
		//System.out.println(ckList.toString()); //[ch_type1, ch_type2, ch_type3, ch_type5]
		System.out.println("============================================================");
		//dlvo.myDriverRegister(dlvo);
		return "redirect:/myDriverMain2";
	}
	
	@RequestMapping(value = "/myDriverMain2", method = { RequestMethod.GET, RequestMethod.POST })
	public String myDriverMain2(Model model) {
		/*강사님 강의 참고할 것*/
		
		model.addAttribute("dlvo",DriverLicenseVo);
		return "/mypage/myDriverMain2";
	}
	@RequestMapping(value = "/myQnaMain", method = { RequestMethod.GET, RequestMethod.POST })
	public String myQnaMain() {
		return "/mypage/myQnaMain";
	}

	@RequestMapping(value = "/myQnaWriteForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String myQnaWriteForm() {
		return "/mypage/myQnaWriteForm";
	}

	@RequestMapping(value = "/myReservationDriverMain", method = { RequestMethod.GET, RequestMethod.POST })
	public String myReservationDriverMain() {
		return "/mypage/myReservationDriverMain";
	}

	@RequestMapping(value = "/myReservationUserMain", method = { RequestMethod.GET, RequestMethod.POST })
	public String myReservationUserMain() {
		return "/mypage/myReservationUserMain";
	}

	@RequestMapping(value = "/myUsageDriverMain", method = { RequestMethod.GET, RequestMethod.POST })
	public String myUsageDriverMain() {
		return "/mypage/myUsageDriverMain";
	}

	@RequestMapping(value = "/myUsageUserMain", method = { RequestMethod.GET, RequestMethod.POST })
	public String myUsageUserMain() {
		return "/mypage/myUsageUserMain";
	}

	

}
