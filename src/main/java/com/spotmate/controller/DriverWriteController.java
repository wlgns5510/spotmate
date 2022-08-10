package com.spotmate.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spotmate.function.NaviHttpRequest;
import com.spotmate.service.DriverWriteService;
import com.spotmate.vo.DriverWriteVo;
import com.spotmate.vo.LatlngVo;
import com.spotmate.vo.SearchVo;

@Controller
public class DriverWriteController {

	@Autowired
	private DriverWriteService dws;

	@RequestMapping(value = "/", method = { RequestMethod.GET, RequestMethod.POST })
	public String Main() {
		return "/driver/driverMain";
	}

	@RequestMapping(value = "/driver", method = { RequestMethod.GET, RequestMethod.POST })
	public String driveMain() {
		return "/driver/driverMain";
	}

	@RequestMapping(value = "/carpoolWrite", method = { RequestMethod.GET, RequestMethod.POST })
	public String carpool() {
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
		List<Double> start = new ArrayList<Double>();
		start.add(latlng.getSlng());
		start.add(latlng.getSlat());
		List<Double> end = new ArrayList<Double>();
		end.add(latlng.getElng());
		end.add(latlng.getElat());
		NaviHttpRequest nhr = new NaviHttpRequest(start, end);
		Map<String, Object> totalInfo = nhr.getVer();
		totalInfo.put("start", start);
		totalInfo.put("end", end);
		totalInfo.put("splace", latlng.getSplace());
		totalInfo.put("eplace", latlng.getEplace());
		return totalInfo;
	}

	@RequestMapping(value = "/carpoolWriteOk", method = { RequestMethod.GET, RequestMethod.POST })
	public String carpoolOk(Model model, @ModelAttribute DriverWriteVo dwv) {
		model.addAttribute("dwv", dwv);
		return "/driver/carpoolWriteOk";
	}

	@RequestMapping(value = "/carpoolWriteInsert", method = { RequestMethod.GET, RequestMethod.POST })
	public String carpoolInsert(@ModelAttribute DriverWriteVo dwv) {
		dws.CarpoolRegister(dwv);
		return "redirect:/myReservationDriverMain";
	}

	@RequestMapping(value = "/hitchWrite", method = { RequestMethod.GET, RequestMethod.POST })
	public String hitch() {
		return "/driver/hitchWrite";
	}

	@RequestMapping(value = "/hitchWriteOk", method = { RequestMethod.GET, RequestMethod.POST })
	public String hitchOk(Model model, @ModelAttribute DriverWriteVo dwv) {
		System.out.println(dwv.toString());
		model.addAttribute("dwv", dwv);
		return "/driver/hitchWriteOk";
	}

	@RequestMapping(value = "/hitchWriteInsert", method = { RequestMethod.GET, RequestMethod.POST })
	public String hitchInsert(@ModelAttribute DriverWriteVo dwv) {
		System.out.println(dwv.toString());
		dws.HitchRegister(dwv);
		return "redirect:/myReservationDriverMain";
	}

	@RequestMapping(value = "/mateWrite", method = { RequestMethod.GET, RequestMethod.POST })
	public String mate() {
		return "/driver/mateWrite";
	}

	@RequestMapping(value = "/mateWriteOk", method = { RequestMethod.GET, RequestMethod.POST })
	public String mateOk() {
		return "/driver/mateWriteOk";
	}
	
	@RequestMapping(value = "/ssp", method = { RequestMethod.GET, RequestMethod.POST })
	public String ssp() throws IOException {
		return "/driver/ssp";
	}

	@RequestMapping(value = "/swp2", method = { RequestMethod.GET, RequestMethod.POST })
	public String swp2() throws IOException {
		return "/driver/swp2";
	}

	@RequestMapping(value = "/swp3", method = { RequestMethod.GET, RequestMethod.POST })
	public String swp3() throws IOException {
		return "/driver/swp3";
	}

	@RequestMapping(value = "/swp4", method = { RequestMethod.GET, RequestMethod.POST })
	public String swp4() throws IOException {
		return "/driver/swp4";
	}

	@RequestMapping(value = "/swp5", method = { RequestMethod.GET, RequestMethod.POST })
	public String swp5() throws IOException {
		return "/driver/swp5";
	}

	@RequestMapping(value = "/swp6", method = { RequestMethod.GET, RequestMethod.POST })
	public String swp6() throws IOException {
		return "/driver/swp6";
	}

	@RequestMapping(value = "/sep", method = { RequestMethod.GET, RequestMethod.POST })
	public String sep() throws IOException {
		return "/driver/sep";
	}

	@RequestMapping(value = "/ssp2", method = { RequestMethod.GET, RequestMethod.POST })
	public String ssp2() throws IOException {
		return "/driver/ssp2";
	}

	@RequestMapping(value = "/swp12", method = { RequestMethod.GET, RequestMethod.POST })
	public String swp12() throws IOException {
		return "/driver/swp12";
	}

	@RequestMapping(value = "/swp13", method = { RequestMethod.GET, RequestMethod.POST })
	public String swp13() throws IOException {
		return "/driver/swp13";
	}

	@RequestMapping(value = "/swp14", method = { RequestMethod.GET, RequestMethod.POST })
	public String swp14() throws IOException {
		return "/driver/swp14";
	}

	@RequestMapping(value = "/swp15", method = { RequestMethod.GET, RequestMethod.POST })
	public String swp15() throws IOException {
		return "/driver/swp15";
	}

	@RequestMapping(value = "/swp16", method = { RequestMethod.GET, RequestMethod.POST })
	public String swp16() throws IOException {
		return "/driver/swp16";
	}

	@RequestMapping(value = "/sep2", method = { RequestMethod.GET, RequestMethod.POST })
	public String sep2() throws IOException {
		return "/driver/sep2";
	}

}
