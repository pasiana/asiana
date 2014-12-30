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
	
	//편도예약완료
	public void sig_reserve(Reserva5_Bean reserva5_Bean){
		int num=0;
		try {
			conn = dbConn();
			//num구하기
			sql="select max(res_num) from Double_res";
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next()){
				num=rs.getInt(1)+1;//글이 있은 경우 최근글번호+1
			}else{
				num=1;//글이 없는 경우
			}
			sql="insert into Double_res(res_sig_dou,res_count,lea_city,arr_city,lea_time,arr_time,res_num,res_date ) values(?,?,?,?,?,?,?,?)";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, reserva5_Bean.getRes_sig_dou());
			pstmt.setInt(2, reserva5_Bean.getRes_count());
			pstmt.setString(3, reserva5_Bean.getLea_city());
			pstmt.setString(4, reserva5_Bean.getArr_city());
			pstmt.setString(5, reserva5_Bean.getLea_time());
			pstmt.setString(6, reserva5_Bean.getArr_time());
			pstmt.setInt(7, num);
			pstmt.setTimestamp(8, reserva5_Bean.getRes_date());
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
			if(conn!=null) try{conn.close();}catch(SQLException ex){}
		}
	}
	
	//왕복예약완료
	public void dou_reserve(Reserva5_Bean reserva5_Bean){
		int num=0;
		try {
			conn = dbConn();
			//num구하기
			sql="select max(res_num) from Double_res";
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next()){
				num=rs.getInt(1)+1;//글이 있은 경우 최근글번호+1
			}else{
				num=1;//글이 없는 경우
			}
			sql="insert into Double_res(res_sig_dou,res_count,lea_city,arr_city,lea_time,arr_time,b_lea_city,b_arr_city,b_lea_time,b_arr_time,res_num,res_date) values(?,?,?,?,?,?,?,?,?,?,?,?)";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, reserva5_Bean.getRes_sig_dou());
			pstmt.setInt(2, reserva5_Bean.getRes_count());
			pstmt.setString(3, reserva5_Bean.getLea_city());
			pstmt.setString(4, reserva5_Bean.getArr_city());
			pstmt.setString(5, reserva5_Bean.getLea_time());
			pstmt.setString(6, reserva5_Bean.getArr_time());
			pstmt.setString(7, reserva5_Bean.getB_lea_city());
			pstmt.setString(8, reserva5_Bean.getB_arr_city());
			pstmt.setString(9, reserva5_Bean.getB_lea_time());
			pstmt.setString(10, reserva5_Bean.getB_arr_time());
			pstmt.setInt(11, num);
			pstmt.setTimestamp(12, reserva5_Bean.getRes_date());
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
			if(conn!=null) try{conn.close();}catch(SQLException ex){}
		}
	}
}
