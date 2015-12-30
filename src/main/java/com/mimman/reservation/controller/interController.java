package com.mimman.reservation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class interController {
	@RequestMapping("inter.action")
	public String inter(){
		return "/WEB-INF/views/reservation/interSearch.jsp";
	}

}
