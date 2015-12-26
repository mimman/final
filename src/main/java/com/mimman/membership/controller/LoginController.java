package com.mimman.membership.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mimman.membership.repository.Login;
import com.mimman.membership.repository.Member;
import com.mimman.membership.service.MemberService;

@Controller
public class LoginController {
	private MemberService memberService;
	
	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}
	
	@RequestMapping("membershipLogin.action")
	public String login(){
	
		return "/WEB-INF/views/membership/login.jsp";
	}
	
	@RequestMapping("login.action")
	public String pageHandler(Login login, HttpSession session){
		Member result=
				memberService.authenticate(login);
		System.out.println(result.getId());
		if(result != null){
			session.setAttribute("id", result.getId());
			return "/index.jsp";
		}
		return "/WEB-INF/views/membership/login.jsp";
	}
}
