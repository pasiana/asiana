<%@page import="com.cafe24.itwill3.reservation.db.Reserva5_Bean"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>예약목록</title>
<link type="text/css" rel="stylesheet" href="asia_admin/css/bookonline.css">
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
			$('.top2').addClass("menuchange");
			$('.top2').parent().children('ul').css('display', 'block');
});
</script>
<style type="text/css">
	.location ul li:nth-child(4) {
		color: #999;
	}
	.memberlist{
		width: 711px;
		text-align: center;
		border-collapse: collapse;
	}
	
	.memberlist tr:nth-child(1) td{
		font-size: 1.2em;
		font-weight: bold;
		background: url(asia_admin/img/t_back.jpg) repeat-x center center;
		padding: 7px 7px 9px 7px;
		color: white;
	}
	
	.memberlist tr:nth-child(1) .name{
		width: 80px;
		border-top-left-radius:5px;
		border-bottom-left-radius:5px;
	}
	
	.memberlist tr:nth-child(1) .day{
		width: 130px;
		border-top-right-radius:5px;
		border-bottom-right-radius:5px;
	}

	.memberlist tr td{
		padding: 8px 0;
		border-bottom: 1px dotted #999;
	}
</style>
</head>
<%
List MemberResList=(List)request.getAttribute("MemberResList");
SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
String Go="";
String arrive="";
%>
<body>
	<header>
		<jsp:include page="../asiana_inc/header.jsp" />
	</header>
	<!-- 기내에서 -->
	<section id="main_container">
		<div class="locationBox">
			<div class="location">
				<ul>
					<li><a href="#none">HOME</a> <span>&gt;</span></li>
					<li><a href="#none">관리자 목록</a> <span>&gt;</span></li>
					<li>예약 목록</li>
				</ul>
			</div>
		</div>

		<div id="containerBox">
			<div id="container">
				<!-- 사이드 메뉴 -->
				<jsp:include page="AdminMenu.jsp" />
				<!-- 사이드 메뉴 끝 -->

				<div id="skipCt">
					<!-- section -->
					<section id="containerBody">
						<h3 class="h3_type01">예약목록</h3>

						<div class="service_contents">
							<table class="memberlist">
								<tr>
									<td class="id">편도/왕복</td>
									<td class="id">아이디</td>
									<td class="air1">가는 항공편(시간)</td>
									<td class="air2">오는 항공편(시간)</td>
									<td class="day">예약날짜</td>
								</tr>
								
								<!-- 반복해야할곳 -->
								<%
								for(int i=0;i<MemberResList.size();i++){
									Reserva5_Bean bean=(Reserva5_Bean)MemberResList.get(i);
									Go=bean.getLea_city()+"("+bean.getLea_time()+")";
									arrive=bean.getArr_city()+"("+bean.getArr_time()+")";
									%>
									<tr>
									<td><%=bean.getRes_sig_dou() %></td>
									<td><%=bean.getMember_id() %></td>
									<td><%=Go %></td>
									<td><%=arrive %></td>
									<td><%=sdf.format(bean.getRes_date()) %></td>
									</tr>
									<%
									if(bean.getRes_sig_dou().equals("왕복")){
										Go=bean.getB_lea_city()+"("+bean.getB_lea_time()+")";
										arrive=bean.getB_arr_city()+"("+bean.getB_arr_time()+")";
										%>
										<tr>
										<td></td>
										<td></td>
										<td><%=Go %></td>
										<td><%=arrive %></td>
										<td><%=sdf.format(bean.getRes_date()) %></td>
										</tr>
										<%
									}
								}
								%>
								<!-- 반복해야할곳 -->
								
							</table>
						</div>

					</section>
					<!-- section 끝-->
				</div>
			</div>
		</div>
	</section>
	<footer>
		<jsp:include page="../asiana_inc/footer.jsp" />
	</footer>
	<!-- 기내에서 끝  -->
</body>
</html>