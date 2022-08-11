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
