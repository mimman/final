package com.mimman.reservation.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mimman.exception.NullListException;
import com.mimman.reservation.repository.ReserveDto;
import com.mimman.reservation.repository.userReservationDto;
import com.mimman.reservation.service.ReservationService;

@Controller
public class domesticController {
private ReservationService reservationService;
private List domesitList;



   public void setDomesitList(List domesitList) {
   this.domesitList = domesitList;
}

   public void setReservationService(ReservationService reservationService) {
      this.reservationService = reservationService;
   }
   
   @RequestMapping("domestic.action")
   public String domestic(HttpSession session){
      String id=(String) session.getAttribute("id");
      session.removeAttribute("reserSearchList");
      if(id == null){
         return "/WEB-INF/views/membership/login.jsp";
      }
      
      return "/WEB-INF/views/reservation/domesticSearch.jsp";
   }
   @RequestMapping("reserSearch.action")
   public String Search(userReservationDto userReserDto,HttpSession session,String reserveCode){//
	  /*
	  System.out.println("국내/제:"+reserveCode);
      System.out.println(userReserDto.getReserveLine());
      System.out.println(userReserDto.getStartCity());
      System.out.println(userReserDto.getEndCity());
      System.out.println(userReserDto.getStartDate());
      System.out.println(userReserDto.getEndDate());
      System.out.println(userReserDto.getSeat());
      System.out.println(userReserDto.getAdult());
      System.out.println(userReserDto.getChild());
      System.out.println(userReserDto.getToddle());
       */
	 
	  List list = null;
	  if(userReserDto.getReserveLine().equals("편도") || userReserDto.getReserveLine().equals("왕복")){
      list = reservationService.searchReser(userReserDto);
	  }
      List list1 = null;
      List list2 = null;
      List list3 = null;
     
      if(userReserDto.getReserveLine().equals("왕복")){
    	
    	  list2 = reservationService.searchReser(userReserDto);
      }
      else if(userReserDto.getReserveLine().equals("다구간여정")){
    	  list1 = reservationService.searchMultiReser(userReserDto);
    	  list2 = reservationService.searchMultiReser2(userReserDto);
    	  list3 = reservationService.searchMultiReser3(userReserDto);
    	  if(list1.size() == 0 ||list2.size() == 0 ||list3.size() == 0 ){
    		  if(reserveCode.equals("국내")){
    			  System.out.println("검색결과없음");
    	    	  return "/WEB-INF/views/reservation/domesticSearch.jsp";
    	      }
    	      else{
    	    	  System.out.println("검색결과없음");
    	    	  return "/WEB-INF/views/reservation/interSearch.jsp";
    	      }
    	  }
      }
      
      if(list != null || (list1.size() != 0 && list2.size() != 0 && list3.size() != 0) ){
/*
      List domesitList = new ArrayList();
      for(int i =0; i<list.size(); i++){
         ReserveDto dto =  (ReserveDto) list.get(i);
        
         String[] date = dto.getStartDate().split(" ");
         String[] endDate = dto.getEndDate().split(" ");
         String[] exDate = dto.getExDate().split(" ");
         dto.setStartDate(date[0]);
         dto.setEndDate(endDate[0]);
         dto.setExDate(exDate[0]);
         domesitList.add(i, dto);
      }
      */
      session.setAttribute("userReserDto", userReserDto);
      session.setAttribute("reserSearchList", list);
      
      if(userReserDto.getReserveLine().equals("왕복")){
    	  session.setAttribute("reserSearchList2", list2);
      }
      if(userReserDto.getReserveLine().equals("다구간여정")){
    	  session.setAttribute("reserSearchList", list1);
    	  session.setAttribute("reserMultiSearchList2", list2);
    	  session.setAttribute("reserMultiSearchList3", list3);
    	  System.out.println("다구간 세션 설정");
      }
    
      }
      else{
    	  if(reserveCode.equals("국내")){
        	  return "/WEB-INF/views/reservation/domesticSearch.jsp";
          }
          else{
        	  return "/WEB-INF/views/reservation/interSearch.jsp";
          }
      }
      
      if(reserveCode.equals("국내")){
    	  return "/WEB-INF/views/reservation/domesticSearch.jsp";
      }
      else{
    	  return "/WEB-INF/views/reservation/interSearch.jsp";
      }
      
   }

}
