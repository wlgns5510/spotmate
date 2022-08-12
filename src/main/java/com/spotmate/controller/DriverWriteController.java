package com.spotmate.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spotmate.function.LatlngHttpRequest;
import com.spotmate.function.NaviHttpRequest;
import com.spotmate.service.DriverWriteService;
import com.spotmate.vo.DaylatlngVo;
import com.spotmate.vo.DriverWriteVo;
import com.spotmate.vo.LatlngVo;
import com.spotmate.vo.SearchVo;
<<<<<<< HEAD
import com.spotmate.vo.Waylatlng2Vo;
import com.spotmate.vo.WaylatlngVo;
=======
>>>>>>> branch 'master' of https://github.com/ljk0071/spotmate2.git

@Controller
public class DriverWriteController {

	@Autowired
	private DriverWriteService dws;

	@RequestMapping(value = "/", method = { RequestMethod.GET, RequestMethod.POST })
	public String main() {
		return "/driver/driverMain";
	}
	
<<<<<<< HEAD
	@RequestMapping(value = "/test", method = { RequestMethod.GET, RequestMethod.POST })
	public String test() {
		return "/test/test";
	}

=======
>>>>>>> branch 'master' of https://github.com/ljk0071/spotmate2.git
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
<<<<<<< HEAD
	@ResponseBody
	@RequestMapping(value = "/setWayPath2", method = { RequestMethod.GET, RequestMethod.POST })
	public List<Double> setWayPath2(Model model, @RequestBody Waylatlng2Vo waylatlng2) throws IOException {
		List<Double> start = new ArrayList<Double>();
		start.add(waylatlng2.getSlng2());
		start.add(waylatlng2.getSlat2());
		List<Double> end = new ArrayList<Double>();
		end.add(waylatlng2.getElng2());
		end.add(waylatlng2.getElat2());
		List<Double> way2 = new ArrayList<Double>();
		way2.add(waylatlng2.getW12lng());
		way2.add(waylatlng2.getW12lat());
		List<Double> way3 = new ArrayList<Double>();
		way3.add(waylatlng2.getW13lng());
		way3.add(waylatlng2.getW13lat());
		List<Double> way4 = new ArrayList<Double>();
		way4.add(waylatlng2.getW14lng());
		way4.add(waylatlng2.getW14lat());
		List<Double> way5 = new ArrayList<Double>();
		way5.add(waylatlng2.getW15lng());
		way5.add(waylatlng2.getW15lat());
		List<Double> way6 = new ArrayList<Double>();
		way6.add(waylatlng2.getW16lng());
		way6.add(waylatlng2.getW16lat());
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
=======
	@RequestMapping(value = "/sep/{no}", method = { RequestMethod.GET, RequestMethod.POST })
	public String sep(@PathVariable("no") int no, Model model) throws IOException {
		model.addAttribute("no", no);
>>>>>>> branch 'master' of https://github.com/ljk0071/spotmate2.git
		return "/driver/sep";
	}
	@ResponseBody
	@RequestMapping(value = "/setDayPath", method = { RequestMethod.GET, RequestMethod.POST })
	public List<Double> setDayPath(Model model, @RequestBody DaylatlngVo daylatlng) throws IOException {
		Map<Integer, List<Double>> dll = new HashMap<>();
		List<Double> start = new ArrayList<Double>();
		start.add(daylatlng.getSlng());
		start.add(daylatlng.getSlat());
		dll.put(0, start);
		List<Double> way1 = new ArrayList<Double>();
		if ( daylatlng.getWlng1() != 0.0 ) {
			way1.add(daylatlng.getWlng1());
			way1.add(daylatlng.getWlat1());
			dll.put(1, way1);
		}
		List<Double> way2 = new ArrayList<Double>();
		if ( daylatlng.getWlng2() != 0.0 ) {
			way2.add(daylatlng.getWlng2());
			way2.add(daylatlng.getWlat2());
			dll.put(2, way2);
		}
		List<Double> way3 = new ArrayList<Double>();
		if ( daylatlng.getWlng3() != 0.0 ) {
			way3.add(daylatlng.getWlng3());
			way3.add(daylatlng.getWlat3());
			dll.put(3, way3);
		}
		List<Double> way4 = new ArrayList<Double>();
		if ( daylatlng.getWlng4() != 0.0 ) {
			way4.add(daylatlng.getWlng4());
			way4.add(daylatlng.getWlat4());
			dll.put(4, way4);
		}
		List<Double> way5 = new ArrayList<Double>();
		if ( daylatlng.getWlng5() != 0.0 ) {
			way5.add(daylatlng.getWlng5());
			way5.add(daylatlng.getWlat5());
			dll.put(5, way5);
		}
		List<Double> end = new ArrayList<Double>();
		end.add(daylatlng.getElng());
		end.add(daylatlng.getElat());
		dll.put(6, end);
		List<Double> mergedRoute = new ArrayList<Double>();
		List<Integer> lst = new ArrayList<Integer>();
		for (int i=0;i<7;i++) {
			if ( dll.get(i) != null ) {
				lst.add(i);
			}
		}
		for (int i=0;i<lst.size();i++) {
			if ( i == lst.size()-1) {
				break;
			}
			try {
				LatlngHttpRequest lhr = new LatlngHttpRequest(dll.get(lst.get(i)), dll.get(lst.get(i+1)));
				List<Double> route = lhr.getVer();
				mergedRoute.addAll(route);
			} catch (NullPointerException e) {
				System.out.println("길찾기 실패");
			}
		}
		return mergedRoute;
	} 

}
