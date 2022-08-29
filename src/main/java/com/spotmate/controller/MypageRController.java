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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spotmate.service.DriverLicenseService;
import com.spotmate.service.MypageRService;
import com.spotmate.vo.UsageSearchVo;
import com.spotmate.vo.UserVo;


@Controller
public class MypageRController {

	
	
	@Autowired
	private DriverLicenseService dls;
	@Autowired
	private MypageRService mService;
//	private UserVo uVo;
	@Autowired
	private HttpSession ss;
	
	/*@RequestMapping(value = "/myDriverForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String myDriverForm(Model model, HttpSession ss) {
		
		UserVo authUser = (UserVo)ss.getAttribute("authUser");

		int userNo = authUser.getNo();
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
		
		/*System.out.println("=====================, =======================================");
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
		return "/mypage/myDriverMain2";*/
		/*System.out.println("MypageRController>modify()");

		System.out.println(dlvo.toString());
		
		UserVo authUser = (UserVo)ss.getAttribute("authUser");
		
		int userNo = authUser.getNo();
		
		
		dlvo.setUserNo(userNo);
	    
		dls.carInfoModify(dlvo);
		
		return "redirect:/myDriverMain2";
	}*/
	
	//사진첨부 
	@RequestMapping(value = "/fileupload/form", method = { RequestMethod.GET, RequestMethod.POST })
	public String form() {   
		//System.out.println("FileController>form()");
		
		return "fileupload/form";
	}
	
	@RequestMapping(value = "/fileupload/upload", method = { RequestMethod.GET, RequestMethod.POST })
	public String upload(@RequestParam(value="c_file") String c_file) {
		System.out.println("FileController>upload()");
		System.out.println("c_file");
		
		return"";
	}
		
	
	
	
	/*//수정폼
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
	
	//등록
	@RequestMapping(value = "/myQnaInsert", method = { RequestMethod.GET, RequestMethod.POST })
	public String myQnaInsert(@ModelAttribute DriverLicenseVo dlvo, HttpSession ss) { //ModelAttribute ..? Http Session/ Session..? 
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
		return "/mypage/myQnaMain";
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
*/
	@RequestMapping(value = "/myUsageUserMain/{no}", method = { RequestMethod.GET, RequestMethod.POST })
	public String myUsageUserMain(@PathVariable int no, Model model, @ModelAttribute UsageSearchVo usVo) {
		UserVo authUser = (UserVo)ss.getAttribute("authUser");
		if( authUser == null ) {
			return "redirect:/loginForm";
		}
		model.addAttribute("uMap", mService.getUserUsageList(authUser.getNo(), no, usVo));
		return "/mypage/myUsageUserMain";
	}
	
	@RequestMapping(value = "/myUsageDriverMain/{no}", method = { RequestMethod.GET, RequestMethod.POST })
	public String myUsageDriverMain(@PathVariable int no, Model model, @ModelAttribute UsageSearchVo usVo) {
		UserVo authUser = (UserVo)ss.getAttribute("authUser");
		if( authUser == null ) {
			return "redirect:/loginForm";
		}
		model.addAttribute("uMap", mService.getDriverUsageList(authUser.getNo(), no, usVo));
		return "/mypage/myUsageDriverMain";
	}
	
	@RequestMapping(value = "/myReservationUserMain/{no}", method = { RequestMethod.GET, RequestMethod.POST })
	public String myResvUserMain(@PathVariable int no, Model model, @ModelAttribute UsageSearchVo usVo) {
		UserVo authUser = (UserVo)ss.getAttribute("authUser");
		if( authUser == null ) {
			return "redirect:/loginForm";
		}
		model.addAttribute("uMap", mService.getUserResvList(authUser.getNo(), no, usVo));
		return "/mypage/myReservationUserMain";
	}
	
	@RequestMapping(value = "/myReservationDriverMain/{no}", method = { RequestMethod.GET, RequestMethod.POST })
	public String myResvDriverMain(@PathVariable int no, Model model, @ModelAttribute UsageSearchVo usVo) {
		UserVo authUser = (UserVo)ss.getAttribute("authUser");
		if( authUser == null ) {
			return "redirect:/loginForm";
		}
		model.addAttribute("uMap", mService.getDriverResvList(authUser.getNo(), no, usVo));
		return "/mypage/myReservationDriverMain";
	}
	
	@RequestMapping(value = "/review", method = { RequestMethod.GET, RequestMethod.POST })
	public String review(Model model) {
		return "/mypage/myReview";
	}
	

}
