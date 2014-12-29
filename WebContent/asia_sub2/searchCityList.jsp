<%@page import="com.cafe24.itwill3.charge.db.ChargeBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList list = (ArrayList)request.getAttribute("list");
	for(int i=0; i<list.size(); i++) {
		ChargeBean chargeBean = (ChargeBean)list.get(i);
		out.println("<option value="+chargeBean.getArrCity()+">"+chargeBean.getArrCity()+"</option>");
		out.flush();
	}
%>