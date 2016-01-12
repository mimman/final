package com.mimman.comment.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mimman.page.service.PageService;

@Controller
public class DeleteCommentController {
	private PageService pageService;
	
	public void setPageService(PageService pageService) {
		this.pageService = pageService;
	}

	@RequestMapping("DeleteComment.action")
	public String deleteComment(int commentno,int articleno,HttpSession session){
		
		System.out.println(commentno+articleno);
		List list = pageService.deleteComment(commentno,articleno);
		session.setAttribute("commentList", list);
		return "/WEB-INF/views/community/eventRead.jsp";
	}
}
