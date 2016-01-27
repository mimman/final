package com.mimman.mileage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SeatUpgradeController {
	@RequestMapping("seatUpgrade.action")
	public String seatUpgrade(){
		
		return "/WEB-INF/views/mileage/seatUpgrade.jsp";
	}
}
