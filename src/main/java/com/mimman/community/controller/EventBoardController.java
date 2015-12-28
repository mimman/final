package com.mimman.community.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EventBoardController {

	@RequestMapping("eventBoard.action")
	public String eventPage(){
		
		return "/WEB-INF/views/community/eventBoard.jsp";
	}
}
