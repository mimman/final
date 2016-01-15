package com.mimman.reservation.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mimman.reservation.repository.ReserveCompleteDto;
import com.mimman.reservation.repository.ReserveDto;
import com.mimman.reservation.repository.userReservationDto;
import com.mimman.reservation.service.ReservationService;

@Controller
public class reserveOkController {
private ReservationService reservationService;
	
	public void setReservationService(ReservationService reservationService) {
		this.reservationService = reservationService;
	}
	
	@RequestMapping("reserveOk.action")
	public String reserveOk(ReserveCompleteDto reserComDto,HttpSession session){
		String id = (String) session.getAttribute("id");
		userReservationDto userDto = (userReservationDto) session.getAttribute("userReserDto");
		int tax = (reserComDto.getAdultTax()*userDto.getAdult())+(reserComDto.getChildTax()*userDto.getChild())+
				(reserComDto.getToddleTax()*userDto.getToddle());
		int mileage = (int) (tax*0.05);
		/*
		System.out.println(tax);
		System.out.println(mileage);
		System.out.println("startTime:"+reserComDto.getStartTime());
		System.out.println("endTime:"+reserComDto.getEndTime());
		System.out.println("airLine:"+reserComDto.getAirLine());
		System.out.println("adultTax:"+reserComDto.getAdultTax());
		System.out.println("childTax:"+reserComDto.getChildTax());
		System.out.println("toddleTax:"+reserComDto.getToddleTax());
		*/
		
		
		reserComDto.setId(id);
		reserComDto.setStartCity(userDto.getStartCity());
		reserComDto.setAdult(userDto.getAdult());
		reserComDto.setChild(userDto.getChild());
		reserComDto.setToddle(userDto.getToddle());
		reserComDto.setReserveLine(userDto.getReserveLine());
		reserComDto.setStartDate(userDto.getStartDate());
		reserComDto.setTax(tax);
		reserComDto.setMileage(mileage);
		
		ReserveCompleteDto comDto =reservationService.completReserve(reserComDto);
		reserComDto.setComReserveNum(comDto.getComReserveNum());
		session.setAttribute("completDto", reserComDto);	
		
		return "/WEB-INF/views/reservation/reserveOk.jsp";
	}

}
