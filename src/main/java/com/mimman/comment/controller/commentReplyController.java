package com.mimman.comment.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class commentReplyController {
	@RequestMapping
	public String commentReply(){
		
		
		return "/WEB-INF/views/community/eventRead.jsp";
	}
}
