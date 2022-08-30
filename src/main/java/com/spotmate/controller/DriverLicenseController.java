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
import com.spotmate.service.MypageJService;
import com.spotmate.service.MypageRService;
import com.spotmate.vo.CarAuthInfoVo;
import com.spotmate.vo.DriverAuthVo;
import com.spotmate.vo.DriverLicenseVo;
import com.spotmate.vo.UserVo;

@Controller
public class DriverLicenseController {

	@Autowired
	private DriverLicenseService dls;
	
	@Autowired
	private MypageRService mService;
	
	@Autowired
	private MypageJService mypagejService;
	
	// 드라이버 신청/정보 메인페이지
	@RequestMapping(value = "/myDriverForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String myDriverForm(Model model, HttpSession ss) {


		// 세션값을 통해 로그인했는지 확인
		UserVo authUser = (UserVo) ss.getAttribute("authUser");

		if (authUser == null) { // 로그인 안했으면 로그인 폼으로 리다이렉트

			return "redirect:/loginForm";

		} else { // 로그인 했으면 등록폼또는 수정폼 으로 포워드

			// 회원번호를 통해서 가입정보 가져오기
			int userNo = authUser.getNo();
			DriverLicenseVo carInfo = dls.getCarInfo(userNo);

			if (carInfo.getC_Model() == null) { // 가입정보에서 자동차 모델값이 없으면(차량 등록을 안했으면) 등록폼 메인으로 포워드
				return "/mypage/myDriverMain";

			} else { // 가입정보에서 자동차 모델값이 있으면(차량 등록을 했으면) 수정폼으로 포워드
				model.addAttribute("dlvo", carInfo);
				return "/mypage/myDriverMain2";
			}
		}

	}

	// 드라이버 등록하기 버튼을 눌렀을때 (최초등록 폼)
	@RequestMapping(value = "/myDriverWriteForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String myDriverWriteForm(Model model, HttpSession ss) {

		// 세션값을 통해 로그인했는지 확인
		UserVo authUser = (UserVo) ss.getAttribute("authUser");

		if (authUser == null) { // 로그인 안했으면 로그인 폼으로 리다이렉트
			return "redirect:/loginForm";

		} else { // 로그인 했으면 등록작업 시작

			// 회원번호를 통해서 가입정보 가져오기
			int userNo = authUser.getNo();
			System.out.println(userNo);
			DriverLicenseVo carInfo = dls.getCarInfo(userNo);

			model.addAttribute("dlvo", carInfo);
			return "/mypage/myDriverForm";
		}

	}

	// 드라이버 정보 등록(최초등록)
	@RequestMapping(value = "/myDriverWriteInsert", method = { RequestMethod.GET, RequestMethod.POST })
	public String myDriverInsert(@ModelAttribute DriverLicenseVo dlvo, HttpSession ss) { // ModelAttribute ..? Http
																							// Session/ Session..?
		System.out.println("MypageRController>myDriverWriteInsert()");
		System.out.println(dlvo);

		// 세션값을 통해 로그인했는지 확인
		UserVo authUser = (UserVo) ss.getAttribute("authUser");

		if (authUser == null) { // 로그인 안했으면 로그인 폼으로 리다이렉트
			return "redirect:/loginForm";

		} else { // 로그인 했으면 드라이버 정보 서비스로 전달

			int userNo = authUser.getNo(); // 로그인한 사용자의 no를 추가해 준다.
			dlvo.setUserNo(userNo);

			// 서비스에 입력받은 드라이버 정보 전달
			dls.carInfoInsert(dlvo);

		}

		return "redirect:/myDriverForm";
	}

	// 드라이버 정보 수정
	@RequestMapping(value = "/modify", method = { RequestMethod.GET, RequestMethod.POST })
	public String modify(@ModelAttribute DriverLicenseVo dlvo, HttpSession ss) {
		System.out.println("MypageRController>modify()");

		// 세션값을 통해 로그인했는지 확인
		UserVo authUser = (UserVo) ss.getAttribute("authUser");

		if (authUser == null) { // 로그인 안했으면 로그인 폼으로 리다이렉트
			return "redirect:/loginForm";

		} else { // 로그인 했으면 드라이버 정보 서비스로 전달(수정)

			int userNo = authUser.getNo(); // 로그인한 사용자의 no를 추가해 준다.
			dlvo.setUserNo(userNo);

			// 서비스에 입력받은 드라이버 정보 전달
			dls.carInfoModify(dlvo);

		}

		return "redirect:/myDriverForm";
	}

	
	//면허증 검사
	@ResponseBody
	@RequestMapping(value="/driverAuth", method = {RequestMethod.GET, RequestMethod.POST})
	public int driverAuth(@RequestBody DriverAuthVo daVo) {
		
		DriverLicenseAuth dla = new DriverLicenseAuth();
		
		
		return dla.LicenseAuth(daVo.getName(), daVo.getBtd(), daVo.getSerial());
	}
	
	//차량등록 검사
	@ResponseBody
	@RequestMapping(value="/carAuth", method = {RequestMethod.GET, RequestMethod.POST})
	public int carAuth(@RequestBody CarAuthInfoVo carInfo) throws IOException {
		
		CarOwner co = new CarOwner();
		
		return co.CarAuth(carInfo);
	}
}
