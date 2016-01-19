package com.mimman.reservation.controller;

import java.util.List;

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
		
		int tax2 = (reserComDto.getAdultTax2()*userDto.getAdult())+(reserComDto.getChildTax2()*userDto.getChild())+
				(reserComDto.getToddleTax2()*userDto.getToddle());
		int mileage2 = (int) (tax2*0.05);
		
		int tax3 = (reserComDto.getAdultTax3()*userDto.getAdult())+(reserComDto.getChildTax3()*userDto.getChild())+
				(reserComDto.getToddleTax3()*userDto.getToddle());
		int mileage3 = (int) (tax3*0.05);
		/*
		System.out.println("tax:"+tax);
		System.out.println("mileage:"+mileage);
		System.out.println("tax:"+tax2);
		System.out.println("mileage:"+mileage2);
		System.out.println("startTime:"+reserComDto.getStartTime());
		System.out.println("endTime:"+reserComDto.getEndTime());
		System.out.println("airLine:"+reserComDto.getAirLine());
		System.out.println("adultTax:"+reserComDto.getAdultTax());
		System.out.println("childTax:"+reserComDto.getChildTax());
		System.out.println("toddleTax:"+reserComDto.getToddleTax());
		System.out.println("reserNum:"+reserComDto.getReserveNum());
		*/
		System.out.println(userDto.getStartCity1());
		System.out.println(userDto.getStartCity2());
		System.out.println(userDto.getStartCity3());
		
		if(userDto.getReserveLine().equals("편도") || userDto.getReserveLine().equals("왕복")){
			//1번 항공
			reserComDto.setId(id);
			reserComDto.setStartCity(userDto.getStartCity());
			reserComDto.setEndCity(userDto.getEndCity());
			reserComDto.setAdult(userDto.getAdult());
			reserComDto.setChild(userDto.getChild());
			reserComDto.setToddle(userDto.getToddle());
			reserComDto.setReserveLine(userDto.getReserveLine());
			reserComDto.setStartDate(userDto.getStartDate());
			reserComDto.setTax(tax);
			reserComDto.setMileage(mileage);
		}
		
		if(userDto.getReserveLine().equals("왕복")){
		//2번 항공
			reserComDto.setId2(id);
			reserComDto.setStartCity2(userDto.getEndCity());
			reserComDto.setEndCity2(userDto.getStartCity());
			reserComDto.setAdult2(userDto.getAdult());
			reserComDto.setChild2(userDto.getChild());
			reserComDto.setToddle2(userDto.getToddle());
			reserComDto.setReserveLine2(userDto.getReserveLine());
			reserComDto.setStartDate2(userDto.getStartDate());
			reserComDto.setTax2(tax2);
			reserComDto.setMileage2(mileage2);
		}
		if(userDto.getReserveLine().equals("다구간여정")){
		//3번항공
			reserComDto.setId(id);
			reserComDto.setStartCity(userDto.getStartCity1());
			reserComDto.setEndCity(userDto.getEndCity1());
			reserComDto.setAdult(userDto.getAdult());
			reserComDto.setChild(userDto.getChild());
			reserComDto.setToddle(userDto.getToddle());
			reserComDto.setReserveLine(userDto.getReserveLine());
			reserComDto.setStartDate(userDto.getStartDate1());
			reserComDto.setTax(tax);
			reserComDto.setMileage(mileage);
			
			reserComDto.setId2(id);
			reserComDto.setStartCity2(userDto.getStartCity2());
			reserComDto.setEndCity2(userDto.getEndCity2());
			reserComDto.setAdult2(userDto.getAdult());
			reserComDto.setChild2(userDto.getChild());
			reserComDto.setToddle2(userDto.getToddle());
			reserComDto.setReserveLine2(userDto.getReserveLine());
			reserComDto.setStartDate2(userDto.getStartDate2());
			reserComDto.setTax2(tax2);
			reserComDto.setMileage2(mileage2);
			
			reserComDto.setId3(id);
			reserComDto.setStartCity3(userDto.getStartCity3());
			reserComDto.setEndCity3(userDto.getEndCity3());
			reserComDto.setAdult3(userDto.getAdult());
			reserComDto.setChild3(userDto.getChild());
			reserComDto.setToddle3(userDto.getToddle());
			reserComDto.setReserveLine3(userDto.getReserveLine());
			reserComDto.setStartDate3(userDto.getStartDate3());
			reserComDto.setTax3(tax3);
			reserComDto.setMileage3(mileage3);
		}
		
		ReserveCompleteDto comDto = null;
		if(userDto.getReserveLine().equals("편도") || userDto.getReserveLine().equals("왕복")){
		comDto =reservationService.completReserve(reserComDto);
		}
		else if(userDto.getReserveLine().equals("다구간여정")){
		comDto =reservationService.completMultiReserve(reserComDto);	
		}
		
		reserComDto.setComReserveNum(comDto.getComReserveNum());
		session.setAttribute("completDto", reserComDto);	
		
		return "/WEB-INF/views/reservation/reserveOk.jsp";
	}

}
