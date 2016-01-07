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
	public String EventDelete(int articleno,String writer,String boardcd,HttpSession session){
	
		String id = (String)session.getAttribute("id");
	
		
		if(writer.equals(id)){
			pageService.BoardDelete(articleno);
			pageService.BoardAllCommentDelete(articleno);
		}
		else{
			System.out.println("������ ���� ������Դϴ�");
		}
		
		
		return "eventBoard.action?"+boardcd;
	}

}
