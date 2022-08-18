package com.spotmate.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spotmate.service.UserService;
import com.spotmate.vo.UserVo;

@Controller
public class UserController {
   
   @Autowired
   private UserService uService;
   
   //localhost/loginForm
   @RequestMapping(value = "/loginForm", method = { RequestMethod.GET, RequestMethod.POST })
   public String users(Model model) {
      return "/users/loginForm";
   }
   
   @RequestMapping(value = "/joinForm", method = { RequestMethod.GET, RequestMethod.POST })
   public String join(Model model) {
      return "/users/joinForm";
   }
   
   @RequestMapping(value = "/joinOk", method = { RequestMethod.GET, RequestMethod.POST })
   public String joinOk(Model model, @ModelAttribute UserVo userVo) {
	  
	  System.out.println(userVo.toString());
	  
	  uService.joinUser(userVo);
      return "/users/joinOk";
   }

}
