package com.mimman.reservation.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mimman.reservation.repository.ReserveCompleteDto;
import com.mimman.reservation.service.ReservationService;

@Controller
public class reserSearchController {
	private ReservationService reservationService;
	
	public void setReservationService(ReservationService reservationService) {
		this.reservationService = reservationService;
	}
	
	@RequestMapping("reservationSearch.action")
	public String reserSearchPage(){
	
		return "/WEB-INF/views/mypage/reserSearchBoard.jsp";
	}

	@RequestMapping("reservationOk.action")
	public String reserSearchOk(ReserveCompleteDto comReserveNum,HttpSession session){
		String id = (String) session.getAttribute("id");
		comReserveNum.setId(id);
		ReserveCompleteDto dto = reservationService.searchReservation(comReserveNum);
		if(dto.getComReserveNum() == null){
			return "/WEB-INF/views/mypage/reserSearchBoard.jsp";
		}
		else{
			session.setAttribute("userReserDto", dto);
		}
		
		return "/WEB-INF/views/mypage/reserSearchBoardOk.jsp";
	}
	@RequestMapping("reservationDeletePage.action")
	public String reserSearchDeletePage(){
		
		return "/WEB-INF/views/mypage/reserSearchDelete.jsp";
	}
	@RequestMapping("reservationDelete.action")
	public String reserSearchDelete(ReserveCompleteDto comReserveNum,HttpSession session){
		String id = (String) session.getAttribute("id");
		comReserveNum.setId(id);
		reservationService.reservationDelete(comReserveNum);
		return "/WEB-INF/views/mypage/mypage.jsp";
	}
	
	@RequestMapping("reservationList.action")
	public String reserSearchViewPage(HttpSession session){
		String id = (String) session.getAttribute("id");
		List list = reservationService.reservationList(id);
		session.setAttribute("idSearchList", list);
		return "/WEB-INF/views/mypage/reserSearchBoardView.jsp";
	}
	
	
}
