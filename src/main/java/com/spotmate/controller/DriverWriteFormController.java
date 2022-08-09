package com.spotmate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class DriverWriteFormController {
	@RequestMapping(value="/", method={RequestMethod.GET, RequestMethod.POST})
	public String Main() {
		return "/driver/driverMain";
	}
	@RequestMapping(value="/driver", method={RequestMethod.GET, RequestMethod.POST})
	public String driveMain() {
		return "/driver/driverMain";
	}
	@RequestMapping(value="/carpoolWrite", method={RequestMethod.GET, RequestMethod.POST})
	public String carpool() {
		return "/driver/carpoolWrite";
	}
	@RequestMapping(value="/hitchWrite", method={RequestMethod.GET, RequestMethod.POST})
	public String hitch1() {
		return "/driver/hitchWrite";
	}
	@RequestMapping(value="/mateWrite", method={RequestMethod.GET, RequestMethod.POST})
	public String mate() {
		return "/driver/mateWrite";
	}
	@RequestMapping(value="/mateWriteOk", method={RequestMethod.GET, RequestMethod.POST})
	public String mateOk() {
		System.out.println("hi");
		return "/driver/mateWriteOk";
	}
}
