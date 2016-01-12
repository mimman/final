package com.mimman.membership.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mimman.membership.repository.Member;
import com.mimman.membership.service.MemberService;

@Controller
public class MemberDetailController {
   private MemberService memberService;
   
   public void setMemberService(MemberService memberService) {
      this.memberService = memberService;
   }
   @RequestMapping("memberDetail.action")
   public String MemberDetail(HttpSession session){
      
      String id = (String)session.getAttribute("id");
      
      if(id == null){
         return "/WEB-INF/views/membership/login.jsp";
      }
      
      Member result = memberService.updateUser(id);
      String[] sp = result.getBirth().split(" ");
      result.setBirth(sp[0]);
      session.setAttribute("dto",result );
      return "/WEB-INF/views/mypage/memberDetail.jsp";
   }
}