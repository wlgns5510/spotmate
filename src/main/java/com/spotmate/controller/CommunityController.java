package com.spotmate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CommunityController {
   
//   @Autowired
//   private CommunityService cService;
   
   @RequestMapping(value = "/event", method = { RequestMethod.GET, RequestMethod.POST })
   public String event() {
      return "/community/event";
   }
   
   

}
