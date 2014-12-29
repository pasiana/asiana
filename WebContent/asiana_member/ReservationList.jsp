<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="asiana_member/css/reset.css" type="text/css" rel="stylesheet">
<link href="asiana_member/css/ReservationList.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="asiana_member/js/jquery-1.11.1.js"></script>
<title>Insert title here</title>
</head>

<body>
<header>
	<jsp:include page="../asiana_inc/header.jsp" />
</header>
<div class="locationBox">
<div class="locationInner">
<ul>
<li>
<a href="#">HOME</a>
<span>></span>
</li>
<li> 
<a href="MyAsiana.jsp">마이 아시아나</a>
<span>></span>
</li>
<li> 
<a href="#">예약</a>
<span>></span>
</li>
<li> 
항공권 예약 현황
</li>
</ul>
</div>
</div>

<div class="myasianaBox subMain">
<div class="container">

<!-- 메뉴 -->
<jsp:include page="MyAsanaMenu.jsp" />

<!-- 본문 -->
<div id="skipCt">
<div id="containerBody">
<h3 class="h3_type01">항공권 예약 현황</h3>
<div class="inquiryTextBox">
<p class="inquiryTitle">
<img src="asiana_member/images/text_inquiry.gif">
</p>

<ul>
<li>
2013년 11월 17일 차세대 여객 시스템 도입 이후 11월 16일이전 생성된 예약 및 항공권은<br>
홈페이지(모바일)에서 구매/변경/취소/사전좌석예약이 불가합니다.<br>
항공권 및 예약의 구매/취소/사전좌석 예약은 유선을 통해 접수하실 수 있습니다.
</li>
<li>
아시아나항공 홈페이지 및 모바일에서 로그인 후 구매하신 예약
</li>
<li>
홈페이지/모바일에서 2명 이상 동시에 예약/발권 완료하여 동일한 예약번호로 예약된 경우 일부 인원 만 변경 및 환불 불가합니다.<br>
재구매 후 기존 항공권은 홈페이지에서 환불하여 주시기 바랍니다.
</li>
</ul>

<div class="LineBox">
<div class="LineInner">
<div class="LineBottom">

<h4 class="h4_type01">
<img src="asiana_member/images/text_myReservation.jpg">
</h4>

<p class="reCntText bgText">
<strong>최근 6개월 중에 예약하신 내역이 없습니다.</strong>
</p>

</div>
</div>

<div class="LineInner bgType01">
<div class="LineBottom bgBottomType">
<p class="rangeText" style="border-bottom: 1px solid #5c5f66;">
첫 여정의 출발 일시가 빠른 순서로 정렬됩니다.
</p>

<table class="tableType_1">
<tr>
<th rowspan="2">편도/왕복</th>
<th rowspan="2">예약번호</th>
<th rowspan="2">예약일</th>
<th colspan="4">여정</th>
</tr>

<tr>
<th>출발지</th>
<th>도착지</th>
<th>출발 일시</th>
<th>도착 일시</th>
</tr>
</table>
</div>
</div>

</div>
<!-- LineBox 끝 -->

<ul class="SnoticeList">
<li>
국내선 항공권 예약 변경은 항공편 출발 30분전까지 가능합니다.<br>
단, 마일리지항공권은 국내선 출발 50분전, 국제선 출발 2시간전까지 가능합니다.
</li>

<li>
구매한 항공권에 대한 예약 변경 및 환불 시 운임규정에 따른 예약 변경 수수료 (재 발행 수수료) 및 환불 위약금 또는 환불 수수료가 징수될 수<br>있습니다.
</li>

<li>
구매 이후 항공권의 지불 수단 변경은 불가합니다.
</li>

<li>
취소된 예약 확인 후에는 예약번호가 온라인 예약 목록에서 삭제되오니 이용에 참고하시기 바랍니다.
</li>
</ul>
</div>
</div>
</div>

</div>
</div>
<footer>
	<jsp:include page="../asiana_inc/footer.jsp" />
</footer>
</body>
</html>