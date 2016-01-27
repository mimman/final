package com.mimman.reservation.repository;

public class ReserveCompleteDto {
	private String comReserveNum;  //예약번호
	private String reserveNum;   //항공번호
	private String reserveLine;  //편도/왕복/다구간
	private String AirLine;   //항공사
	private String startCity;  //출발도시
	private String startDate;  //출발날짜
	private String startTime;  //출발시간
	private String endCity;   //도착도시
	private String endDate;		//도착날짜
	private String endTime;		//도착시간
	private int adult;  //어른수
	private int child;  //소아수
	private int toddle; //유아수
	private int adultTax; //어른 요금
	private int childTax; //소아요금
	private int toddleTax; //유아요금
	private String id;  //예약자 
	private int tax;  //총 요금
	private int mileage;  //적립 마일리지
	private String seat;  //좌석등급
	
	
	public String getSeat() {
		return seat;
	}
	public void setSeat(String seat) {
		this.seat = seat;
	}
	private String comReserveNum2;
	private String reserveNum2;
	private String reserveLine2;
	private String AirLine2;
	private String startCity2;
	private String startDate2;
	private String startTime2;
	private String endCity2;
	private String endDate2;
	private String endTime2;
	private int adult2;
	private int child2;
	private int toddle2;
	private int adultTax2;
	private int childTax2;
	private int toddleTax2;
	private String id2;
	private int tax2;
	private int mileage2;
	
	private String comReserveNum3;
	private String reserveNum3;
	private String reserveLine3;
	private String AirLine3;
	private String startCity3;
	private String startDate3;
	private String startTime3;
	private String endCity3;
	private String endDate3;
	private String endTime3;
	private int adult3;
	private int child3;
	
	public String getComReserveNum3() {
		return comReserveNum3;
	}
	public void setComReserveNum3(String comReserveNum3) {
		this.comReserveNum3 = comReserveNum3;
	}
	public String getReserveNum3() {
		return reserveNum3;
	}
	public void setReserveNum3(String reserveNum3) {
		this.reserveNum3 = reserveNum3;
	}
	public String getReserveLine3() {
		return reserveLine3;
	}
	public void setReserveLine3(String reserveLine3) {
		this.reserveLine3 = reserveLine3;
	}
	public String getAirLine3() {
		return AirLine3;
	}
	public void setAirLine3(String airLine3) {
		AirLine3 = airLine3;
	}
	public String getStartCity3() {
		return startCity3;
	}
	public void setStartCity3(String startCity3) {
		this.startCity3 = startCity3;
	}
	public String getStartDate3() {
		return startDate3;
	}
	public void setStartDate3(String startDate3) {
		this.startDate3 = startDate3;
	}
	public String getStartTime3() {
		return startTime3;
	}
	public void setStartTime3(String startTime3) {
		this.startTime3 = startTime3;
	}
	public String getEndCity3() {
		return endCity3;
	}
	public void setEndCity3(String endCity3) {
		this.endCity3 = endCity3;
	}
	public String getEndDate3() {
		return endDate3;
	}
	public void setEndDate3(String endDate3) {
		this.endDate3 = endDate3;
	}
	public String getEndTime3() {
		return endTime3;
	}
	public void setEndTime3(String endTime3) {
		this.endTime3 = endTime3;
	}
	public int getAdult3() {
		return adult3;
	}
	public void setAdult3(int adult3) {
		this.adult3 = adult3;
	}
	public int getChild3() {
		return child3;
	}
	public void setChild3(int child3) {
		this.child3 = child3;
	}
	public int getToddle3() {
		return toddle3;
	}
	public void setToddle3(int toddle3) {
		this.toddle3 = toddle3;
	}
	public int getAdultTax3() {
		return adultTax3;
	}
	public void setAdultTax3(int adultTax3) {
		this.adultTax3 = adultTax3;
	}
	public int getChildTax3() {
		return childTax3;
	}
	public void setChildTax3(int childTax3) {
		this.childTax3 = childTax3;
	}
	public int getToddleTax3() {
		return toddleTax3;
	}
	public void setToddleTax3(int toddleTax3) {
		this.toddleTax3 = toddleTax3;
	}
	public String getId3() {
		return id3;
	}
	public void setId3(String id3) {
		this.id3 = id3;
	}
	public int getTax3() {
		return tax3;
	}
	public void setTax3(int tax3) {
		this.tax3 = tax3;
	}
	public int getMileage3() {
		return mileage3;
	}
	public void setMileage3(int mileage3) {
		this.mileage3 = mileage3;
	}
	private int toddle3;
	private int adultTax3;
	private int childTax3;
	private int toddleTax3;
	private String id3;
	private int tax3;
	private int mileage3;
	
