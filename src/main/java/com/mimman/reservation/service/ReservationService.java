package com.mimman.reservation.service;

import java.util.List;

import com.mimman.reservation.repository.HumanNumDto;
import com.mimman.reservation.repository.ReserveCompleteDto;
import com.mimman.reservation.repository.ReserveDto;
import com.mimman.reservation.repository.seatUpgradeDto;
import com.mimman.reservation.repository.userReservationDto;

public interface ReservationService {

	public void insertReser(ReserveDto reserDto);

	public List getListReser();

	public List searchReser(userReservationDto userReserDto);

	public List reservePop(int reserNum);

	public List searchReserveList(HumanNumDto hdto);
	
	public List searchReserveList2(HumanNumDto hdto);

	public ReserveCompleteDto completReserve(ReserveCompleteDto reserComDto);

	public List searchMultiReser(userReservationDto userReserDto);

	public List searchMultiReser2(userReservationDto userReserDto);

	public List searchMultiReser3(userReservationDto userReserDto);

	public List searchMulitReserveList1(HumanNumDto hdto);

	public List searchMulitReserveList2(HumanNumDto hdto);

	public List searchMulitReserveList3(HumanNumDto hdto);

	public ReserveCompleteDto completMultiReserve(ReserveCompleteDto reserComDto);

	public ReserveCompleteDto searchReservation(ReserveCompleteDto comReserveNum);

	public void reservationDelete(ReserveCompleteDto comReserveNum);

	public List reservationList(String id);

	public void seatUpgrade(seatUpgradeDto dto);

	
}
