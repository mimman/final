package com.mimman.reservation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mimman.reservation.service.ReservationService;

@Controller
public class DeleteReserveController {
private ReservationService reservationService;
	
	public void setReservationService(ReservationService reservationService) {
		this.reservationService = reservationService;
	}
	
	@RequestMapping("deleteReser.action")
	public String deleteREser(){
		return "/WEB-INF/views/admin/deleteReservation.jsp";
	}

}
