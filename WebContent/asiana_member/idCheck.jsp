<%@page import="com.cafe24.itwill3.Member.db.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id=request.getParameter("id");
MemberDAO memberdao=new MemberDAO();
int check=memberdao.idCheck(id);
%>

<%=check%>