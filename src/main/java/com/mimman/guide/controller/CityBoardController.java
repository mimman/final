package com.mimman.guide.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CityBoardController {

   @RequestMapping("cityBoard.action")
   public String CityBoard(HttpSession session){
   
	   session.setAttribute("page", "guide");
      return "/WEB-INF/views/guide/cityBoard.jsp";
   }
   
   @RequestMapping("city01.action")
   public String City01(String num){
   
   if(num.equals("1")){
      return "/WEB-INF/views/guide/city01.jsp";
   }else if(num.equals("2")){
      return "/WEB-INF/views/guide/city02.jsp";
   }else if(num.equals("3")){
      return "/WEB-INF/views/guide/city03.jsp";
   }else if(num.equals("4")){
      return "/WEB-INF/views/guide/city04.jsp";
   }else if(num.equals("5")){
      return "/WEB-INF/views/guide/city05.jsp";
   }else if(num.equals("6")){
      return "/WEB-INF/views/guide/city06.jsp";
   }else if(num.equals("7")){
      return "/WEB-INF/views/guide/city07.jsp";
   }else if(num.equals("8")){
      return "/WEB-INF/views/guide/city08.jsp";
   }else if(num.equals("9")){
      return "/WEB-INF/views/guide/city09.jsp";
   }else if(num.equals("10")){
      return "/WEB-INF/views/guide/city10.jsp";
   }else if(num.equals("11")){
      return "/WEB-INF/views/guide/city11.jsp";
   }
   else if(num.equals("12")){
	      return "/WEB-INF/views/guide/city12.jsp";
	   }
   
   return "/WEB-INF/views/guide/city13.jsp";
   
   }
   
}