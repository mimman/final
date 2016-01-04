package com.mimman.community.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mimman.board.event.repository.EventBoardSearch;
import com.mimman.page.repository.PageDto;
import com.mimman.page.service.PageService;

@Controller
public class EventBoardSearchController {
	private PageDto pageDto;
	private PageService pageService;

	public void setPageService(PageService pageService) {
		this.pageService = pageService;
	}

	public void setPageDto(PageDto pageDto) {
		this.pageDto = pageDto;
	}
	
	public String boardSearch(EventBoardSearch ebSearch){
		
		System.out.println(ebSearch.getKeyField()+"//"+ebSearch.getKeyWord());
		pageService.getBoardSearch(ebSearch);
		return "eventBoard.action?boardcd=event";
	}
	@RequestMapping("boardSearch.action")
	public String eventPage(String boardcd,EventBoardSearch ebSearch,HttpServletRequest req,HttpSession session){
		
		ebSearch.setBoardcd(boardcd);
		if(ebSearch.getKeyWord().trim().equals("") || ebSearch.getKeyWord() == null ){
			System.out.println("eventBoard.action?boardcd="+boardcd);
			return "eventBoard.action";
		}
		
		List list = pageService.getBoardSearch(ebSearch);
		System.out.println("서치컨트롤러 리스트사이즈: "+list.size());
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
		return "/WEB-INF/views/community/eventBoard.jsp";
		
		
	}
}
