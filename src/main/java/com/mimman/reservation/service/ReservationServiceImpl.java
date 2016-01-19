package com.mimman.reservation.service;

import java.util.List;


import com.mimman.mybatis.reserveManager;
import com.mimman.reservation.repository.HumanNumDto;
import com.mimman.reservation.repository.ReserveCompleteDto;
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

	public List searchReserveList(HumanNumDto hdto) {
		
		return reserveManager.searchReserveList(hdto);
	}
	
public List searchReserveList2(HumanNumDto hdto) {
		
		return reserveManager.searchReserveList2(hdto);
	}

	public ReserveCompleteDto completReserve(ReserveCompleteDto reserComDto) {
		
		return reserveManager.completeReserve(reserComDto);
	}

	public List searchMultiReser(userReservationDto userReserDto) {
		List list = reserveManager.searchMultiReser(userReserDto);
		
		return list;
	}

	public List searchMultiReser2(userReservationDto userReserDto) {
		List list = reserveManager.searchMultiReser2(userReserDto);
		
		return list;
	}

	public List searchMultiReser3(userReservationDto userReserDto) {
		List list = reserveManager.searchMultiReser3(userReserDto);
		
		return list;
	}

	public List searchMulitReserveList1(HumanNumDto hdto) {
		List list = reserveManager.searchMulitReserveList1(hdto);
		
		return list;
	}

	public List searchMulitReserveList2(HumanNumDto hdto) {
		List list = reserveManager.searchMulitReserveList2(hdto);
		
		return list;
	}

	public List searchMulitReserveList3(HumanNumDto hdto) {
		List list = reserveManager.searchMulitReserveList3(hdto);
		
		return list;
	}

	public ReserveCompleteDto completMultiReserve(ReserveCompleteDto reserComDto) {
		return reserveManager.completMultiReserve(reserComDto);
	}

	

}
