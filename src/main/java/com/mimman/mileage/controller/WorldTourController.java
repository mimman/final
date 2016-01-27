package com.mimman.mileage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WorldTourController {
	@RequestMapping("worldTour.action")
	public String worldTour(){
		
		return "/WEB-INF/views/mileage/worldTour.jsp";
	}
}
