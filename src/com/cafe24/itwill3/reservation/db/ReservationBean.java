package com.cafe24.itwill3.reservation.db;

public class ReservationBean {
	private String lcKey;
	private String acKey;
	private String leaDay;
	private String arrDay;
	private String flightNum;
	private String leaTime;
	private String arrTime;
	private String flyModel;
	private int charge;
	private int seats;
	public String getArrDay() {
		return arrDay;
	}
	public void setArrDay(String arrDay) {
		this.arrDay = arrDay;
	}
	public String getLcKey() {
		return lcKey;
	}
	public void setLcKey(String lcKey) {
		this.lcKey = lcKey;
	}
	public String getAcKey() {
		return acKey;
	}
	public void setAcKey(String acKey) {
		this.acKey = acKey;
	}
	public String getLeaDay() {
		return leaDay;
	}
	public void setLeaDay(String leaDay) {
		this.leaDay = leaDay;
	}
	public String getFlightNum() {
		return flightNum;
	}
	public void setFlightNum(String flightNum) {
		this.flightNum = flightNum;
	}
	public String getLeaTime() {
		return leaTime;
	}
	public void setLeaTime(String leaTime) {
		this.leaTime = leaTime;
	}
	public String getArrTime() {
		return arrTime;
	}
	public void setArrTime(String arrTime) {
		this.arrTime = arrTime;
	}
	public String getFlyModel() {
		return flyModel;
	}
	public void setFlyModel(String flyModel) {
		this.flyModel = flyModel;
	}
	public int getCharge() {
		return charge;
	}
	public void setCharge(int charge) {
		this.charge = charge;
	}
	public int getSeats() {
		return seats;
	}
	public void setSeats(int seats) {
		this.seats = seats;
	}
	
}
