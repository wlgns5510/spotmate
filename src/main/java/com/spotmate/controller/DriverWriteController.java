package com.spotmate.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
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
import org.springframework.web.bind.annotation.ResponseBody;

import com.spotmate.service.DriverWriteService;
import com.spotmate.vo.DaylatlngVo;
import com.spotmate.vo.DriverWriteVo;
import com.spotmate.vo.LatlngVo;
import com.spotmate.vo.MateWriteVo;
import com.spotmate.vo.SearchVo;
import com.spotmate.vo.StartEndTimeVo;
import com.spotmate.vo.UserVo;


@Controller
public class DriverWriteController {

	@Autowired
	private DriverWriteService dwService;
	@Autowired
	private HttpSession ss;
	
	
	@RequestMapping(value = "/driver", method = { RequestMethod.GET, RequestMethod.POST })
	public String driveMain() {
		return "/driver/driverMain";
	}

	@RequestMapping(value = "/carpoolWrite", method = { RequestMethod.GET, RequestMethod.POST })
	public String carpool(Model model) {
		UserVo authUser = (UserVo)ss.getAttribute("authUser");
		Map<String, Object> cMap = new HashMap<>();
		if ( authUser == null) {
			return "redirect:/loginForm";
		} else if (dwService.chkLicense(authUser.getNo()) == null) {
			return "redirect:/myDriverForm";
		} else if ( dwService.chkAnotherCarpool(authUser.getNo()) != null ) {
			List<StartEndTimeVo> startEnddate = dwService.chkAnotherCarpool(authUser.getNo());
			cMap.put("startEnddate", startEnddate);
		}
		cMap.put("driverInfo", dwService.getDriverInfo(authUser.getNo()));
		model.addAttribute("totalInfo", cMap);
		return "/driver/carpoolWrite";
	}

	@ResponseBody
	@RequestMapping(value = "/search", method = { RequestMethod.GET, RequestMethod.POST })
	public SearchVo search(@RequestBody SearchVo search) {
		return search;
	}
	
	@ResponseBody
	@RequestMapping(value = "/setPath", method = { RequestMethod.GET, RequestMethod.POST })
	public Map<String, Object> setPath(Model model, @RequestBody LatlngVo latlng) throws IOException {
		return dwService.setPath(latlng);
	}

	@RequestMapping(value = "/carpoolWriteOk", method = { RequestMethod.GET, RequestMethod.POST })
	public String carpoolOk(Model model, @ModelAttribute DriverWriteVo dwVo) {
		dwVo.setIntfare(Integer.parseInt(dwVo.getFare().replaceAll("[,P]", "")));
		model.addAttribute("dwVo", dwVo);
		return "/driver/carpoolWriteOk";
	}
	

	@RequestMapping(value = "/carpoolWriteInsert", method = { RequestMethod.GET, RequestMethod.POST })
	public String carpoolInsert(@ModelAttribute DriverWriteVo dwVo) {
		UserVo authUser = (UserVo)ss.getAttribute("authUser");
		dwService.carpoolRegister(dwVo, authUser.getNo(), authUser.getCarNo());
		return "redirect:/myReservationDriverMain/1";
	}

	@RequestMapping(value = "/hitchWrite", method = { RequestMethod.GET, RequestMethod.POST })
	public String hitch(Model model) {
		UserVo authUser = (UserVo)ss.getAttribute("authUser");
		if ( authUser == null) {
			return "redirect:/loginForm";
		} else if (dwService.chkLicense(authUser.getNo()) == null) {
			return "redirect:/myDriverForm";
		} else if ( dwService.chkAnotherHitchhike(authUser.getNo()) != null) {
			return "redirect:/driver?result=fail";
		}
		model.addAttribute("driverInfo", dwService.getDriverInfo(authUser.getNo()));
		return "/driver/hitchWrite";
	}

	@RequestMapping(value = "/hitchWriteOk", method = { RequestMethod.GET, RequestMethod.POST })
	public String hitchOk(Model model, @ModelAttribute DriverWriteVo dwVo) {
		model.addAttribute("dwVo", dwService.setIntfare(dwVo));
		return "/driver/hitchWriteOk";
	}

	@RequestMapping(value = "/hitchWriteInsert", method = { RequestMethod.GET, RequestMethod.POST })
	public String hitchInsert(@ModelAttribute DriverWriteVo dwVo) {
		UserVo authUser = (UserVo)ss.getAttribute("authUser");
		int userNo = authUser.getNo();
		dwService.hitchRegister(dwVo, userNo, authUser.getCarNo());
		return "redirect:/spotHitchDriver";
	}

	@RequestMapping(value = "/mateWrite", method = { RequestMethod.GET, RequestMethod.POST })
	public String mate(Model model) {
		UserVo authUser = (UserVo)ss.getAttribute("authUser");
		if ( authUser == null) {
			return "redirect:/loginForm";
		} else if (dwService.chkLicense(authUser.getNo()) == null) {
			return "redirect:/myDriverForm";
		}
		model.addAttribute("driverInfo", dwService.getDriverInfo(authUser.getNo()));
		return "/driver/mateWrite";
	}

	@RequestMapping(value = "/mateWriteOk", method = { RequestMethod.GET, RequestMethod.POST })
	public String mateOk(Model model, @ModelAttribute MateWriteVo mwVo) {
		model.addAttribute("mwVo", dwService.sumFare(mwVo));
		return "/driver/mateWriteOk";
	}
	
	@RequestMapping(value = "/mateWriteInsert", method = { RequestMethod.GET, RequestMethod.POST })
	public String mateInsert(@ModelAttribute MateWriteVo mwVo) {
		UserVo authUser = (UserVo)ss.getAttribute("authUser");
		dwService.mateRegister(mwVo, authUser.getNo(), authUser.getCarNo());
		return "redirect:/myReservationDriverMain/1";
	}
	
	@RequestMapping(value = "/ssp/{no}", method = { RequestMethod.GET, RequestMethod.POST })
	public String ssp(@PathVariable("no") int no, Model model) throws IOException {
		model.addAttribute("no", no);
		return "/driver/ssp";
	}
	@RequestMapping(value = "/swp/{no}", method = { RequestMethod.GET, RequestMethod.POST })
	public String swp(@PathVariable("no") int no, Model model) throws IOException {
		model.addAttribute("no", no);
		return "/driver/swp";
	}
	@RequestMapping(value = "/sep/{no}", method = { RequestMethod.GET, RequestMethod.POST })
	public String sep(@PathVariable("no") int no, Model model) throws IOException {
		model.addAttribute("no", no);
		return "/driver/sep";
	}
	@ResponseBody
	@RequestMapping(value = "/setDayPath", method = { RequestMethod.GET, RequestMethod.POST })
	public Map<String, Object> setDayPath(Model model, @RequestBody DaylatlngVo daylatlng) throws IOException {
		return dwService.setDayPath(daylatlng);
	}
}

