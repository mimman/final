package com.mimman.membership.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mimman.membership.service.MemberService;

@Controller
public class LogoutController {

	@RequestMapping("logout.action")
	public String logOut(HttpSession session){
		
		session.removeAttribute("id");
		
		return "/index.jsp";
	}
}
