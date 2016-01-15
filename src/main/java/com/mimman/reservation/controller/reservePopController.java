package com.mimman.reservation.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

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
		
	    userReservationDto userDto = (userReservationDto) session.getAttribute("userReserDto");
	    /*
	    System.out.println(userDto.getAdult());
	    System.out.println(userDto.getChild());
	    System.out.println(userDto.getToddle());
	    System.out.println(userDto.getReserveLine());
	    System.out.println(userDto.getSeat());
	    System.out.println(userDto.getStartCity());
	    System.out.println(userDto.getEndCity());
	    System.out.println(userDto.getStartDate());
	    System.out.println(userDto.getEndDate());
		System.out.println(hdto.getAirLine());
		*/
		hdto.setStartCity(userDto.getStartCity());
		hdto.setEndCity(userDto.getEndCity());
		hdto.setStartDate(userDto.getStartDate());
		hdto.setEndDate(userDto.getEndDate());
		hdto.setReserveLine(userDto.getReserveLine());
		if(hdto.getReserveLine().equals("Æíµµ")){
			List list = reservationService.searchReserveList(hdto);
			
			session.setAttribute("reserveDto", list);
			session.setAttribute("hdto", hdto);
		}
		else if(hdto.getReserveLine().equals("¿Õº¹")){
			System.out.println("¿Õº¹");
		}
		
		return "/WEB-INF/views/reservation/pop_tax.jsp";
	}
}
