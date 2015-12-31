package com.mimman.community.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mimman.board.event.repository.EventBoardDto;
import com.mimman.page.service.PageService;

@Controller
public class EventReadController {
	private PageService pageService;

	public void setPageService(PageService pageService) {
		this.pageService = pageService;
	}
	
	@RequestMapping("eventRead.action")
	public String eventRead(int articleno,HttpSession session){
		
		pageService.BoardCount(articleno);
		EventBoardDto dto = pageService.BoardRead(articleno);
		
	
		session.setAttribute("boardDto", dto);
		System.out.println("pos:"+dto.getPos());
		return "/WEB-INF/views/community/eventRead.jsp";
	}
}
