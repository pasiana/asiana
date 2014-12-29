<%@page import="com.cafe24.itwill3.Member.db.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int loginType=Integer.parseInt(request.getParameter("loginType"));
String member_id=request.getParameter("member_id");
String passwd=request.getParameter("passwd");

MemberDAO memberdao=new MemberDAO();
int check=memberdao.MemberLogin(loginType, member_id, passwd);
%>

<%=check%>