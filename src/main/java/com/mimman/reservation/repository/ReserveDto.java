package com.mimman.reservation.repository;

public class ReserveDto {
	private int reserNum;
	private String reserveCode;
	private String reserveLine;
	private String startCity;
	private String endCity;
	private String startDate;
	private String endDate;
	private String exDate;
	private int seat;
	private int num;
	private String airLine;
	private int adultTax;
	private int childTax;
	private int toddleTax;
	
	
	public int getReserNum() {
		return reserNum;
	}
	public void setReserNum(int reserNum) {
		this.reserNum = reserNum;
	}
	public String getReserveCode() {
		return reserveCode;
	}
	public void setReserveCode(String reserveCode) {
		this.reserveCode = reserveCode;
	}
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
	public String getExDate() {
		return exDate;
	}
	public void setExDate(String exDate) {
		this.exDate = exDate;
	}
	public int getSeat() {
		return seat;
	}
	public void setSeat(int seat) {
		this.seat = seat;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getAirLine() {
		return airLine;
	}
	public void setAirLine(String airLine) {
		this.airLine = airLine;
	}
	public int getAdultTax() {
		return adultTax;
	}
	public void setAdultTax(int adultTax) {
		this.adultTax = adultTax;
	}
	public int getChildTax() {
		return childTax;
	}
	public void setChildTax(int childTax) {
		this.childTax = childTax;
	}
	public int getToddleTax() {
		return toddleTax;
	}
	public void setToddleTax(int toddleTax) {
		this.toddleTax = toddleTax;
	}
	
	
}