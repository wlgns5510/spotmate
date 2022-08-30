package com.spotmate.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spotmate.service.UserService;
import com.spotmate.vo.UserVo;

@Controller
public class UserController {
   
   @Autowired
   private UserService uService;
   @Autowired
   HttpSession session;
   
   @RequestMapping(value = {"/index", "/"}, method = { RequestMethod.GET, RequestMethod.POST })
   public String index() {
      return "/index";
   }
   
   //localhost/loginForm
   // 로그인
   @RequestMapping(value = "/loginForm", method = { RequestMethod.GET, RequestMethod.POST })
   public String users(HttpServletRequest request) {
      
	   String url = request.getHeader("Referer");
	   
	   if(url !=null && !url.contains("/login") && !url.contains("/join") && !url.contains("Write")) {
		   request.getSession().setAttribute("prevPage", url);
	   }
	   
	   return "/users/loginForm";
   }
   
   @RequestMapping(value = "/loginOk", method = { RequestMethod.GET, RequestMethod.POST })
   //public String loginOk(Model model, @ModelAttribute UserVo userVo) {
   public String loginOk(@ModelAttribute UserVo userVo) {
	   
	   UserVo authUser = uService.loginOk(userVo);
	   String url = (String)session.getAttribute("prevPage");
	   System.out.println(authUser);
	   if(authUser !=null && url !=null) {
		   session.setAttribute("authUser", authUser);
		   return "redirect:"+url;
	   }else if(authUser!=null) {
		   session.setAttribute("authUser", authUser);
		   //return "redirect:/driver";
		   return "redirect:/index";
	   }
	   
	   //model.addAttribute("authUser", uService.loginOk(userVo));
	   //session.setAttribute("authUser", uService.loginOk(userVo));
	   //return "redirect:/driver";
	   return "redirect:/index";
   }
   
   // 로그아웃
   @RequestMapping(value = "/logout", method = { RequestMethod.GET, RequestMethod.POST })
   public String logout() {
	   
	   session.removeAttribute("authUser");
	   session.invalidate();
	   return "redirect:/index";
   }
   
   // 회원가입
   @RequestMapping(value = "/joinForm", method = { RequestMethod.GET, RequestMethod.POST })
   public String join() {
      return "/users/joinForm";
   }
   
   @RequestMapping(value = "/joinOk", method = { RequestMethod.GET, RequestMethod.POST })
   public String joinOk(@ModelAttribute UserVo userVo) {
	  
	  System.out.println(userVo.toString());
	  
	  uService.joinUser(userVo);
	  return "/users/joinOk";
      //return "redirect:/driver";
   }

}