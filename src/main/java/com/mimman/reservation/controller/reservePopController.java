package com.mimman.reservation.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mimman.reservation.repository.HumanNumDto;
import com.mimman.reservation.repository.ReserveDto;
import com.mimman.reservation.repository.ReservePopDto;
import com.mimman.reservation.repository.userReservationDto;
import com.mimman.reservation.service.ReservationService;

@Controller
public class reservePopController {
	@Autowired
	private ReservationService reservationService;
	
	public void setReservationService(ReservationService reservationService) {
		this.reservationService = reservationService;
	}

	@RequestMapping("reservePop.action")
	public String reservePop(HumanNumDto hdto,HttpSession session){
		
	    
		System.out.println(hdto.getAirLine());
	
		
		session.setAttribute("hdto", hdto);
		return "/WEB-INF/views/reservation/pop_tax.jsp";
	}
}
