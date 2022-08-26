package com.spotmate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BrandController {
   
//   @Autowired
//   private CommunityService cService;
   
   @RequestMapping(value = "/aboutUs", method = { RequestMethod.GET, RequestMethod.POST })
   public String aboutUs() {
      return "/brand/aboutUs";
   }
   
   @RequestMapping(value = "/forEarth", method = { RequestMethod.GET, RequestMethod.POST })
   public String forEarth() {
      return "/brand/forEarth";
   }
   

}
