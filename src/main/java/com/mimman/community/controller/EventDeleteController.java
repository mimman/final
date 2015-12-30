package com.mimman.community.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mimman.page.service.PageService;

@Controller
public class EventDeleteController {
	private PageService pageService;

	public void setPageService(PageService pageService) {
		this.pageService = pageService;
	}
	
	@RequestMapping("evevBoardDelete.action")
	public String EventDelete(int articleno,String writer,HttpSession session){
	
		String id = (String)session.getAttribute("id");
		System.out.println(articleno+"//"+writer);
		System.out.println(id);
		
		if(writer.equals(id)){
			pageService.BoardDelete(articleno);
		}
		else{
			System.out.println("권한이 없는 사용자입니다");
		}
		
		
		return "eventBoard.action";
	}

}
