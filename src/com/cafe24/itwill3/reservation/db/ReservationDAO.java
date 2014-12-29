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

import org.apache.tomcat.jni.OS;

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
	
	public List<ReservationBean> leave(String lea_city, String arr_city, String lea_time) {
		
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
				int leaTimeInt = Integer.parseInt(lea_time.split("/")[1])+6;
				String leaTimeString = String.valueOf("0"+leaTimeInt);
				String leaTimeReplace = "01/" + lea_time.substring(3,5).replace(lea_time.split("/")[1],leaTimeString);
				sql = "SELECT * FROM leave_data WHERE lc_key = ? and ac_key = ? and lea_day between ? and ? ";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, citykey.split(",")[0]);
				pstmt.setString(2, citykey.split(",")[1]);
				pstmt.setString(3, lea_time);
				pstmt.setString(4, leaTimeReplace);
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
	
	public List<ReservationBean> leaDay(String lea_city, String arr_city, String lea_time){
		
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
	
	//왕복
	public List<ReservationBean> arrive(String lea_city, String arr_city) {
		
		List<ReservationBean> arrlist = new ArrayList<ReservationBean>();
		
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
				
				sql = "SELECT * FROM arrive_data WHERE lc_key = ? and ac_key = ? ";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, citykey.split(",")[1]);
				pstmt.setString(2, citykey.split(",")[0]);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					ReservationBean rBean = new ReservationBean();
					rBean.setLcKey(rs.getString("lc_key"));
					rBean.setAcKey(rs.getString("ac_key"));
					rBean.setArrDay(rs.getString("arr_day"));
					rBean.setFlightNum(rs.getString("flight_num"));
					rBean.setLeaTime(rs.getString("lea_time"));
					rBean.setArrTime(rs.getString("arr_time"));
					rBean.setFlyModel(rs.getString("fly_model"));
					rBean.setCharge(rs.getInt("charge"));
					rBean.setSeats(rs.getInt("seats"));
					
					arrlist.add(rBean);
				}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
			if(conn!=null) try{conn.close();}catch(SQLException ex){}
		}
		return arrlist;
	}
	
	public List<ReservationBean> arrDay(String lea_city, String arr_city){
		
		List<ReservationBean> arrDaylist = new ArrayList<ReservationBean>();
		
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
			sql = "SELECT * FROM arrive_data WHERE lc_key = ? and ac_key = ? group by arr_day";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, citykey.split(",")[1]);
			pstmt.setString(2, citykey.split(",")[0]);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				ReservationBean rBean = new ReservationBean();
				rBean.setLcKey(rs.getString("lc_key"));
				rBean.setAcKey(rs.getString("ac_key"));
				rBean.setArrDay(rs.getString("arr_day"));
				
				arrDaylist.add(rBean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
			if(conn!=null) try{conn.close();}catch(SQLException ex){}
		}
		return arrDaylist;
	}
}
