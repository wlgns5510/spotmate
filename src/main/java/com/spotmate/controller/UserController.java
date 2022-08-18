package com.spotmate.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spotmate.service.UserService;

@Controller
public class UserController {
   
   @Autowired
   private UserService uService;
   //localhost/loginForm
   
   @RequestMapping(value = "/loginForm", method = { RequestMethod.GET, RequestMethod.POST })
   public String login(Model model) {
      return "/users/loginForm";
   }
   
   @RequestMapping(value = "/joinForm", method = { RequestMethod.GET, RequestMethod.POST })
   public String join(Model model) {
      return "/users/joinForm";
   }

}

