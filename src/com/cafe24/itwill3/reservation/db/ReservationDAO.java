package com.cafe24.itwill3.reservation.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class ReservationDAO {
	Context initCtx = null;
	DataSource ds = null;
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	
	private Connection dbConn() throws Exception {
		initCtx = new InitialContext();
		ds =(DataSource)initCtx.lookup("java:comp/env/itwill3");
		conn = ds.getConnection();
		return conn;
	}

	public ArrayList<ReservationBean> getCityKey(String lea_city, String arr_city, String key) {
		ArrayList<ReservationBean> list = new ArrayList<ReservationBean>();
		try {
			conn = dbConn();
			sql = "SELECT city_key FROM city WHERE city_kor_n = ? or city_kor_n = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, lea_city);
			pstmt.setString(2, arr_city);
			rs = pstmt.executeQuery();
			String citykey = "";
			while(rs.next()) {
				citykey += rs.getString("city_key")+",";
			}
			if(key.equals("sin")) {
				list = getReservation(citykey.split(",")[0],citykey.split(",")[1]);
			} else {
				list = getReReservation(citykey.split(",")[0],citykey.split(",")[1]);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rs!=null)try{rs.close();}catch(Exception e){}
			if(pstmt!=null)try{pstmt.close();}catch(Exception e){}
			if(conn!=null)try{conn.close();}catch(Exception e){}
		}
		return list;
	}

	public ArrayList<ReservationBean> getReReservation(String acKey, String lcKey) {
		ArrayList<ReservationBean> list = new ArrayList<ReservationBean>();
		try {
			conn = dbConn();
			sql = "SELECT * FROM arrive_data WHERE ac_key = ? and lc_key = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, acKey);
			pstmt.setString(2, lcKey);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				ReservationBean reservationBean = new ReservationBean();
				reservationBean.setLcKey(rs.getString("lc_key"));
				reservationBean.setArKey(rs.getString("ac_key"));
				reservationBean.setLeaDay(rs.getString("lea_day"));
				reservationBean.setFlightNum(rs.getString("flight_num"));
				reservationBean.setLeaTime(rs.getString("lea_time"));
				reservationBean.setArrTime(rs.getString("arr_time"));
				reservationBean.setFlyModel(rs.getString("fly_model"));
				reservationBean.setCharge(rs.getInt("charge"));
				reservationBean.setSeats(rs.getInt("seats"));
				list.add(reservationBean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rs!=null)try{rs.close();}catch(Exception e){}
			if(pstmt!=null)try{pstmt.close();}catch(Exception e){}
			if(conn!=null)try{conn.close();}catch(Exception e){}
		}
		return list;
	}

	public ArrayList<ReservationBean> getReservation(String lcKey, String acKey) {
		ArrayList<ReservationBean> list = new ArrayList<ReservationBean>();
		try {
			conn = dbConn();
			sql = "SELECT * FROM leave_data WHERE lc_key = ? and ac_key = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, lcKey);
			pstmt.setString(2, acKey);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				ReservationBean reservationBean = new ReservationBean();
				reservationBean.setLcKey(rs.getString("lc_key"));
				reservationBean.setArKey(rs.getString("ac_key"));
				reservationBean.setLeaDay(rs.getString("lea_day"));
				reservationBean.setFlightNum(rs.getString("flight_num"));
				reservationBean.setLeaTime(rs.getString("lea_time"));
				reservationBean.setArrTime(rs.getString("arr_time"));
				reservationBean.setFlyModel(rs.getString("fly_model"));
				reservationBean.setCharge(rs.getInt("charge"));
				reservationBean.setSeats(rs.getInt("seats"));
				list.add(reservationBean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rs!=null)try{rs.close();}catch(Exception e){}
			if(pstmt!=null)try{pstmt.close();}catch(Exception e){}
			if(conn!=null)try{conn.close();}catch(Exception e){}
		}
		return list;
	}
}
