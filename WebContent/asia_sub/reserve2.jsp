<%@page import="com.cafe24.itwill3.reservation.db.ReservationBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>예매2</title>
<link type="text/css" rel="stylesheet" href="css/reserve2.css">
<script src="js/jquery-1.11.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('.btnDay').click(function() {
			$('.btnDay').css("background","url('img/bg_stTitle.gif') no-repeat 0 0");
			$('.btnDay .day').css("color","#333");
			$(this).css("background","url('https://flyasiana.com/images/bg/bg_stTitle_on.gif') no-repeat 0 0");
			$(this).find('.day').css("color","#fff");
		});
	});
</script>
<style type="text/css">

</style>
</head>
<body>
	<%
		List<ReservationBean> relist = (List)request.getAttribute("relist");
	%>
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
					<li class="step02_on">2. 운임/항공편 선택</li>
					<li class="step03_off">3. 여정/탑승자 확인</li>
					<li class="step04_off">4. 운임확인/결제</li>
					<li class="step05_off">5. 예약완료</li>
				</ul>

				<p class="helpOp">
					<span class="btnType06"><a href="#">예약도움말</a></span>
				</p>

				<div class="itineraryBoxPs fareBox">
					<div class="fareInner">
						<div class="selectITbox4">
							<div class="selectITinner4">
								<div class="sLeft">
									<span class="upsellStart"><strong>부산(PUS)</strong></span> <span
										class="upsellEnd oneWay"><strong>제주(CJU)</strong></span> <span
										class="ppCnt">( <strong>탑승객 1명</strong>&nbsp;<span>:&nbsp;성인&nbsp;1명</span>
										)
									</span>
								</div>
							</div>
						</div>

						<!-- 가는항공편 -->
						<div class="tableBox04">
							<h4 class="h4_type01">
								<span class="cnt">1</span> <span class="text">항공편을 선택하세요.</span>
							</h4>

							<p class="selectBox">
								<span class="minimum">최저운임 항공편</span> <span class="communal">에어부산
									공동운항</span>
							</p>

							<p class="startAr">
								<strong>가는 항공편</strong> 김포(GMP) → 제주(CJU) <span class="day">2014/12/20/토
									출발</span>
							</p>

							<div class="dayListBox">
								<div class="btnPre hoverA" id="preDepartureSearch">
									<a href="#"><img src="img/btn_preDay.gif" alt="가는 항공편 다음일"></a>
								</div>

								<ul>
									<li class="btnDay" id="chagneDateSearch">
										<a href="#">
											<strong class="day">12/19/금</strong> <span class="price"><strong>87,700</strong>
											<span class="sm">원</span><br>부터</span>
										</a>
									</li>
									<li class="btnDay" id="chagneDateSearch">
										<a href="#">
											<strong class="day">12/20/토</strong> <span class="price"><strong>87,700</strong>
											<span class="sm">원</span><br>부터</span>
										</a>
									</li>
									<li class="btnDay" id="chagneDateSearch"><a href="#"></a>
									</li>
									<li class="btnDay" id="chagneDateSearch"><a href="#"></a>
									</li>
									<li class="btnDay" id="chagneDateSearch"><a href="#"></a>
									</li>
									<li class="btnDay" id="chagneDateSearch"><a href="#"></a>
									</li>
									<li class="btnDay" id="chagneDateSearch"><a href="#"></a>
									</li>
								</ul>

								<div class="btnNext hoverA" id="nextDepartureSearch">
									<a href="#"><img src="img/btn_nextDay.gif" alt="가는 항공편 다음일"></a>
								</div>
							</div>

							<div class="tableTypeBox01">
								<div class="inner-table"
									style="overflow-x: hidden; max-height: 640px;">
									<table class="tableType03 mT0" id="tbDepartureFlightList">
										<thead>
											<tr>
												<th scope="col"><strong>편명</strong></th>
												<th scope="col"><strong>출발</strong></th>
												<th scope="col"><strong>도착</strong></th>
												<th scope="col"><strong>기종</strong></th>
												<th scope="col"><strong>마일리지 적립</strong></th>
												<th scope="col"><strong>총액운임</strong></th>
												<th scope="col"><strong>좌석</strong></th>
												<th scope="col" class="last-th"><strong>선택</strong></th>
											</tr>
										</thead>
										
										<tbody>
											<%
												for(int i=0; i<relist.size(); i++){
													ReservationBean reservationBean = relist.get(i);
											%>
											<tr>
												<td rowspan="1"><span class="box"><span
														class="text-type-1"><%=reservationBean.getFlightNum() %> </span></span></td>
												<td rowspan="1"><span class="box"><strong><%=reservationBean.getLeaTime() %></strong></span></td>
												<td rowspan="1"><span class="box"><strong><%=reservationBean.getArrTime() %></strong></span></td>
												<td rowspan="1"><span class="box"><a
														class="bl_go" href="#none" id="searchFlightInfo"><%=reservationBean.getFlyModel() %></a></span></td>

												<td class="hover_td"><span class="box"><span
														class="day">-적립가능</span></span></td>
												<td class="hover_td"><span class="box"> <span
														class="price"> <strong><%=reservationBean.getCharge() %></strong> 원<br>
													</span>
												</span></td>
												<td class="hover_td"><span class="box"><strong><%=reservationBean.getSeats() %></strong>석</span>
												</td>
												<td class="last-td last-child hover_td"><span
													class="Sbtn_TType07_3"><a href="#none"
														id="ra_depAvail0">선택</a></span></td>
											</tr>
											<%} %>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<!-- 가는항공편끝 -->

						<!-- 오는 항공편  -->
						<div class="tableBox04" style="display: none;">
							<p class="comingAr">
								<strong>오는 항공편</strong> 제주(CJU) → 김포(GMP) <span class="day">2014/12/20/토
									출발</span>
							</p>

							<div class="dayListBox">
								<div class="btnPre hoverA" id="preArrivalSearch">
									<a href="#"><img src="img/btn_preDay.gif" alt="오는 항공편 이전일"></a>
								</div>

								<ul>
									<li class="btnDay" id="chagneDateSearch2"><a href="#"></a>
									</li>
									<li class="btnDay" id="chagneDateSearch2"><a href="#"></a>
									</li>
									<li class="btnDay" id="chagneDateSearch2"><a href="#"></a>
									</li>
									<li class="btnDay" id="chagneDateSearch2"><a href="#"></a>
									</li>
									<li class="btnDay" id="chagneDateSearch2"><a href="#"></a>
									</li>
									<li class="btnDay" id="chagneDateSearch2"><a href="#"></a>
									</li>
									<li class="btnDay" id="chagneDateSearch2"><a href="#"></a>
									</li>
								</ul>

								<div class="btnNext hoverA" id="nextArrivalSearch">
									<a href="#"><img src="img/btn_nextDay.gif" alt="오는 항공편 다음일"></a>
								</div>
							</div>

							<div class="tableTypeBox01">
								<div class="inner-table"
									style="overflow-x: hidden; max-height: 640px;"></div>
							</div>
						</div>
						<!-- 오는 항공편 끝  -->

						<!-- 하단글  -->
						<ul class="tableNotice">
							<li>2014년 11월 24일 09:40 (한국시간) 기준, 유류할증료와 세금 및 제반요금 포함된 성인
								1인 운임이며, 운임은 수시로 변경될 수 있습니다.</li>
							<li>고객님의 예약 시간은 정기 스케쥴 변경, 정기 정비 작업 등으로 인하여 전 노선에 시간 변동 및
								운항/비운항이 예고 없이 발생할 수 있음을 양지하여 주시기 바랍니다.</li>
							<li class="c_5e14cc">인터넷 예매를 통해 국내선 항공권을 예약하시는 경우 예약 동시
								구매하셔야 합니다. 동시 구매하지 않으시면 예약이 완료되지 않습니다.</li>
							<li>예약 가능석은 실시간으로 변동되며, 탑승자 정보 입력 단계를 완료해야 좌석이 확약됩니다.</li>
							<li>항공권 운임에 따라 운임 규정이 상이하므로 반드시 운임 규정을 확인하시고 구매하시기 바랍니다.</li>
						</ul>
						<!-- 하단글끝  -->

						<!-- 스케줄에서 선택후 운임정보나오기 -->
						<!-- 스케줄에서 선택후 운임정보나오기 끝 -->

						<!-- 하단 버튼부분  -->
						<ul class="btnBoxType01">
							<li><span class="Sbtn_TType06_1"><a href="#">이전단계</a></span></li>
							<li class="right"><span class="Bbtn_TType01_1"><a
									href="#">계속하기</a></span></li>
						</ul>
						<!-- 하단 버튼부분 끝  -->
					</div>
					<!-- 스케줄내용 끝 div  -->
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