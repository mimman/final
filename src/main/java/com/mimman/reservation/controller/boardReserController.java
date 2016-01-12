package com.mimman.reservation.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mimman.reservation.service.ReservationService;

@Controller
public class boardReserController {
private ReservationService reservationService;
	
	public void setReservationService(ReservationService reservationService) {
		this.reservationService = reservationService;
	}
	
	@RequestMapping("viewReser.action")
	public String viewReser(HttpSession session){
		List list = reservationService.getListReser();
		System.out.println(list.size());
		session.setAttribute("reserList", list);
		
	
		return "/WEB-INF/views/admin/boardReservation.jsp";
	}
}
