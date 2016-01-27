package com.mimman.mileage.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mimman.membership.repository.Member;
import com.mimman.mileage.service.MileageService;
import com.mimman.reservation.service.ReservationService;


@Controller
public class MyMileageController {

	private MileageService mileageService;
	private ReservationService reservationService;
	
	
	public void setMileageService(MileageService mileageService) {
		this.mileageService = mileageService;
	}
	public void setReservationService(ReservationService reservationService) {
		this.reservationService = reservationService;
	}

	@RequestMapping("myMileage.action")
	public String myMileage(HttpSession session){
		String id= (String)session.getAttribute("id");
		
		if(id == null){
			return "/WEB-INF/views/membership/login.jsp";
		}
		
		List list = reservationService.reservationList(id);
		System.out.println(list.size());
		session.setAttribute("mileageList", list);

		Member result = mileageService.updateUser(id);
		session.setAttribute("dto",result );
		return "/WEB-INF/views/mileage/myMileage.jsp";
	}
}
