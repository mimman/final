package com.mimman.reservation.service;

import java.util.List;

import com.mimman.reservation.repository.ReserveDto;
import com.mimman.reservation.repository.userReservationDto;

public interface ReservationService {

	public void insertReser(ReserveDto reserDto);

	public List getListReser();

	public List searchReser(userReservationDto userReserDto);
}
