package com.spotmate.controller;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spotmate.service.DriverLicenseService;
import com.spotmate.vo.DriverLicenseVo;

@Controller
public class MypageRController {

	private static final Object DriverLicenseVo = null;
	
	@Autowired
	private DriverLicenseService dls;
	private HttpSession hs;
	
	
	

	@RequestMapping(value = "/myDriverForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String myDriverForm() {
		return "/mypage/myDriverForm";
	}

	@RequestMapping(value = "/myDriverMain", method = { RequestMethod.GET, RequestMethod.POST })
	public String myDriverMain() {
		return "/mypage/myDriverMain";
	}
	//등록
	@RequestMapping(value = "/myDriverWriteInsert", method = { RequestMethod.GET, RequestMethod.POST })
	public String myDriverInsert(@ModelAttribute DriverLicenseVo dlvo, 
			@RequestParam("ch_type") List<String> ckList) {
		System.out.println("============================================================");
		System.out.println(dlvo.toString()); //ch_type=[ch_type1, ch_type2, ch_type3, ch_type5]]
		//System.out.println(ckList.toString()); //[ch_type1, ch_type2, ch_type3, ch_type5]
		System.out.println("============================================================");
		//dlvo.myDriverRegister(dlvo);
		return "redirect:/myDriverMain2";
	}
	
	//수정폼
	@RequestMapping(value = "/myDriverMain2", method = { RequestMethod.GET, RequestMethod.POST })
	public String myDriverMain2(Model model, @RequestParam("no") int no) {
		System.out.println("MypageRController>myDriverMain2()");
		/*
		DriverLicenseVo authUser = (DriverLicenseVo)hs.getAttribute("authUser");
		int no = authUser.getNo();*/
		DriverLicenseVo dlvo = dls.getUser();
		model.addAttribute("dlvo",DriverLicenseVo);
		return "redirect:/myDriverMain2";
	}
	
	//수정
	@RequestMapping(value = "/modify", method = { RequestMethod.GET, RequestMethod.POST})
	public String modify(@ModelAttribute DriverLicenseVo dlvo) {
		System.out.println("MypageRController>modify()");
		
		dls.modify(dlvo);
		
		return "redirect:/myDriverMain2";
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
