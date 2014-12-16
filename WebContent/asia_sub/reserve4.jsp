<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>예매4</title>
<link type="text/css" rel="stylesheet" href="css/reserve4.css">
<script src="js/jquery-1.11.1.js"></script>
<style type="text/css">
.selectITbox3 {
	background: url("img/bg_selectItineraryTop2.gif") no-repeat 0 0;
	padding: 5px 0 0 0;
	margin: 0 0 10px 0;
}

.selectITbox3 .selectITinner3 {
	background: #fff url("img/bg_selectItineraryBottom.gif") no-repeat 0
		bottom;
	padding: 0 0 16px 0;
	height: 392px;
}

.selectITinner3 li.liType01.totalIntro {
	width: 287px;
	padding-left: 20px;
	background: none;
}

.selectITinner3 li.liType01 {
	float: left;
	font-size: 11px;
	padding: 14px 0 0 0;
	font-family: '돋움';
}

.selectITbox3 .selectITinner3 .sTitle {
	color: #581cb4;
}

.selectITbox3 .selectITinner3 li.liType01.totalIntro .tBoxD {
	margin: 9px 0 0 -1px;
	line-height: 19px;
}

.selectITbox3 .selectITinner3 li.liType01.totalIntro .tBoxD .start,.selectITbox3 .selectITinner3 li.liType01.totalIntro .tBoxD .end
	{
	float: left;
	min-width: 86px;
	font-size: 12px;
}

.selectITbox3 .selectITinner3 li.liType01.totalIntro .tBoxD strong {
	font-size: 16px;
	font-family: '돋움';
}

.selectITbox3 .selectITinner3 li.liType01.totalIntro .tBoxD .end.oneWay
	{
	background: url("img/bg_arrow5_1.gif") no-repeat 0 3px;
}

.selectITbox3 .selectITinner3 li.liType01.totalIntro .tBoxD .end {
	padding: 0 0 0 33px;
}

.selectITbox3 .selectITinner3 li.liType01.selectStart {
	width: 144px;
	padding-left: 6px;
}

.selectITbox3 .selectITinner3 li.liType01 {
	float: left;
	background: url("img/bg_line2.gif") no-repeat 0 0;
	font-size: 11px;
	font-family: '돋움';
}

.selectITbox3 .selectITinner3 .pType01 {
	line-height: 18px;
	margin: 6px 0 0 0;
	font-size: 12px;
	font-family: "굴림";
}

.passengerFareBox {
	padding: 10px 19px 0 19px;
}

.passengerFareBox .h4_type01 {
	font-size: 13px;
	color: #581cb4;
	border-top: 1px solid #5c5f66;
	border-bottom: 1px solid #5c5f66;
	line-height: 32px;
}

.passengerFareBox .memberBox {
	position: relative;
	background: url("img/bg_tableBox2.gif") repeat-y 0 0;
	padding: 0 0 0 51px;
	border-bottom: 1px solid #adafb2;
	width: 636px;
	height: 193px;
}

.passengerFareBox .memberBox.DmemberBox .mName {
	width: 182px;
}

.passengerFareBox .memberBox .mName {
	float: left;
	padding: 10px 0 0 20px;
}

.passengerFareBox .memberBox .mName .name strong {
	font-size: 13px;
}

.passengerFareBox .memberBox .DtableType1_1 {
	width: 434px;
}

table {
	border-collapse: collapse;
}

thead {
	display: table-header-group;
	vertical-align: middle;
	border-color: inherit;
}

tbody {
	display: table-row-group;
	vertical-align: middle;
	border-color: inherit;
}

tfoot {
	display: table-footer-group;
	vertical-align: middle;
	border-color: inherit;
}

tr {
	display: table-row;
	vertical-align: inherit;
	border-color: inherit;
}

.passengerFareBox .memberBox .DtableType1_1 thead th {
	color: #5c5f66;
	font-size: 11px;
	text-align: left;
	padding: 7px 0 0 0;
	line-height: 22px;
	font-family: '돋움';
}

.passengerFareBox .memberBox .DtableType1_1 th,.passengerFareBox .memberBox .DtableType1_1 td
	{
	border-bottom: 1px solid #d9d9d9;
}

.passengerFareBox .memberBox .DtableType1_1 tbody th {
	text-align: left;
	font-weight: normal;
}

.passengerFareBox .memberBox .DtableType1_1 thead th.textRight {
	text-align: right;
}

.passengerFareBox .memberBox .DtableType1_1 tbody th,.passengerFareBox .memberBox .DtableType1_1 tbody td
	{
	vertical-align: top;
	padding: 6px 0;
	line-height: 16px;
}

