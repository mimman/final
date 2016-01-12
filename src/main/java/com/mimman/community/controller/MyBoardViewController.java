package com.mimman.community.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mimman.page.repository.PageDto;
import com.mimman.page.service.PageService;

@Controller
public class MyBoardViewController {
	private PageDto pageDto;
	private PageService pageService;

	public void setPageService(PageService pageService) {
		this.pageService = pageService;
	}

	public void setPageDto(PageDto pageDto) {
		this.pageDto = pageDto;
	}
	
	@RequestMapping("mypageView.action")
	public String mypageView(HttpSession session,HttpServletRequest req){
		String id=(String) session.getAttribute("id");
		List list =pageService.myBoardView(id);
		int totalRecord = list.size();
		System.out.println("list ªÁ¿Ã¡Ó"+totalRecord);
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
				
		return "/WEB-INF/views/mypage/mypageView.jsp";
	}
}
