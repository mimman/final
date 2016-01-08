package com.mimman.reservation.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class interController {
	@RequestMapping("inter.action")
	public String inter(HttpSession session){
		String id=(String) session.getAttribute("id");
		session.removeAttribute("reserSearchList");
		if(id == null){
			return "/WEB-INF/views/membership/login.jsp";
		}
		
		return "/WEB-INF/views/reservation/interSearch.jsp";
	}

}
