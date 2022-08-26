package com.spotmate.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spotmate.function.NaviHttpRequest;

@Controller
public class Main {
	
	@RequestMapping(value="/main9", method={RequestMethod.GET, RequestMethod.POST})
	public String tmap(Model model) throws IOException {
		List<Double> start = new ArrayList<Double>();
		start.add(126.99261400935191);
		start.add(37.483866119763476);
		List<Double> end0 = new ArrayList<Double>();
		end0.add(127.11341936045922);
		end0.add(37.39639094915999);
		List<Double> end1 = new ArrayList<Double>();
		end1.add(128.4820176813268);
		end1.add(35.569365918603765);
//		MateRequest mr = new MateRequest(start, end0, end1);
//		Map<String, Object> totalInfo = mr.getVer();
//		totalInfo.put("start", start);
//		totalInfo.put("end0", end0);
//		totalInfo.put("end1", end1);
////		System.out.println(totalInfo);
//		model.addAttribute("totalInfo", totalInfo);
		return "/main9";
	}
	@RequestMapping(value="/main4", method={RequestMethod.GET, RequestMethod.POST})
	public String tmap1(Model model) throws IOException {
		List<Double> start = new ArrayList<Double>();
		start.add(126.99261400935191);
		start.add(37.483866119763476);
//		List<Double> end0 = new ArrayList<Double>();
//		end0.add(127.11341936045922);
//		end0.add(37.39639094915999);
		List<Double> end = new ArrayList<Double>();
		end.add(128.4820176813268);
		end.add(35.569365918603765);
		NaviHttpRequest nhr = new NaviHttpRequest(start, end);
//		MateRequest mr = new MateRequest(start, end0, end1);
		Map<String, Object> totalInfo = nhr.getVer();
		totalInfo.put("start", start);
		totalInfo.put("end", end);
//		System.out.println(totalInfo);
		model.addAttribute("totalInfo", totalInfo);
		return "/main4";
	}
	
	@RequestMapping(value="/main6", method={RequestMethod.GET, RequestMethod.POST})
	public String main6() throws IOException {
		return "/main6";
	}
	@RequestMapping(value="/main2", method={RequestMethod.GET, RequestMethod.POST})
	public String main2() throws IOException {
		return "/test/main2";
	}
	@ResponseBody
	@RequestMapping(value="/main212", method={RequestMethod.GET, RequestMethod.POST})
	public int main212(@RequestBody String str) {
		System.out.println(str);
		return 1;
	}
	@RequestMapping(value="/spot", method={RequestMethod.GET, RequestMethod.POST})
	public String test() throws IOException {
		return "/spotcarpool/spotMain";
	}
	
	@RequestMapping(value="/main10", method={RequestMethod.GET, RequestMethod.POST})
	public String main10() {
		System.out.println("hi");
		return "/test/main10";
	}
	
	@RequestMapping(value="/test2", method={RequestMethod.GET, RequestMethod.POST})
	public String test2() {
		System.out.println("hi");
		return "/test/test2";
	}
	

}