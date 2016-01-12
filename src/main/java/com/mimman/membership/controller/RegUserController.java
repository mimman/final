package com.mimman.membership.controller;

import java.io.IOException;
import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
	public String joinCheck(String id,String password,String name, String birth,
			String email,String address, String nation, String phone){
	
		try{
			Member dto = new Member(id,password,name,birth,email,address,nation,phone);
			memberService.getList(dto);
			return "/WEB-INF/views/membership/joinOk.jsp";
		}
		catch(AlreadyExistingMemberException err){
			return "/WEB-INF/views/membership/joinInfo.jsp";
		}
		
	}
	/*
	@RequestMapping("membership.action")
	public ModelAndView pageHandler2(){
		System.out.println("membership.action");
		ModelAndView mav = new ModelAndView("/WEB-INF/views/membership/joinInfo.jsp");
		
		return mav;
	}
	*/
	@RequestMapping("membership.action")
	public String pageHandler2(){

		return "/WEB-INF/views/membership/agree.jsp";
	}
	
	@RequestMapping("agree.action")
	public String agree(String agree){

		return "/WEB-INF/views/membership/joinInfo.jsp";
	}
}
