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

import com.spotmate.function.LatlngHttpRequest;
import com.spotmate.function.NaviHttpRequest;
import com.spotmate.service.DriverWriteService;
import com.spotmate.vo.DriverWriteVo;
import com.spotmate.vo.LatlngVo;
import com.spotmate.vo.SearchVo;
import com.spotmate.vo.WaylatlngVo;

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
	@ResponseBody
	@RequestMapping(value = "/setWayPath", method = { RequestMethod.GET, RequestMethod.POST })
	public List<Double> setWayPath(Model model, @RequestBody WaylatlngVo waylatlng) throws IOException {
		List<Double> start = new ArrayList<Double>();
		start.add(waylatlng.getSlng());
		start.add(waylatlng.getSlat());
		List<Double> end = new ArrayList<Double>();
		end.add(waylatlng.getElng());
		end.add(waylatlng.getElat());
		List<Double> way2 = new ArrayList<Double>();
		way2.add(waylatlng.getW2lng());
		way2.add(waylatlng.getW2lat());
		List<Double> way3 = new ArrayList<Double>();
		way3.add(waylatlng.getW3lng());
		way3.add(waylatlng.getW3lat());
		List<Double> way4 = new ArrayList<Double>();
		way4.add(waylatlng.getW4lng());
		way4.add(waylatlng.getW4lat());
		List<Double> way5 = new ArrayList<Double>();
		way5.add(waylatlng.getW5lng());
		way5.add(waylatlng.getW5lat());
		List<Double> way6 = new ArrayList<Double>();
		way6.add(waylatlng.getW6lng());
		way6.add(waylatlng.getW6lat());
		LatlngHttpRequest lhr = new LatlngHttpRequest(start, way2);
		LatlngHttpRequest lhr2 = new LatlngHttpRequest(way2, way3);
		LatlngHttpRequest lhr3 = new LatlngHttpRequest(way3, way4);
		LatlngHttpRequest lhr4 = new LatlngHttpRequest(way4, way5);
		LatlngHttpRequest lhr5 = new LatlngHttpRequest(way5, way6);
		LatlngHttpRequest lhr6 = new LatlngHttpRequest(way6, end);
		List<Double> route = lhr.getVer();
		List<Double> route2 = lhr2.getVer();
		List<Double> route3 = lhr3.getVer();
		List<Double> route4 = lhr4.getVer();
		List<Double> route5 = lhr5.getVer();
		List<Double> route6 = lhr6.getVer();
		List<Double> mergedRoute = new ArrayList<Double>();
		mergedRoute.addAll(route);
		mergedRoute.addAll(route2);
		mergedRoute.addAll(route3);
		mergedRoute.addAll(route4);
		mergedRoute.addAll(route5);
		mergedRoute.addAll(route6);
		System.out.println(mergedRoute.size());
		return mergedRoute;
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
