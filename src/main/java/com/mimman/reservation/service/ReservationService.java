package com.mimman.reservation.service;

import java.util.List;

import com.mimman.reservation.repository.HumanNumDto;
import com.mimman.reservation.repository.ReserveCompleteDto;
import com.mimman.reservation.repository.ReserveDto;
import com.mimman.reservation.repository.userReservationDto;

public interface ReservationService {

	public void insertReser(ReserveDto reserDto);

	public List getListReser();

	public List searchReser(userReservationDto userReserDto);

	public List reservePop(int reserNum);

	public List searchReserveList(HumanNumDto hdto);

	public ReserveCompleteDto completReserve(ReserveCompleteDto reserComDto);
}
