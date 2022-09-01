package com.spotmate.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spotmate.service.NoticeService;

@Controller
public class NoticeController {
	
	@Autowired
	NoticeService nService;
	@Autowired
	HttpSession ss;
	
	@RequestMapping(value = "/notice", method = { RequestMethod.GET, RequestMethod.POST })
	public String noticeMain(Model model) {
		
		model.addAttribute("nList", nService.getList());
		
		return "/community/notice";
	}
	
	@RequestMapping(value = "/noticeRead", method = { RequestMethod.GET, RequestMethod.POST })
	public String noticeRead() {
	     return "/community/noticeRead";
	}
	
	@RequestMapping(value = "/noticeWrite", method = { RequestMethod.GET, RequestMethod.POST })
	public String noticeWriteForm() {
	     return "/community/noticeWrite";
	}
	
	@RequestMapping(value = "/noticeInsert", method = { RequestMethod.GET, RequestMethod.POST })
	public String noticeInsert(@RequestParam String title, @RequestParam String content) {
		nService.insertNotice(title, content);
	    return "/community/noticeWrite";
	}
	
	
	
	
	
}
