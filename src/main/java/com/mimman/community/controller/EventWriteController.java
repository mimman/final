package com.mimman.community.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EventWriteController {

	@RequestMapping("eventWrite.action")
	public String eventWrite(){
		
		return "/WEB-INF/views/community/eventWrite.jsp";
	}
}
