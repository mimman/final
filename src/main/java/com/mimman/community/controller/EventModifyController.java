package com.mimman.community.controller;

import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mimman.board.event.repository.EventModifyDto;
import com.mimman.page.service.PageService;

@Controller
public class EventModifyController {
	private PageService pageService;

	public void setPageService(PageService pageService) {
		this.pageService = pageService;
	}
	
	@RequestMapping("eventModifyPage.action")
	public String EventModify(){
		return "/WEB-INF/views/community/eventModify.jsp";
	}
	
	@RequestMapping("eventBoardModify.action")
	public String Modify(HttpSession session,EventModifyDto dto){
		
		String id = (String)session.getAttribute("id");
		System.out.println(dto.getArticleno()+"//"+dto.getWriter()+"//"+ id);
	
		if(dto.getWriter().equals(id)){
			pageService.BoardModify(dto);
		}
		else{
			System.out.println("권한이 없는 사용자입니다");
		}
	
		
		return "eventBoard.action";
	}
}
