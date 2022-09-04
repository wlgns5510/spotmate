package com.spotmate.controller;

import java.io.IOException;
import java.util.HashMap;
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

import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.Certification;
import com.siot.IamportRestClient.response.IamportResponse;
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
	   
	   if(url !=null && !url.contains("/login") && !url.contains("/join") && !url.contains("Write") && !url.contains("Welcome") && ( url.contains("spotmate") || url.contains("localhost") ) ) {
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
   public String loginOk(Model model, @ModelAttribute UserVo userVo,
		   @RequestParam(value = "nickname", required = false) String nickname,
		   @RequestParam(value = "email", required = false) String email,
		   @RequestParam(value = "birth", required = false) String birth,
		   @RequestParam(value = "gender", required = false) String gender) {
	   UserVo authUser = uService.loginOk(userVo);
	   if( nickname != null ) {
		   String chk = uService.insertKakao(nickname, email, birth, gender, authUser.getNo());
		   if(chk == null) {
			   Map<String, Object> userInfo = new HashMap<>();
			   userInfo.put("nickname", nickname);
			   userInfo.put("email", email);
			   userInfo.put("birth", birth);
			   userInfo.put("gender", gender);
			   model.addAttribute("kakaoInfo", userInfo);
			   return "redirect:/loginForm?result=kakaofail";
		   }
	   }
	   String url = (String)session.getAttribute("prevPage");
	   if(authUser !=null && url !=null) {
		   session.setAttribute("authUser", authUser);
		   return "redirect:"+url;
	   }else if(authUser!=null) {
		   session.setAttribute("authUser", authUser);
		   //return "redirect:/driver";
		   return "redirect:/index";
	   }else {
		   return "redirect:/loginForm?result=fail";
	   }
	   
	   //model.addAttribute("authUser", uService.loginOk(userVo));
	   //session.setAttribute("authUser", uService.loginOk(userVo));
	   //return "redirect:/driver";
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
   @RequestMapping(value = "/certification", method = { RequestMethod.GET, RequestMethod.POST })
   public String[] certification(@RequestBody String impUid) throws IamportResponseException, IOException {
      System.out.println(impUid);
      String impKey = "3850084311060237";
      String impSecret = "K7Gk4reSKmrlKMpJAM0ZSe6ct2CEavDvXfKyrmBAuukceTtzC0gcDhQWg3fgCDNZq2YTTJtfKuXAbmtV";
      IamportClient client = new IamportClient(impKey, impSecret);
      IamportResponse<Certification> certificationResponse = client.certificationByImpUid(impUid.replace("=", ""));

      String[] arr = new String[2];
      arr[0] = certificationResponse.getResponse().getName().toString();
      arr[1] = certificationResponse.getResponse().getPhone().toString();

      return arr;
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
	  
//	  return "/users/joinOk";
      return "redirect:/Welcome";
   }
   
   @RequestMapping(value = "/Welcome", method = { RequestMethod.GET, RequestMethod.POST })
   public String welcome() {
	  return "/users/joinOk";
   }

}