package com.mimman.membership.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mimman.membership.service.MemberService;

@Controller
public class withdrawController {
private MemberService memberService;
	
	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}
	
	@RequestMapping("withdraw.action")
	public String withdrawPage(HttpSession session){
		String id = (String)session.getAttribute("id");
		
		if(id == null){
			return "/WEB-INF/views/membership/login.jsp";
		}
		
		return "/WEB-INF/views/mypage/withdraw.jsp";
	}
	
	@RequestMapping(value="withdraw.action", method=RequestMethod.POST)
	public String withdraw(HttpSession session){
		String id = (String)session.getAttribute("id");
	
		memberService.withdraw(id);
		return "logout.action";
	}
}
