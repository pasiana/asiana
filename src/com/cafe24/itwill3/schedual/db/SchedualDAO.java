package com.cafe24.itwill3.schedual.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.cafe24.itwill3.charge.db.ChargeBean;

public class SchedualDAO {
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
	
	public List<SchedualBean> getSchedual(String lea_city, String arr_city, String lea_time,
			String arr_time) {
		List<SchedualBean> list = new ArrayList<SchedualBean>();
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
			
			sql = "SELECT * FROM Sch_dou WHERE g_city_key = ? and b_city_key = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, citykey.split(",")[0]);
			pstmt.setString(2, citykey.split(",")[1]);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				SchedualBean bean = new SchedualBean();
				bean.setgFilightNum(rs.getString("g_filight_num"));
				bean.setLeaDay(rs.getString("lea_day"));
				bean.setLeaTime(rs.getString("lea_time"));
				bean.setArrTime(rs.getString("arr_time"));
				bean.setFlyTime(rs.getString("fly_time"));
				bean.setFlyModel(rs.getString("fly_model"));
				bean.setB_gCityKey(rs.getString("b_g_city_key")); 
				bean.setB_bCityKey(rs.getString("b_b_city_key"));
				bean.setB_gFilightNum(rs.getString("b_g_filight_num"));
				bean.setB_leaDay(rs.getString("b_lea_day"));
				bean.setB_leaTime(rs.getString("b_lea_time"));
				bean.setB_arrTime(rs.getString("b_arr_time"));
				bean.setB_flyTime(rs.getString("b_fly_time"));
				bean.setB_flyModel(rs.getString("b_fly_model"));
				list.add(bean);
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