.passengerFareBox .memberBox .DtableType1_1 tbody td {
	text-align: right;
}

.passengerFareBox .memberBox .DtableType1_1 tfoot td {
	border-bottom: none;
	padding: 10px 0 18px 0;
}

.passengerFareBox .memberBox .DtableType1_1 tfoot td .ttText {
	text-align: left;
	display: block;
	width: 48%;
	float: left;
}

.passengerFareBox .memberBox .DtableType1_1 tfoot td .ttPrice {
	text-align: right;
	display: block;
	width: 48%;
	float: right;
	font-size: 14px;
}
.passengerFareBox .btnPrice {
	text-align: right;
	padding: 38px 0 0 0;
	position: relative;
}
.passengerFareBox .btnPrice .btnType06 {
	margin: 0 35px 0 0;
}
.passengerFareBox .btnPrice .text {
	padding: 13px 16px 12px 0;
}
.passengerFareBox .btnPrice .totalP {
	color: #5e14cc;
	font-size: 16px;
	font-weight: bold;
	font-family: '돋움';
}
.passengerFareBox .btnPrice .totalP strong {
	font-size: 24px;
	font-family: Arial;
	font-weight: bold;
}
.fareInner .fareMethodBox {
	padding: 27px 0 0 0;
}
.fareInner .fareMethodBox h4.h4_type01 {
	background: url("img/bl_hType01.gif") no-repeat 1px center;
	color: #581CB4;
	font-size: 14px;
	height: 17px;
	line-height: 17px;
	margin: 0 0 16px;
	padding: 0 0 0 27px;
	text-align: left;
}
</style>
</head>
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
					<li class="step04_on">4. 운임확인/결제</li>
					<li class="step05_off">5. 예약완료</li>
				</ul>

				<p class="helpOp">
					<span class="btnType06"><a href="#">예약도움말</a></span>
				</p>

				<div class="itineraryBoxPs fareBox">
					<div class="fareInner">
						<!-- 운임정보 -->
						<section class="selectITbox3">
							<div class="selectITinner3">
								<ul style="height: 88px;">
									<!-- 사람수, 공항 -->
									<li class="liType01 totalIntro"><strong class="sTitle">총
											인원 1명</strong>
										<div class="tBoxD">
											<p class="start">
												<strong>김포</strong><br> 
											</p>
											<p class="end oneWay">
												<strong>제주</strong><br> 
											</p>
										</div></li>
									<!-- 사람수, 공항 끝-->

									<!-- 가는날 정보 -->
									<li class="liType01 selectStart"><strong class="sTitle">가는
											날</strong>
										<div class="pType01">
											<strong>2014/12/17(수)<br>13:55
											</strong><br>
										</div></li>
									<!-- 가는날 정보 끝 -->
									
									<!-- 오는날 정보  -->
									<!-- 오는날 정보 끝  -->
								</ul>

								<div class="passengerFareBox">
									<h4 class="h4_type01">탑승자 운임 확인</h4>

									<!-- 회원정보 -->
									<div class="memberBox DmemberBox" style="*z-index: 27;">
										<div class="mName">
											<div class="name">
												<strong>YU/YUYU</strong>
											</div>
										</div>
										<table class="DtableType1_1">
											<thead>
												<tr>
													<th scope="col">구분</th>
													<th scope="col" class="textRight">가는 편(김포-제주)</th>
												</tr>
											</thead>

											<tbody>
												<tr>
													<th scope="col">항공운임</th>
													<td><span class="pr">49,700</span> <span class="unit">원</span>
														<br></td>
												</tr>
												<tr>
													<th scope="col">유류할증료</th>
													<td><span class="pr">0</span> <span class="unit">원</span>
													</td>
												</tr>
												<tr>
													<th scope="col">세금 및 제반요금</th>
													<td><span class="pr">0</span> <span class="unit">원</span></td>
												</tr>
											</tbody>
											<tfoot>
												<tr>
													<td colspan="3"><strong class="ttText">합계</strong><strong
														class="ttPrice">49,700 원</strong></td>
												</tr>
											</tfoot>
										</table>
									</div>
									<!-- 회원정보 끝 -->
									<div class="btnPrice">
										<span class="btnType06 btn_CpopupLayer"></span> <strong
											class="text">총 지불금액</strong> <span class="totalP"><strong>49,700</strong>
											원</span>
									</div>
								</div>
							</div>
						</section>
						<!-- 운임정보끝 -->
						
						<!-- 결제  -->
						<div class="fareMethodBox" >
							<h4 class="h4_type01">결제방식을 선택하세요.</h4>
						</div>
						<!-- 결제 끝 -->
					</div>
				</div>
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