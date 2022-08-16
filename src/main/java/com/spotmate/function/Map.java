package com.spotmate.function;

import java.time.LocalTime;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spotmate.vo.MapVo;


@Controller
public class Map {
	
	 
	
	@RequestMapping(value="/map", method={RequestMethod.GET, RequestMethod.POST})
	public String main() {
//		DriverLicenseAuth dla = new DriverLicenseAuth();
//		
//		String a = dla.LicenseAuth("이준규", "970107", "11-22-013848-10", "DN7PHK");
//		System.out.println(a);
		return "/main";
	}
	
	
	@ResponseBody
	@RequestMapping(value="/12", method={RequestMethod.GET, RequestMethod.POST})
	public int main12(@RequestBody String uid) {
		System.out.println(uid);
		return 2;
	}
	
}
