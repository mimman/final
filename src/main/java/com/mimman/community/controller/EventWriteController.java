package com.mimman.community.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mimman.board.event.repository.EventBoardDto;
import com.mimman.page.service.PageService;

@Controller
public class EventWriteController {
	private PageService pageService;

	public void setPageService(PageService pageService) {
		this.pageService = pageService;
	}
	
	@RequestMapping("eventWrite.action")
	public String eventWrite(){
		
		return "/WEB-INF/views/community/eventWrite.jsp";
	}
	
	@RequestMapping("eventWriteOk.action")
	public String eventWriteOk(EventBoardDto dto,HttpSession session){
		String id = (String)session.getAttribute("id");
		dto.setWriter(id);
		
	pageService.BoardWrite(dto);
	
		return "eventBoard.action";
	}
}
