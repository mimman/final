package com.mimman.membership.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
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
	public String pageHandler(Login login, HttpSession session,String save_id){
		
		Member result=
				memberService.authenticate(login);
		Cookie cook = new Cookie("remember" ,result.getId());
		
		if(result != null){
			session.setAttribute("id", result.getId());
			if("on".equals(save_id) && save_id != null){
				session.setAttribute("saveId", result.getId());
			}
			else{
				session.removeAttribute("saveId");
			}
			
			if("guide".equals(session.getAttribute("page"))){
				session.removeAttribute("page");
				return "/WEB-INF/views/guide/cityBoard.jsp";
			}
			else
			return "/index.jsp";
		}
		return "/WEB-INF/views/membership/login.jsp";
	}
}
