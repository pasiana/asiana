package com.cafe24.itwill3.charge.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


public class ChargeDAO {
	Connection conn = null;
	Context initCtx = null;
	DataSource ds = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	private Connection dbConn() throws Exception {
		initCtx = new InitialContext();
		ds = (DataSource)initCtx.lookup("java:comp/env/itwill3");
		conn = ds.getConnection();
		return conn;
	}
	public ArrayList<ChargeBean> searchCity(String lea_city) {
		ArrayList<ChargeBean> list = new ArrayList<ChargeBean>();
		try {
			conn = dbConn();
			sql = "SELECT arr_city FROM charge WHERE lea_city = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, lea_city);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				ChargeBean chargeBean = new ChargeBean();
				chargeBean.setArrCity(rs.getString("arr_city"));
				list.add(chargeBean);
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
	public ChargeBean searchCharge(String lea_city, String arr_city) {
		ChargeBean chargeBean = new ChargeBean();
		try {
			conn = dbConn();
			sql = "SELECT charge FROM charge WHERE lea_city = ? and arr_city = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, lea_city);
			pstmt.setString(2, arr_city);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				chargeBean.setCharge(Integer.parseInt(rs.getString("charge")));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rs!=null)try{rs.close();}catch(Exception e){}
			if(pstmt!=null)try{pstmt.close();}catch(Exception e){}
			if(conn!=null)try{conn.close();}catch(Exception e){}
		}
		return chargeBean;
	}
	
	
}
