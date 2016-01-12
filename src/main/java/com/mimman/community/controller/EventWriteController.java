package com.mimman.community.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.UnsupportedEncodingException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.util.WebUtils;

import com.mimman.board.event.repository.EventBoardDto;
import com.mimman.page.service.PageService;

@Controller
public class EventWriteController {
	private PageService pageService;

	public void setPageService(PageService pageService) {
		this.pageService = pageService;
	}
	
	@RequestMapping("eventWrite.action")
	public String eventWrite(){
		
		return "/WEB-INF/views/community/eventWrite.jsp";
	}
	
	@RequestMapping("eventWriteOk.action")
	public String eventWriteOk(EventBoardDto dto,HttpSession session,HttpServletRequest req) throws FileNotFoundException, UnsupportedEncodingException{
		
		String id = (String)session.getAttribute("id");
		dto.setWriter(id);
		System.out.println(dto.getTitle());
		MultipartFile file = dto.getUpFile();
		
		String realPath = WebUtils.getRealPath(req.getSession().getServletContext(),"/img/board");
		String Path ="/Air/img/board/"+ File.separator + file.getOriginalFilename();
		dto.setImg(Path);
		pageService.writeFile(file, realPath, file.getOriginalFilename());
		pageService.BoardWrite(dto);
	
	
		return "eventBoard.action";
	}
}
