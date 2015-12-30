package com.mimman.reservation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class domesticController {
	@RequestMapping("domestic.action")
	public String domestic(){
		return "/WEB-INF/views/reservation/domesticSearch.jsp";
	}

}
