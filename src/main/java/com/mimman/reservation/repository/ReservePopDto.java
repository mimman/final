package com.mimman.reservation.repository;

public class ReservePopDto {
	private String aircraftCode;
	private String reserveLine;
	private String startDate;
	private String endDate;
	private String startTime;
	private String endTime;
	private int tax;
	private int num;
	private int seat;
	private String adult;
	private String child;
	private String toddle;
	
	public String getReserveLine() {
		return reserveLine;
	}
	public void setReserveLine(String reserveLine) {
		this.reserveLine = reserveLine;
	}
	public int getSeat() {
		return seat;
	}
	public void setSeat(int seat) {
		this.seat = seat;
	}
	public String getAdult() {
		return adult;
	}
	public void setAdult(String adult) {
		this.adult = adult;
	}
	public String getChild() {
		return child;
	}
	public void setChild(String child) {
		this.child = child;
	}
	public String getToddle() {
		return toddle;
	}
	public void setToddle(String toddle) {
		this.toddle = toddle;
	}
	public String getAircraftCode() {
		return aircraftCode;
	}
	public void setAircraftCode(String aircraftCode) {
		this.aircraftCode = aircraftCode;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public int getTax() {
		return tax;
	}
	public void setTax(int tax) {
		this.tax = tax;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	
	
}
