<%@page import="com.cafe24.itwill3.charge.db.ChargeBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ChargeBean chargeBean = (ChargeBean)request.getAttribute("chargeBean");
	out.println(chargeBean.getCharge());
	out.flush();
%>