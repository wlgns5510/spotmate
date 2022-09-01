package com.spotmate.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spotmate.service.NoticeService;

@Controller
@RequestMapping("/notice")
public class NoticeController {
	
	@Autowired
	NoticeService nService;
	@Autowired
	HttpSession ss;
	
	@RequestMapping(value = {"/",""}, method = { RequestMethod.GET, RequestMethod.POST })
	public String noticeMain(Model model) {
		
		model.addAttribute("nList", nService.getList());
		
		return "/community/notice";
	}
	
	@RequestMapping(value = "/read/{no}", method = { RequestMethod.GET, RequestMethod.POST })
	public String noticeRead(@PathVariable int no, Model model) {
		model.addAttribute("nVo", nService.getNoticeContent(no));
	    return "/community/noticeRead";
	}
	
	@RequestMapping(value = "/write", method = { RequestMethod.GET, RequestMethod.POST })
	public String noticeWriteForm() {
	     return "/community/noticeWrite";
	}
	
	@RequestMapping(value = "/insert", method = { RequestMethod.GET, RequestMethod.POST })
	public String noticeInsert(@RequestParam String title, @RequestParam String content,@RequestParam String notiDetail) {
		nService.insertNotice(title, content,notiDetail);
	    return "redirect:/notice";
	}
	
	@ResponseBody
	@RequestMapping(value = "/delete", method = { RequestMethod.GET, RequestMethod.POST })
	public int noticeDelete(@RequestBody int no) {
		System.out.println(no);
	    return nService.deleteNotice(no);
	}
	
	
	
	
	
}
