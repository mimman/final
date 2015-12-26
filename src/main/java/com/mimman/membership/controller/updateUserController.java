package com.mimman.membership.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
		
		session.setAttribute("dto",result );
		return "/WEB-INF/views/mypage/updateUser.jsp";
		
	}
	
	@RequestMapping(value="updateUser.action", method=RequestMethod.POST)
	public String update(HttpSession session,Update update){
		System.out.println(update.getAddress());
		
		memberService.update(update);
		return "/WEB-INF/views/mypage/updateOk.jsp";
		
	}
}
