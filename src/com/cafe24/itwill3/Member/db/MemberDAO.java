package com.cafe24.itwill3.Member.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {
	Connection con=null;
	PreparedStatement pstmt=null;
	String sql="";
	ResultSet rs=null;
	
	//DB 연결
	public Connection getConnection() throws Exception{
		Context init=new InitialContext();
		DataSource ds=(DataSource)init.lookup("java:comp/env/itwill3");
		con=ds.getConnection();
		return con;
	}
	
	//아이디 중복 검사
	public int idCheck(String id){
		int check=0;
		try {
			con=getConnection();
			sql="select member_id from Member where member_id=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			if(rs.next()==false && id.length()>=4){
				check=1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
			if(con!=null) try{con.close();}catch(SQLException ex){}
		}
		return check;
	}
	
	//회원가입
	public void insertMember(MemberBean memberbean){
		int num=0;
		try {
			con=getConnection();
			sql="select max(member_num) from Member";
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			if(rs.next()){
				num=rs.getInt(1)+1;
			}else{
				num=1;
			}
			sql="insert into Member values(?,lpad(?,8,0),?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, memberbean.getMember_id());
			pstmt.setString(2, Integer.toString(num));
			pstmt.setString(3, memberbean.getPasswd());
			pstmt.setString(4, memberbean.getKrname());
			pstmt.setString(5, memberbean.getLast_name());
			pstmt.setString(6, memberbean.getFirst_name());
			pstmt.setString(7, memberbean.getBirthday());
			pstmt.setString(8, memberbean.getGender());
			pstmt.setString(9, memberbean.getPost_code());
			pstmt.setString(10, memberbean.getAddress());
			pstmt.setString(11, memberbean.getTelephone());
			pstmt.setString(12, memberbean.getMobile());
			pstmt.setString(13, memberbean.getEmail());
			pstmt.setString(14, memberbean.getShare_info());
			pstmt.setTimestamp(15, memberbean.getReg_date());
			pstmt.setInt(16, 0);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
			if(con!=null) try{con.close();}catch(SQLException ex){}
		}
	}
	
	//로그인 & 비밀번호 확인
	public int MemberLogin(int loginType, String member_id, String passwd){
		int check=0;
		try {
			con=getConnection();
			StringBuffer sql=new StringBuffer();
			sql.append("select passwd from Member");
			
			if(loginType==0){
				sql.append(" where member_id=?");
			}else{
				sql.append(" where member_num=?");
			}
			
			pstmt=con.prepareStatement(sql.toString());
			pstmt.setString(1, member_id);
			rs=pstmt.executeQuery();
			if(rs.next()){
				if(passwd.equals(rs.getString("passwd"))){
					check=1;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
			if(con!=null) try{con.close();}catch(SQLException ex){}
		}
		return check;
	}
	
	//회원번호로 회원아이디 찾기
	public String getMember_id(String member_id){
		String id="";
		try {
			con=getConnection();
			sql="select member_id from Member where member_num=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, member_id);
			rs=pstmt.executeQuery();
			
			if(rs.next()){
				id=rs.getString("member_id");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
			if(con!=null) try{con.close();}catch(SQLException ex){}
		}
		return id;
	}
	
	//회원정보 가져오기
	public MemberBean Member_Info(String member_id){
		MemberBean memberbean=null;
		try {
			con=getConnection();
			sql="select * from Member where member_id=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, member_id);
			rs=pstmt.executeQuery();
			
			if(rs.next()){
				memberbean=new MemberBean();
				memberbean.setMember_id(member_id);
				memberbean.setMember_num(rs.getString("member_num"));
				memberbean.setPasswd(rs.getString("passwd"));
				memberbean.setKrname(rs.getString("Krname"));
				memberbean.setLast_name(rs.getString("last_name"));
				memberbean.setFirst_name(rs.getString("first_name"));
				memberbean.setBirthday(rs.getString("birthday"));
				memberbean.setGender(rs.getString("gender"));
				memberbean.setPost_code(rs.getString("post_code"));
				memberbean.setAddress(rs.getString("address"));
				memberbean.setTelephone(rs.getString("telephone"));
				memberbean.setMobile(rs.getString("mobile"));
				memberbean.setEmail(rs.getString("email"));
				memberbean.setShare_info(rs.getString("share_info"));
				memberbean.setReg_date(rs.getTimestamp("reg_date"));
				memberbean.setMileage(rs.getInt("mileage"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
			if(con!=null) try{con.close();}catch(SQLException ex){}
		}
		return memberbean;
	}
	
	//회원정보 변경
	public void UpdateMember(MemberBean memberbean){
		try {
			con=getConnection();
			sql="update Member set post_code=?, address=?, telephone=?, mobile=?, email=?, share_info=? where member_id=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, memberbean.getPost_code());
			pstmt.setString(2, memberbean.getAddress());
			pstmt.setString(3, memberbean.getTelephone());
			pstmt.setString(4, memberbean.getMobile());
			pstmt.setString(5, memberbean.getEmail());
			pstmt.setString(6, memberbean.getShare_info());
			pstmt.setString(7, memberbean.getMember_id());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
			if(con!=null) try{con.close();}catch(SQLException ex){}
		}
	}
	
	//비밀번호 변경
	public void UpdatePassword(String member_id, String passwd){
		try {
			con=getConnection();
			sql="update Member set passwd=? where member_id=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, passwd);
			pstmt.setString(2, member_id);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
			if(con!=null) try{con.close();}catch(SQLException ex){}
		}
	}
	
	//회원탈퇴
	public void DeleteMember(String member_id){
		try {
			con=getConnection();
			sql="delete from Member where member_id=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, member_id);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
			if(con!=null) try{con.close();}catch(SQLException ex){}
		}
	}
	
	//ID 찾기
	public MemberBean SearchID(String Krname, String birthday, String email){
		MemberBean memberbean=null;
		try {
			con=getConnection();
			sql="select member_id, member_num, Krname from Member where Krname=? and birthday=? and email=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, Krname);
			pstmt.setString(2, birthday);
			pstmt.setString(3, email);
			rs=pstmt.executeQuery();
			
			if(rs.next()){
				memberbean=new MemberBean();
				memberbean.setKrname(rs.getString("Krname"));
				memberbean.setMember_num(rs.getString("member_num"));
				memberbean.setMember_id(rs.getString("member_id"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
			if(con!=null) try{con.close();}catch(SQLException ex){}
		}
		return memberbean;
	}
	
	//비밀번호 찾기(임시 비밀번호)
	public int SearchPW(String member_id, String passwd, String Krname, String birthday, String email){
		int check=0;
		try {
			con=getConnection();
			sql="select member_id from Member where member_id=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, member_id);
			rs=pstmt.executeQuery();
			
			if(rs.next()){
				sql="update Member set passwd=? where member_id=? and Krname=? and birthday=? and email=?";
				pstmt=con.prepareStatement(sql);
				pstmt.setString(1, passwd);
				pstmt.setString(2, member_id);
				pstmt.setString(3, Krname);
				pstmt.setString(4, birthday);
				pstmt.setString(5, email);
				check=pstmt.executeUpdate();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
			if(con!=null) try{con.close();}catch(SQLException ex){}
		}
		return check;
	}
	
	//회원목록
	public List MemberList(){
		List memberlist=new ArrayList();
		try {
			con=getConnection();
			sql="select * from Member order by CAST(member_num AS UNSIGNED) desc";
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			while(rs.next()){
				MemberBean memberbean=new MemberBean();
				memberbean.setMember_id(rs.getString("member_id"));
				memberbean.setMember_num(rs.getString("member_num"));
				memberbean.setKrname(rs.getString("Krname"));
				memberbean.setReg_date(rs.getTimestamp("reg_date"));
				memberlist.add(memberbean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
			if(con!=null) try{con.close();}catch(SQLException ex){}
		}
		return memberlist;
	}
	
	//회원목록 검색
	public List MemberSearch(String list, String content){
		List memberlist=new ArrayList();
		try {
			con=getConnection();
			
			StringBuffer sql=new StringBuffer();
			sql.append("select * from Member");
			
			if(list.equals("member_num")){
				sql.append(" where member_num like ? order by CAST(member_num AS UNSIGNED) desc");
			}else if(list.equals("member_id")){
				sql.append(" where member_id like ? order by CAST(member_num AS UNSIGNED) desc");
			}else{
				sql.append(" where Krname like ? order by CAST(member_num AS UNSIGNED) desc");
			}
			
			pstmt=con.prepareStatement(sql.toString());
			pstmt.setString(1, "%"+content+"%");
			rs=pstmt.executeQuery();
			
			while(rs.next()){
				MemberBean memberbean=new MemberBean();
				memberbean.setMember_id(rs.getString("member_id"));
				memberbean.setMember_num(rs.getString("member_num"));
				memberbean.setKrname(rs.getString("Krname"));
				memberbean.setReg_date(rs.getTimestamp("reg_date"));
				memberlist.add(memberbean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
			if(con!=null) try{con.close();}catch(SQLException ex){}
		}
		return memberlist;
	}
}