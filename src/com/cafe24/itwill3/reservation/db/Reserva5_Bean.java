package com.cafe24.itwill3.reservation.db;

import java.sql.Timestamp;

public class Reserva5_Bean {
	private String res_sig_dou;
	private int res_count;
	private String lea_city;
	private String arr_city;
	private String lea_time;
	private String arr_time;
	private String b_lea_city;
	private String b_arr_city;
	private String b_lea_time;
	private String b_arr_time;
 	private Timestamp res_date;
 			
	public Timestamp getRes_date() {
		return res_date;
	}
	public void setRes_date(Timestamp res_date) {
		this.res_date = res_date;
	}
	public String getRes_sig_dou() {
		return res_sig_dou;
	}
	public void setRes_sig_dou(String res_sig_dou) {
		this.res_sig_dou = res_sig_dou;
	}
	public int getRes_count() {
		return res_count;
	}
	public void setRes_count(int res_count) {
		this.res_count = res_count;
	}
	public String getLea_city() {
		return lea_city;
	}
	public void setLea_city(String lea_city) {
		this.lea_city = lea_city;
	}
	public String getArr_city() {
		return arr_city;
	}
	public void setArr_city(String arr_city) {
		this.arr_city = arr_city;
	}
	public String getLea_time() {
		return lea_time;
	}
	public void setLea_time(String lea_time) {
		this.lea_time = lea_time;
	}
	public String getArr_time() {
		return arr_time;
	}
	public void setArr_time(String arr_time) {
		this.arr_time = arr_time;
	}
	public String getB_lea_city() {
		return b_lea_city;
	}
	public void setB_lea_city(String b_lea_city) {
		this.b_lea_city = b_lea_city;
	}
	public String getB_arr_city() {
		return b_arr_city;
	}
	public void setB_arr_city(String b_arr_city) {
		this.b_arr_city = b_arr_city;
	}
	public String getB_lea_time() {
		return b_lea_time;
	}
	public void setB_lea_time(String b_lea_time) {
		this.b_lea_time = b_lea_time;
	}
	public String getB_arr_time() {
		return b_arr_time;
	}
	public void setB_arr_time(String b_arr_time) {
		this.b_arr_time = b_arr_time;
	}
	
	
}
