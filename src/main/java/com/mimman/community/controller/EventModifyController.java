package com.mimman.community.controller;

import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mimman.page.service.PageService;

@Controller
public class EventModifyController {
	private PageService pageService;

	public void setPageService(PageService pageService) {
		this.pageService = pageService;
	}
	
	@RequestMapping("eventModifyPage.action")
	public String EventModify(int articleno,String writer,HttpSession session){
		
		String id = (String)session.getAttribute("id");
		System.out.println(articleno+"//"+writer+"//"+ id);
		return "/WEB-INF/views/community/eventModify.jsp";
	}
	
	@RequestMapping("eventBoardModify.action")
	public String Modify(int articleno,String writer,HttpSession session){
		
		String id = (String)session.getAttribute("id");
		System.out.println(articleno+"//"+writer+"//"+ id);
		if(writer.equals(id)){
			pageService.BoardDelete(articleno);
		}
		else{
			System.out.println("권한이 없는 사용자입니다");
		}
		
		return "eventBoard.action";
	}
}
