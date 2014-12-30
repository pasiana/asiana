<%@page import="com.cafe24.itwill3.schedual.db.SchedualBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	ArrayList list = (ArrayList)request.getAttribute("list");
	String sig = (String)request.getAttribute("sig");
	for(int i=0; i<list.size(); i++) {
		SchedualBean bean = (SchedualBean)list.get(i);
		out.println("<table border='1' width='98%'>");
		out.println("가는 항공편 광주 -> 김포<br>");
		out.println("<tr><td>편명</td><td>출발일</td><td>출발시간</td>");
		out.println("<td>도착시간</td><td>비행시간</td><td>기종</td></tr>");
		out.println("<tr>");
		out.println("<td>"+bean.getgFilightNum()+"</td>");
		out.println("<td>"+bean.getLeaDay()+"</td>");
		out.println("<td>"+bean.getLeaTime()+"</td>");
		out.println("<td>"+bean.getArrTime()+"</td>");
		out.println("<td>"+bean.getFlyTime()+"</td>");
		out.println("<td>"+bean.getFlyModel()+"</td>");
		out.println("</tr>");
		out.println("</table>");
		out.flush();
		if(sig.equals("왕복")) {
			out.println("<table border='1' width='98%'>");
			out.println("오는 항공편 김포 -> 광주<br>");
			out.println("<tr><td>편명</td><td>출발일</td><td>출발시간</td>");
			out.println("<td>도착시간</td><td>비행시간</td><td>기종</td></tr>");
			out.println("<tr>");
			out.println("<td>"+bean.getB_gFilightNum()+"</td>");
			out.println("<td>"+bean.getB_leaDay()+"</td>");
			out.println("<td>"+bean.getB_leaTime()+"</td>");
			out.println("<td>"+bean.getB_arrTime()+"</td>");
			out.println("<td>"+bean.getB_flyTime()+"</td>");
			out.println("<td>"+bean.getB_flyModel()+"</td>");
			out.println("</tr>");
			out.println("</table>");
			out.flush();
		}
	}
%>
</body>
</html>