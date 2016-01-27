package com.mimman.reservation.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mimman.reservation.repository.seatUpgradeDto;
import com.mimman.reservation.service.ReservationService;

@Controller
public class seatUpgrade {
	private ReservationService reservationService;
	
	public void setReservationService(ReservationService reservationService) {
		this.reservationService = reservationService;
	}
	
	@RequestMapping("seatUpgrade2.action")
	public String seatUpgrade(String seatLevel,int num,int comnum,HttpSession session){
		String id = (String) session.getAttribute("id");
		seatUpgradeDto dto = new seatUpgradeDto();
		dto.setId(id);
		if(seatLevel.equals("일반석")){
			dto.setSeat("비즈니스석");
			dto.setMileage(2000);
			dto.setNum(num);
			dto.setComnum(comnum);
		}
		else if(seatLevel.equals("비즈니스석")){
			dto.setSeat("일등석");
			dto.setMileage(2500);
			dto.setNum(num);
			dto.setComnum(comnum);
		}
		reservationService.seatUpgrade(dto);
		return "reservationList.action";
	}
}
