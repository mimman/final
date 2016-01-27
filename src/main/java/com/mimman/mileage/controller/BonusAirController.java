package com.mimman.mileage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BonusAirController {
	@RequestMapping("bonusAir.action")
	public String bonusAir(){
		
		return "/WEB-INF/views/mileage/bonusAir.jsp";
	}
}
