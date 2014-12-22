package com.cafe24.itwill3.reservation.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
	
	public List<ReservationBean> leave(String lea_city, String arr_city) {
		
		List<ReservationBean> leavelist = new ArrayList<ReservationBean>();
		
		try {
				conn = dbConn();
				sql = "SELECT city_key FROM City WHERE city_kor_n = ? or city_kor_n = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, lea_city);
				pstmt.setString(2, arr_city);
				rs = pstmt.executeQuery();
				String citykey = "";
				while(rs.next()) {
					citykey += rs.getString("city_key")+",";
				}
				
				sql = "SELECT * FROM leave_data WHERE lc_key = ? and ac_key = ? ";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, citykey.split(",")[0]);
				pstmt.setString(2, citykey.split(",")[1]);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					ReservationBean rBean = new ReservationBean();
					rBean.setLcKey(rs.getString("lc_key"));
					rBean.setAcKey(rs.getString("ac_key"));
					rBean.setLeaDay(rs.getString("lea_day"));
					rBean.setFlightNum(rs.getString("flight_num"));
					rBean.setLeaTime(rs.getString("lea_time"));
					rBean.setArrTime(rs.getString("arr_time"));
					rBean.setFlyModel(rs.getString("fly_model"));
					rBean.setCharge(rs.getInt("charge"));
					rBean.setSeats(rs.getInt("seats"));
					
					leavelist.add(rBean);
				}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
			if(conn!=null) try{conn.close();}catch(SQLException ex){}
		}
		return leavelist;
	}
	
	public List<ReservationBean> leaDay(String lea_city, String arr_city){
		
		List<ReservationBean> leaDaylist = new ArrayList<ReservationBean>();
		
		try {
			conn = dbConn();
			sql = "SELECT city_key FROM City WHERE city_kor_n = ? or city_kor_n = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, lea_city);
			pstmt.setString(2, arr_city);
			rs = pstmt.executeQuery();
			String citykey = "";
			while(rs.next()) {
				citykey += rs.getString("city_key")+",";
			}
			sql = "SELECT * FROM leave_data WHERE lc_key = ? and ac_key = ? group by lea_day";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, citykey.split(",")[0]);
			pstmt.setString(2, citykey.split(",")[1]);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				ReservationBean rBean = new ReservationBean();
				rBean.setLcKey(rs.getString("lc_key"));
				rBean.setAcKey(rs.getString("ac_key"));
				rBean.setLeaDay(rs.getString("lea_day"));
				
				leaDaylist.add(rBean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
			if(conn!=null) try{conn.close();}catch(SQLException ex){}
		}
		return leaDaylist;
	}
}