	public String getReserveLine2() {
		return reserveLine2;
	}
	public void setReserveLine2(String reserveLine2) {
		this.reserveLine2 = reserveLine2;
	}
	public String getAirLine2() {
		return AirLine2;
	}
	public void setAirLine2(String airLine2) {
		AirLine2 = airLine2;
	}
	public String getId2() {
		return id2;
	}
	public void setId2(String id2) {
		this.id2 = id2;
	}
	public String getComReserveNum2() {
		return comReserveNum2;
	}
	public void setComReserveNum2(String comReserveNum2) {
		this.comReserveNum2 = comReserveNum2;
	}
	public String getReserveNum2() {
		return reserveNum2;
	}
	public void setReserveNum2(String reserveNum2) {
		this.reserveNum2 = reserveNum2;
	}
	public int getAdult2() {
		return adult2;
	}
	public void setAdult2(int adult2) {
		this.adult2 = adult2;
	}
	public int getChild2() {
		return child2;
	}
	public void setChild2(int child2) {
		this.child2 = child2;
	}
	public int getToddle2() {
		return toddle2;
	}
	public void setToddle2(int toddle2) {
		this.toddle2 = toddle2;
	}
	public int getAdultTax2() {
		return adultTax2;
	}
	public void setAdultTax2(int adultTax2) {
		this.adultTax2 = adultTax2;
	}
	public int getChildTax2() {
		return childTax2;
	}
	public void setChildTax2(int childTax2) {
		this.childTax2 = childTax2;
	}
	public int getToddleTax2() {
		return toddleTax2;
	}
	public void setToddleTax2(int toddleTax2) {
		this.toddleTax2 = toddleTax2;
	}
	public int getTax2() {
		return tax2;
	}
	public void setTax2(int tax2) {
		this.tax2 = tax2;
	}
	public int getMileage2() {
		return mileage2;
	}
	public void setMileage2(int mileage2) {
		this.mileage2 = mileage2;
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
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getStartCity2() {
		return startCity2;
	}
	public void setStartCity2(String startCity2) {
		this.startCity2 = startCity2;
	}
	public String getStartDate2() {
		return startDate2;
	}
	public void setStartDate2(String startDate2) {
		this.startDate2 = startDate2;
	}
	public String getStartTime2() {
		return startTime2;
	}
	public void setStartTime2(String startTime2) {
		this.startTime2 = startTime2;
	}
	public String getEndCity2() {
		return endCity2;
	}
	public void setEndCity2(String endCity2) {
		this.endCity2 = endCity2;
	}
	public String getEndDate2() {
		return endDate2;
	}
	public void setEndDate2(String endDate2) {
		this.endDate2 = endDate2;
	}
	public String getEndTime2() {
		return endTime2;
	}
	public void setEndTime2(String endTime2) {
		this.endTime2 = endTime2;
	}
	
	public String getComReserveNum() {
		return comReserveNum;
	}
	public void setComReserveNum(String comReserveNum) {
		this.comReserveNum = comReserveNum;
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
	public String getReserveNum() {
		return reserveNum;
	}
	public void setReserveNum(String reserveNum) {
		this.reserveNum = reserveNum;
	}
	public String getReserveLine() {
		return reserveLine;
	}
	public void setReserveLine(String reserveLine) {
		this.reserveLine = reserveLine;
	}
	public String getAirLine() {
		return AirLine;
	}
	public void setAirLine(String airLine) {
		AirLine = airLine;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
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
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getTax() {
		return tax;
	}
	public void setTax(int tax) {
		this.tax = tax;
	}
	public int getMileage() {
		return mileage;
	}
	public void setMileage(int mileage) {
		this.mileage = mileage;
	}
	
	
}
