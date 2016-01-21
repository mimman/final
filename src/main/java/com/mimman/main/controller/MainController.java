package com.mimman.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

	@RequestMapping("index.action")
	public String pageHandler(){
		
		return "/index.jsp";
	}
	
	@RequestMapping("main.action")
	public ModelAndView pageHandler2(){
		
		ModelAndView mav = new ModelAndView("/WEB-INF/views/main/if_main.jsp");
		
		return mav;
	}
}
