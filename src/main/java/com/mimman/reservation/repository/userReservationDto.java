package com.mimman.reservation.repository;

public class userReservationDto {
	private String reserveLine;
	private String startCity;
	private String endCity;
	private String startDate;
	private String endDate;
	private String seat;
	private int adult;
	private int child;
	private int toddle;
	
	public String getReserveLine() {
		return reserveLine;
	}
	public void setReserveLine(String reserveLine) {
		this.reserveLine = reserveLine;
	}
	public String getStartCity() {
		return startCity;
	}
	public void setStartCity(String startCity) {
		this.startCity = startCity;
	}
	public String getEndCity() {
		return endCity;
	}
	public void setEndCity(String endCity) {
		this.endCity = endCity;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getSeat() {
		return seat;
	}
	public void setSeat(String seat) {
		this.seat = seat;
	}
	public int getAdult() {
		return adult;
	}
	public void setAdult(int adult) {
		this.adult = adult;
	}
	public int getChild() {
		return child;
	}
	public void setChild(int child) {
		this.child = child;
	}
	public int getToddle() {
		return toddle;
	}
	public void setToddle(int toddle) {
		this.toddle = toddle;
	}
	
	
}
