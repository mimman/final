package com.mimman.membership.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MypageController {
	@RequestMapping("mypage.action")
	public String mypage(HttpSession session){
		
		String id = (String) session.getAttribute("id");
		if("".equals(id) || id == null){
			return "/WEB-INF/views/membership/login.jsp";
		}
		System.out.println("mypage controller");
		return "/WEB-INF/views/mypage/mypage.jsp";
		
	}
}
