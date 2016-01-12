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
   public String Search(userReservationDto userReserDto,HttpSession session){//
		  
      /*
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
      List list = reservationService.searchReser(userReserDto);
      if(list != null){
         
      
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
      session.setAttribute("userReserDto", userReserDto);
      session.setAttribute("reserSearchList", domesitList);
      }
      else{
         throw new NullListException();
      }
    
      return "/WEB-INF/views/reservation/domesticSearch.jsp";
   }

}
