package com.mimman.community.controller;

import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	public ModelAndView eventPage(String boardcd,HttpServletRequest req,HttpSession session){
		
		System.out.println("보드리스트 동작"+boardcd);
		ModelAndView mav = new ModelAndView("/WEB-INF/views/community/eventBoard.jsp");
		List list = pageService.getBoardList(boardcd);
		int totalRecord = list.size();
		
		pageDto.setTotalRecord(totalRecord);
		
		int totalPage = (int)Math.ceil(((double)pageDto.getTotalRecord()/pageDto.getNumPerPage()));
		pageDto.setTotalPage(totalPage);
		int nowPage = pageDto.getNowPage();
		int nowBlock = pageDto.getNowBlock();
		int beginPerPage = pageDto.getBeginPerPage();
		int totalBlock = pageDto.getTotalBlock();
		int numPerPage = pageDto.getNumPerPage();
		int pagePerBlock = pageDto.getPagePerBlock();
		
		if(req.getParameter("nowPage") == null || req.getParameter("nowPage").equals("")){
	         nowPage = 0;
	      }
	      else{
	         nowPage = Integer.parseInt(req.getParameter("nowPage"));
	      }
	      
	      if(req.getParameter("nowBlock") == null || req.getParameter("nowBlock").equals("")){
	         nowBlock = 0;
	      }
	      else{
	         nowBlock = Integer.parseInt(req.getParameter("nowBlock"));
	      }
	      
	      
	      beginPerPage = nowPage * numPerPage;
	      totalBlock = (int)Math.ceil(((double)pageDto.getTotalPage()/pageDto.getPagePerBlock()));
	      
	      pageDto.setBeginPerPage(beginPerPage);
	      pageDto.setNowBlock(nowBlock);
	      pageDto.setNowPage(nowPage);
	      pageDto.setNumPerPage(numPerPage);
	      pageDto.setPagePerBlock(pagePerBlock);
	      pageDto.setTotalBlock(totalBlock);
	      
	      session.setAttribute("list", list);
	      session.setAttribute("pagedto", pageDto);
	      session.setAttribute("boardcd", boardcd);
		return mav;
		
		
	}
}
