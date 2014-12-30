package com.cafe24.itwill3.schedual.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
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
	
}
