package com.spotmate.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.codec.binary.Base64;
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

import com.spotmate.function.CarOwner;
import com.spotmate.function.DriverLicenseAuth;
import com.spotmate.service.DriverLicenseService;
import com.spotmate.service.MyQnaService;
import com.spotmate.service.MypageRService;
import com.spotmate.vo.CarAuthInfoVo;
import com.spotmate.vo.DriverAuthVo;
import com.spotmate.vo.DriverLicenseVo;
import com.spotmate.vo.UsageSearchVo;
import com.spotmate.vo.UserVo;
import com.spotmate.vo.myQnaVo;


@Controller
public class MypageRController {

	
	
	@Autowired
	private DriverLicenseService dls;
	private UserVo uVo;

	@Autowired
	private MypageRService mService;
	@Autowired
	private HttpSession ss;
	@Autowired
	private MyQnaService mqs;
	
	

	@RequestMapping(value = "/myDriverForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String myDriverForm(Model model, HttpSession ss) {
		
		UserVo authUser = (UserVo)ss.getAttribute("authUser");

		int userNo = authUser.getNo();
		System.out.println(userNo);
		DriverLicenseVo carInfo = dls.getCarInfo(userNo);
		carInfo.setUsername(authUser.getName());
		if(carInfo.getC_Model() == null) {
			model.addAttribute("dlvo", carInfo);
			return "/mypage/myDriverForm";
		}
		
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
			
			System.out.println("MypageRController>myDriverWriteInsert()");

			System.out.println(dlvo.toString());
			
			return "";
			
		}

		//qna등록
		@RequestMapping(value = "/myQnaInsert", method = { RequestMethod.GET, RequestMethod.POST })
		public String myQnaInsert(@ModelAttribute myQnaVo mqv, HttpSession ss) { 
			System.out.println(mqv);
			
		      UserVo authUser = (UserVo)ss.getAttribute("authUser");
		      int userNo = authUser.getNo();
		      mqv.setUserNo(userNo);//세팅을 해놓는다 
		      mqs.InsertQna(mqv); //메소드가 없어 서비스로 만들어주러가야함 
		      
			return "/mypage/myQnaMain";
		}
		@RequestMapping(value = "/myQnaMain", method = { RequestMethod.GET, RequestMethod.POST })
		public String myQnaMain() {
			return "/mypage/myQnaMain";
		}
		@RequestMapping(value = "/myQnaWriteForm", method = { RequestMethod.GET, RequestMethod.POST })
		public String myQnaWriteForm() {
			return "/mypage/myQnaWriteForm";
		}
	

}