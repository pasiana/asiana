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
}
