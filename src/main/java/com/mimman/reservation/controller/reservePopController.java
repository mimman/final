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
	
		hdto.setStartCity(userDto.getStartCity());
		hdto.setEndCity(userDto.getEndCity());
		hdto.setStartDate(userDto.getStartDate());
		hdto.setEndDate(userDto.getEndDate());
		hdto.setReserveLine(userDto.getReserveLine());
		
		hdto.setAdult1(userDto.getAdult());
		hdto.setChild1(userDto.getChild());
		hdto.setToddle1(userDto.getToddle());
		hdto.setStartCity1(userDto.getStartCity1());
		hdto.setEndCity1(userDto.getEndCity1());
		hdto.setStartDate1(userDto.getStartDate1());
		
		hdto.setAdult2(userDto.getAdult());
		hdto.setChild2(userDto.getChild());
		hdto.setToddle2(userDto.getToddle());
		hdto.setStartCity2(userDto.getStartCity2());
		hdto.setEndCity2(userDto.getEndCity2());
		hdto.setStartDate2(userDto.getStartDate2());
		
		hdto.setAdult3(userDto.getAdult());
		hdto.setChild3(userDto.getChild());
		hdto.setToddle3(userDto.getToddle());
		hdto.setStartCity3(userDto.getStartCity3());
		hdto.setEndCity3(userDto.getEndCity3());
		hdto.setStartDate3(userDto.getStartDate3());
		List list = null;
		List mList1 = null;
		List mList2 = null;
		List mList3 = null;
		
		if(userDto.getReserveLine().equals("편도") || userDto.getReserveLine().equals("왕복")){
		list = reservationService.searchReserveList(hdto);
		}
		if(userDto.getReserveLine().equals("왕복")){
			List list2 = reservationService.searchReserveList2(hdto);
			
			session.setAttribute("reserveDto2", list2);
		}
		if(userDto.getReserveLine().equals("다구간여정")){
			mList1 = reservationService.searchMulitReserveList1(hdto);
			mList2 = reservationService.searchMulitReserveList2(hdto);
			mList3 = reservationService.searchMulitReserveList3(hdto);
			
			session.setAttribute("mDto1", mList1);
			session.setAttribute("mDto2", mList2);
			session.setAttribute("mDto3", mList3);
		}
		
		session.setAttribute("reserveDto", list);
		session.setAttribute("hdto", hdto);
		return "/WEB-INF/views/reservation/pop_tax.jsp";
	}
}
