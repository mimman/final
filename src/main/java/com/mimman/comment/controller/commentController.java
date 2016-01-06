package com.mimman.comment.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mimman.comment.repository.commentDto;
import com.mimman.page.service.PageService;

@Controller
public class commentController {
	private PageService pageService;
	private commentDto commentDto;

	public void setCommentDto(commentDto commentDto) {
		this.commentDto = commentDto;
	}

	public void setPageService(PageService pageService) {
		this.pageService = pageService;
	}
	
	@RequestMapping("comment.action")
	public String comment(commentDto commentDto,HttpSession session,String param){

		
			List list = pageService.setComment(commentDto,param);
			session.setAttribute("commentList", list);
		
		
		
		return "/WEB-INF/views/community/eventRead.jsp";
	}
}
