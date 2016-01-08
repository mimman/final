package com.mimman.reservation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mimman.reservation.repository.ReserveDto;
import com.mimman.reservation.service.ReservationService;

@Controller
public class InsertReserveController {
	private ReservationService reservationService;
	
	public void setReservationService(ReservationService reservationService) {
		this.reservationService = reservationService;
	}
	
	@RequestMapping("addReser.action")
	public String insertReserGo(ReserveDto reserDto){
		return "/WEB-INF/views/admin/addReservation.jsp";
	}

	@RequestMapping("insertReserve.action")
	public String insertReser(ReserveDto reserDto){
		reservationService.insertReser(reserDto);
		return "admin.jsp";
	}
}
