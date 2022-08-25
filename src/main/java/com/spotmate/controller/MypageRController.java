package com.spotmate.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spotmate.function.CarOwner;
import com.spotmate.function.DriverLicenseAuth;
import com.spotmate.service.DriverLicenseService;
import com.spotmate.vo.CarAuthInfoVo;
import com.spotmate.vo.DriverAuthVo;
import com.spotmate.vo.DriverLicenseVo;
import com.spotmate.vo.UserVo;


@Controller
public class MypageRController {

	
	
	@Autowired
	private DriverLicenseService dls;
	private UserVo uVo;

	@RequestMapping(value = "/myDriverForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String myDriverForm(Model model, HttpSession ss) {
		
		UserVo authUser = (UserVo)ss.getAttribute("authUser");

		int userNo = authUser.getNo();
		if(dls.getCarInfo(userNo) == null) {
			return "/mypage/myDriverForm";
		}
		System.out.println(authUser);
		
		DriverLicenseVo dlvo = dls.getCarInfo(userNo);
		
		model.addAttribute("dlvo", dlvo);
		return "/mypage/myDriverMain2";
	}

	@RequestMapping(value = "/myDriverMain", method = { RequestMethod.GET, RequestMethod.POST })
	public String myDriverMain() {
		return "/mypage/myDriverMain";
	}
	
	@ResponseBody
	@RequestMapping(value="/driverAuth", method = {RequestMethod.GET, RequestMethod.POST})
	public int driverAuth(@RequestBody DriverAuthVo daVo) {
		
		DriverLicenseAuth dla = new DriverLicenseAuth();
		
		
		return dla.LicenseAuth(daVo.getName(), daVo.getBtd(), daVo.getSerial());
	}
	
	@ResponseBody
	@RequestMapping(value="/carAuth", method = {RequestMethod.GET, RequestMethod.POST})
	public int carAuth(@RequestBody CarAuthInfoVo carInfo) throws IOException {
		
		CarOwner co = new CarOwner();
		
		return co.CarAuth(carInfo);
	}
	
	//등록
	@RequestMapping(value = "/myDriverWriteInsert", method = { RequestMethod.GET, RequestMethod.POST })
	public String myDriverInsert(@ModelAttribute DriverLicenseVo dlvo, HttpSession ss) { //ModelAttribute ..? Http Session/ Session..? 
		System.out.println("=====================, =======================================");
		System.out.println(dlvo.toString()); //ch_type=[ch_type1, ch_type2, ch_type3, ch_type5]
		//System.out.println(ckList.toString()); //[ch_type1, ch_type2, ch_type3, ch_type5]
		System.out.println("============================================================");
		
		
		//세션에서 로그인 사용자 정보 가져오기
		UserVo authUser = (UserVo)ss.getAttribute("authUser");   
		int userNo = authUser.getNo();
		System.out.println(userNo);
		//로그인한 사용자의 userNo을 vo에 넣어준다
		dlvo.setUserNo(userNo);

	
		//user업데이트+카정보등록+옵션등록
		dls.myDriverRegister(dlvo);
		System.out.println("==========");
		return "/mypage/myDriverMain2";
	}
	
	
	
	
	
	//수정폼
	@RequestMapping(value = "/myDriverMain2", method = { RequestMethod.GET, RequestMethod.POST })
	public String myDriverMain2(Model model, HttpSession ss) {   //왜 model을 쓰는가...? 
		//System.out.println("MypageRController>myDriverMain2()");
		
		
		//세션에서 로그인 사용자 정보 가져오기
		UserVo authUser = (UserVo)ss.getAttribute("authUser");
		 
		int userNo = authUser.getNo();
		
		DriverLicenseVo dlvo = dls.getCarInfo(userNo);
		
		model.addAttribute("dlvo", dlvo);
		
		return "/mypage/myDriverMain2";
	}
	
    ///수정
	@RequestMapping(value = "/modify", method = { RequestMethod.GET, RequestMethod.POST})
	public String modify(@ModelAttribute DriverLicenseVo dlvo, HttpSession ss) {
		System.out.println("MypageRController>modify()");

		System.out.println(dlvo.toString());
		
		UserVo authUser = (UserVo)ss.getAttribute("authUser");
		
		int userNo = authUser.getNo();
		
		
		dlvo.setUserNo(userNo);
	    
		dls.carInfoModify(dlvo);
		
		return "redirect:/myDriverMain2";
	}

	
	
	@RequestMapping(value = "/myQnaMain", method = { RequestMethod.GET, RequestMethod.POST })
	public String myQnaInsert() {
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
