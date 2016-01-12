package com.mimman.reservation.repository;

public class HumanNumDto {
	private String startCity;
	private String endCity;
	private String startDate;
	private String endDate;
	private String startTime;
	private String endTime;
	private String airLine;
	private String reserveLine;
	private int adult;
	private int child;
	private int toddle;
	
	
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
	public String getAirLine() {
		return airLine;
	}
	public void setAirLine(String airLine) {
		this.airLine = airLine;
	}
	public String getReserveLine() {
		return reserveLine;
	}
	public void setReserveLine(String reserveLine) {
		this.reserveLine = reserveLine;
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
