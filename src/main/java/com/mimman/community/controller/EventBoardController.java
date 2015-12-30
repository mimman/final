package com.mimman.community.controller;

import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mimman.membership.service.MemberService;
import com.mimman.page.repository.PageDto;
import com.mimman.page.service.PageService;

@Controller
public class EventBoardController {
	private PageDto pageDto;
	private PageService pageService;

	public void setPageService(PageService pageService) {
		this.pageService = pageService;
	}

	public void setPageDto(PageDto pageDto) {
		this.pageDto = pageDto;
	}

	@RequestMapping("eventBoard.action")
	public ModelAndView eventPage(){
		
		ModelAndView mav = new ModelAndView("/WEB-INF/views/community/eventBoard.jsp");
		List list = pageService.getBoardList();
		
		mav.addObject("list",list);
		return mav;
		
		
	}
}
