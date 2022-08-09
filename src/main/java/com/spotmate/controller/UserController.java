package com.spotmate.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spotmate.service.UserService;
import com.spotmate.vo.UserVo;

@Controller
public class UserController {
	
	@Autowired
	private UserService us;
	
	
	@RequestMapping("/users")
	public String users(Model model) {
//		System.out.println("hi");
		UserVo uVo = us.getInfo();
		System.out.println(uVo);
		model.addAttribute("user", us.getInfo());
		return "/index";
	}

}
