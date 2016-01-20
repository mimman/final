package com.mimman.membership.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

import com.mimman.exception.AlreadyExistingMemberException;
import com.mimman.membership.repository.Member;
import com.mimman.membership.repository.RegisterRequest;
import com.mimman.membership.service.MemberService;

@Controller
public class RegUserController {
	private MemberService memberService;
	
	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}
	
	@RequestMapping("joinCheck.action")
	public String joinCheck(Member dto,HttpServletRequest req) throws FileNotFoundException{
	
		try{
			
			
			MultipartFile file = dto.getUpFile();
			
			String realPath = WebUtils.getRealPath(req.getSession().getServletContext(),"/img/membership");
			String Path ="/Air/img/membership/"+ File.separator + file.getOriginalFilename();
			dto.setImg(Path);
			
			memberService.writeFile(file, realPath, file.getOriginalFilename());
			
			memberService.getList(dto);
			return "/WEB-INF/views/membership/joinOk.jsp";
		}
		catch(AlreadyExistingMemberException err){
			return "/WEB-INF/views/membership/joinInfo.jsp";
		}
		
	}
	
	@RequestMapping("membership.action")
	public String pageHandler2(){

		return "/WEB-INF/views/membership/agree.jsp";
	}
	
	@RequestMapping("agree.action")
	public String agree(String agree){

		return "/WEB-INF/views/membership/joinInfo.jsp";
	}
}
