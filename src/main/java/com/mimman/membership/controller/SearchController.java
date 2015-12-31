package com.mimman.membership.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mimman.membership.repository.Search;
import com.mimman.membership.repository.pwSearch;
import com.mimman.membership.service.MemberService;

@Controller
public class SearchController {
   private MemberService memberService;
   
   //인스턴스 생성
   public void setMemberService(MemberService memberService) {
      this.memberService = memberService;
   }
   
   @RequestMapping("idSearch.action")
   public String idSearch(){
   
      return "/WEB-INF/views/membership/idSearch.jsp";
   }
   
   @RequestMapping(value="idSearch.action",method=RequestMethod.POST)
   public String idResult(Search search,HttpSession session){
      
      //System.out.println(search.getUser_nm()+search.getEmail1()+search.getEmail2());
      
      String id = memberService.idSearch(search);
      session.setAttribute("searchid", id);
      return "/WEB-INF/views/membership/idSearchOk.jsp";
   }

   
   @RequestMapping("pwSearch.action")
   public String pwSearch(){
   
      return "/WEB-INF/views/membership/pwSearch.jsp";
   }
   
   @RequestMapping(value="pwSearch.action",method=RequestMethod.POST)
   public String pwResult(pwSearch search,HttpSession session){
      
      String pw = memberService.pwSearch(search);
      session.setAttribute("searchpw", pw);
      return "/WEB-INF/views/membership/pwSearchOk.jsp";
   }

}