package com.cafe24.itwill3.reservation.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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

	public void getCityKey(String lea_city, String arr_city) {
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
			getReservation(citykey.split(",")[0],citykey.split(",")[1]);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rs!=null)try{rs.close();}catch(Exception e){}
			if(pstmt!=null)try{pstmt.close();}catch(Exception e){}
			if(conn!=null)try{conn.close();}catch(Exception e){}
		}
	}

	public void getReservation(String lcKey, String arKey) {
		try {
			conn = dbConn();
			sql = "SELECT * FROM leave_data WHERE lc_key = ? and ar_key = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, lcKey);
			pstmt.setString(2, arKey);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rs!=null)try{rs.close();}catch(Exception e){}
			if(pstmt!=null)try{pstmt.close();}catch(Exception e){}
			if(conn!=null)try{conn.close();}catch(Exception e){}
		}
	}
}
