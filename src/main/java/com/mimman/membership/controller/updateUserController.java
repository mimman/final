package com.mimman.membership.controller;

import java.io.File;
import java.io.FileNotFoundException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.util.WebUtils;

import com.mimman.membership.repository.Member;
import com.mimman.membership.repository.Update;
import com.mimman.membership.service.MemberService;

@Controller
public class updateUserController {
private MemberService memberService;
	
	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}
	@RequestMapping("updateUser.action")
	public String updateUser(HttpSession session){
		String id = (String)session.getAttribute("id");
		
		if(id == null){
			return "/WEB-INF/views/membership/login.jsp";
		}
		
		Member result = memberService.updateUser(id);
		String[] sp = result.getBirth().split(" ");
		result.setBirth(sp[0]);
		session.setAttribute("dto",result );
		return "/WEB-INF/views/mypage/updateUser.jsp";
		
	}
	
	@RequestMapping(value="updateUser.action", method=RequestMethod.POST)
	public String update(HttpSession session,Update update,HttpServletRequest req) throws FileNotFoundException{
		MultipartFile file = update.getUpFile();
		
		String realPath = WebUtils.getRealPath(req.getSession().getServletContext(),"/img/membership");
		String Path ="/Air/img/membership/"+ File.separator + file.getOriginalFilename();
		update.setImg(Path);
		
		memberService.writeFile(file, realPath, file.getOriginalFilename());
		memberService.update(update);
		return "/WEB-INF/views/mypage/updateOk.jsp";
		
	}
}
