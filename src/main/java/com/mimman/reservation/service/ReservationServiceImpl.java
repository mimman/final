package com.mimman.reservation.service;

import java.util.List;

import com.mimman.exception.IdPasswordNotMachingException;
import com.mimman.mybatis.reserveManager;
import com.mimman.reservation.repository.ReserveDto;
import com.mimman.reservation.repository.userReservationDto;

public class ReservationServiceImpl implements ReservationService {

	public void insertReser(ReserveDto reserDto) {
		reserveManager.addReserve(reserDto);
	}

	public List getListReser() {
		return reserveManager.getListReser();
	}

	public List searchReser(userReservationDto userReserDto) {
		List list = reserveManager.searchReser(userReserDto);
		
		return list;
		
	}

	public List reservePop(int reserNum) {
		
		return reserveManager.reservePop(reserNum);
	}

}
