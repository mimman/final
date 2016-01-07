package com.mimman.reservation.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mimman.reservation.repository.ReserveDto;
import com.mimman.reservation.repository.userReservationDto;
import com.mimman.reservation.service.ReservationService;

@Controller
public class domesticController {
private ReservationService reservationService;
	
	public void setReservationService(ReservationService reservationService) {
		this.reservationService = reservationService;
	}
	
	@RequestMapping("domestic.action")
	public String domestic(HttpSession session){
		session.removeAttribute("reserSearchList");
		return "/WEB-INF/views/reservation/domesticSearch.jsp";
	}
	@RequestMapping("reserSearch.action")
	public String Search(userReservationDto userReserDto,HttpSession session){
		System.out.println(userReserDto.getReserveLine());
		System.out.println(userReserDto.getStartCity());
		System.out.println(userReserDto.getEndCity());
		System.out.println(userReserDto.getStartDate());
		System.out.println(userReserDto.getEndDate());
		System.out.println(userReserDto.getSeat());
		System.out.println(userReserDto.getAdult());
		System.out.println(userReserDto.getChild());
		System.out.println(userReserDto.getToddle());
		
		List list = reservationService.searchReser(userReserDto);
		System.out.println("예매 검색 결과"+list.size());
		session.setAttribute("reserSearchList", list);
		return "/WEB-INF/views/reservation/domesticSearch.jsp";
	}

}

