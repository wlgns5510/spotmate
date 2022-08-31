package com.spotmate.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spotmate.service.KakaoAuthService;
import com.spotmate.service.UserService;
import com.spotmate.vo.UserVo;

@Controller
public class UserController {
   
   @Autowired
   private UserService uService;
   @Autowired
	private KakaoAuthService kaService;
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
	   
	   if(url !=null && !url.contains("/login") && !url.contains("/join") && !url.contains("Write") && ( url.contains("spotmate") || url.contains("localhost") ) ) {
		   request.getSession().setAttribute("prevPage", url);
	   }
	   
	   return "/users/loginForm";
   }
   
	@RequestMapping(value = "/kakaoLogin", method = {RequestMethod.GET, RequestMethod.POST})
	public String kakaoLogin(@RequestParam(value = "code", required = false) String code, Model model) {
		String access_Token = kaService.getAccessToken(code);
		Map<String, Object> userInfo = kaService.getUserInfo(access_Token);
		if ( uService.kakaoLogin(userInfo) == null ) {
			model.addAttribute("kakaoInfo", userInfo);
			return "/users/loginForm";
		}
		UserVo authUser = uService.kakaoLogin(userInfo);
		session.setAttribute("authUser", authUser);
		return "redirect:/";
	}
   
   @RequestMapping(value = "/loginOk", method = { RequestMethod.GET, RequestMethod.POST })
   //public String loginOk(Model model, @ModelAttribute UserVo userVo) {
   public String loginOk(@ModelAttribute UserVo userVo,
		   @RequestParam(value = "nickname", required = false) String nickname,
		   @RequestParam(value = "email", required = false) String email) {
	   UserVo authUser = uService.loginOk(userVo);
	   if( nickname != "") {
		   uService.insertKakao(nickname, email, authUser.getNo());
	   }
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
   
   @ResponseBody
   @RequestMapping(value = "/idChk", method = { RequestMethod.GET, RequestMethod.POST })
   public int idChk(@RequestBody String id) {
	   return uService.idChk(id);
   }
   
   @RequestMapping(value = "/joinOk", method = { RequestMethod.GET, RequestMethod.POST })
   public String joinOk(@ModelAttribute UserVo userVo) {
	  
	  System.out.println(userVo.toString());
	  
	  uService.joinUser(userVo);
	  return "/users/joinOk";
      //return "redirect:/driver";
   }

}