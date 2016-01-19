package com.mimman.mileage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class mileageController {
	@RequestMapping("mileage.action")
	public String mileagePage(){
		
		return "/WEB-INF/views/mileage/mileage.jsp";
	}
}
