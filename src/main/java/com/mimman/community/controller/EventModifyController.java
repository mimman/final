package com.mimman.community.controller;

import java.io.File;
import java.io.FileNotFoundException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.util.WebUtils;

import com.mimman.board.event.repository.EventModifyDto;
import com.mimman.page.service.PageService;

@Controller
public class EventModifyController {
	private PageService pageService;

	public void setPageService(PageService pageService) {
		this.pageService = pageService;
	}
	
	@RequestMapping("eventModifyPage.action")
	public String EventModify(){
		return "/WEB-INF/views/community/eventModify.jsp";
	}
	
	@RequestMapping("eventBoardModify.action")
	public String Modify(HttpSession session,EventModifyDto dto,String boardcd,HttpServletRequest req) throws FileNotFoundException{
		
		String id = (String)session.getAttribute("id");
	
		if(dto.getWriter().equals(id)){
			MultipartFile file = dto.getUpFile();
			
			String realPath = WebUtils.getRealPath(req.getSession().getServletContext(),"/img/board"); 
			String Path ="/Air/img/board/"+ File.separator + file.getOriginalFilename();
			dto.setImg(Path);
			pageService.writeFile(file, realPath, file.getOriginalFilename());
			pageService.BoardModify(dto);
		}
		
		else{
			System.out.println("권한이 없는 사용자입니다");
		}
	
		
		return "eventBoard.action";
	}
}
