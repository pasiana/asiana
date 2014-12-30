<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>예매5</title>
<link type="text/css" rel="stylesheet" href="./asia_sub/css/reserve5.css">
<script src="./asia_sub/js/jquery-1.11.1.js"></script>

<style type="text/css">
</style>
</head>
<%
String member_id = (String)session.getAttribute("member_id");
if(member_id == null) {
	response.sendRedirect("./AsianaLogin.me");
}
%>
<body>
	<header>
		<jsp:include page="../asiana_inc/header.jsp" />
	</header>
	<!-- main_container -->
	<section id="main_container">
		<div class="locationBox">
			<div class="location">
				<ul>
					<li><a href="#">HOME</a> <span>&gt;</span></li>
					<li><a href="#">예매</a> <span>&gt;</span></li>
					<li>국내선 예매</li>
				</ul>
			</div>
		</div>

		<div id="containerBox">
			<div id="skipct">
				<h3>국내선 예매</h3>
				<ul class="rv_stepBox">
					<li class="step01_end">1. 여정 선택</li>
					<li class="step02_end">2. 운임/항공편 선택</li>
					<li class="step03_end">3. 여정/탑승자 확인</li>
					<li class="step04_end">4. 운임확인/결제</li>
					<li class="step05_on">5. 예약완료</li>
				</ul>

				<p class="helpOp">
					<span class="btnType06"><a href="#">예약도움말</a></span>
				</p>

				<div class="reserve_img">
					<img src="./asia_sub/img/reserve.png" style="display: block;">
				</div>
				
				<ul class="btnBoxType01">
					<li class="right"><span class="Bbtn_TType01_1"><a href="./ReservationList.me">완료</a></span></li>
				</ul>
			</div>
			<!-- skipct끝  -->
		</div>
		<!-- containerBox  -->
	</section>
	<footer>
		<jsp:include page="../asiana_inc/footer.jsp" />
	</footer>
	<!-- //main_container -->
</body>
</html>