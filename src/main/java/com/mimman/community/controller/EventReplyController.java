package com.mimman.community.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mimman.board.event.repository.EventBoardDto;
import com.mimman.page.service.PageService;

@Controller
public class EventReplyController {
	private PageService pageService;

	public void setPageService(PageService pageService) {
		this.pageService = pageService;
	}
	
	@RequestMapping("eventReply.action")
	public String EventReplyPage(int pos,String boardcd,HttpSession session){
		EventBoardDto dto = (EventBoardDto) session.getAttribute("boardDto");
		String id = (String)session.getAttribute("id");
		System.out.println("컨트롤러 포스"+pos);
		/*
		if(dto.getImg() == null){
			dto.setImg("");
		}*/
		dto.setPos(pos);
		dto.setWriter(id);
		dto.setBoardcd(boardcd);
		session.setAttribute("replyDto", dto);
		return "/WEB-INF/views/community/eventReply.jsp";
	}
	
	
	@RequestMapping("eventReplyOk.action")
	public String EventReply(EventBoardDto dto,HttpSession session,String boardcd){
		
		EventBoardDto replydto = (EventBoardDto)session.getAttribute("replyDto");
		dto.setPos(replydto.getPos());
		dto.setWriter(replydto.getWriter());
		dto.setDept(replydto.getDept());
		dto.setBoardcd(replydto.getBoardcd());
		pageService.BoardReply(dto);
		return "eventBoard.action";
	}
	

}
