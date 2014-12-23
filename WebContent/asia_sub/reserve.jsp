<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>예매</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.11.1.js"></script>
<script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<link type="text/css" rel="stylesheet" href="css/reserve.css">
<script>
	var lea_city = "김포";
	var arr_city = "제주";
	var res_sig_dou = "왕복";
	var date = new Date();
	var lea_time = date.getFullYear() + "/" + new String(date.getMonth() + 1)
			+ "/" + date.getDate();
	var arr_time = date.getFullYear() + "/" + new String(date.getMonth() + 1)
			+ "/" + date.getDate();
	$.datepicker.setDefaults({
		dateFormat : 'yy/mm/dd',
		dayNamesMin : [ "일", "월", "화", "수", "목", "금", "토" ],
		monthNames : [ "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월",
				"10월", "11월", "12월" ],
		yearSuffix : "년",
		minDate : "-0d",
		showMonthAfterYear : true
	});
	$(function() {
		// datepicker 첫번째
		$('#CalendarBox .takeOff .inp').val(lea_time);
		$("#datepicker").datepicker({
			onSelect : function(date) {
				$('#CalendarBox .takeOff .inp').val(date);
			}
		});
		// datepicker 두번째
		$('#CalendarBox .getIn .inp').val(lea_time);
		$("#datepicker1").datepicker({
			onSelect : function(date) {
				$('#CalendarBox .getIn .inp').val(date);
			}
		});
	});

	$(document)
			.ready(
					function() {
						//편도 클릭시
						$('.btn-type-2')
								.click(
										function() {
											$('.vuseh').hide();

											$('.btn-type-2 span')
													.css('background',
															'url("img/bg_typeL_2_on.gif") no-repeat left 0');
											$('.btn-type-2 a')
													.css('background',
															'url("img/bg_typeR_1_on.gif") no-repeat right 0')
													.css('color', '#fff').css(
															'padding',
															'0 20px 0 36px');

											$('.btn-type-1 span')
													.css('background',
															'url("img/bg_typeL_off.gif") no-repeat left 0');
											$('.btn-type-1 a')
													.css('background',
															'url("img/bg_typeR_off.gif") no-repeat right 0')
													.css('color', '#333').css(
															'padding',
															'0 29px 0 26px');
											res_sig_dou = "편도";
										});

						//왕복 클릭시
						$('.btn-type-1')
								.click(
										function() {
											$('.vuseh').show();

											$('.btn-type-1 span')
													.css('background',
															'url("img/bg_typeL_1_on.gif") no-repeat left 0');
											$('.btn-type-1 a')
													.css('background',
															'url("img/bg_typeR_1_on.gif") no-repeat right 0')
													.css('color', '#fff').css(
															'padding',
															'0 20px 0 36px');

											$('.btn-type-2 span')
													.css('background',
															'url("img/bg_typeL_off.gif") no-repeat left 0');
											$('.btn-type-2 a')
													.css('background',
															'url("img/bg_typeR_off.gif") no-repeat right 0')
													.css('color', '#333').css(
															'padding',
															'0 29px 0 26px');
											res_sig_dou = "왕복";
										});

						// 도시선택 리스트UI 값 저장함수
						$('.takeOff .list a').click(
								function() {
									// 선택된 도시 백그라운드 변경
									$(this).css('background',
											'url(img/bg_select.gif)');
									// 선택된 도시의 글자값 변수에 저장
									var city = $(this).text();
									lea_city = city;
									// 각 변수에 해당하는 인덱스값 배열로 저장
									if (city == "광주") {
										var city_idx = [ "1", "8" ];
										// 인덱스 배열값을 인자값으로 select_city 함수 호출
										select_city(city_idx);
									} else if (city == "김포") {
										var city_idx = [ "0", "4", "5", "6",
												"8", "11" ];
										select_city(city_idx);
									} else if (city == "대구") {
										var city_idx = [ "8" ];
										select_city(city_idx);
									} else if (city == "무안") {
										var city_idx = [ "3", "8" ];
										select_city(city_idx);
									} else if (city == "부산") {
										var city_idx = [ "1", "8" ];
										select_city(city_idx);
									} else if (city == "여수") {
										var city_idx = [ "1" ];
										select_city(city_idx);
									} else if (city == "울산") {
										var city_idx = [ "1" ];
										select_city(city_idx);
									} else if (city == "인천") {
										var city_idx = [ "8" ];
										select_city(city_idx);
									} else if (city == "제주") {
										var city_idx = [ "0", "1", "2", "3",
												"4", "7", "9", "10", "11" ];
										select_city(city_idx);
									} else if (city == "진주") {
										var city_idx = [ "8" ];
										select_city(city_idx);
									} else if (city == "청주") {
										var city_idx = [ "8" ];
										select_city(city_idx);
									} else if (city == "포항") {
										var city_idx = [ "1", "8" ];
										select_city(city_idx);
									}
									// 도시 리스트중 선택 된 리스트외의 백그라운드 원상복귀
									$('.list a').not(this).css('background',
											'none');
								});
					});
	// 선택된 도시의 인덱스값을 인자값으로 받아 도착도시 UI 변경함수 
	function select_city(city_idx) {
		$('.getIn .list a').each(
				function(idx) {
					// 도착도시 글자 모두 비활성화
					$(this).css('color', '#999');
					for ( var i = 0; i < city_idx.length; i++) {
						if (idx == city_idx[i]) {
							// 받아온 인덱스값의 도시만 글자 활성
							$(this).css('color', '#000');
							$(this).click(
									function() {
										arr_city = $(this).text();
										$(this).css('background',
												'url(img/bg_select.gif)');
										$('.getIn .list a').not(this).css(
												'background', 'none');
									});
						}
					}
				});
	}

	function submit_form() {
		lea_time = $('#datepicker').val();
		lea_time=lea_time.replace(lea_time.split("/")[0]+"/","");
		arr_time = $('#datepicker1').val();
		arr_time=arr_time.replace(arr_time.split("/")[0]+"/","");
		
		var res_count = $('#adultCount option:selected').text()
				.replace('명', '');
		var url = "";
		if (res_sig_dou == "왕복") {
			url = "./reserve2.re?lea_city=" + lea_city + "&arr_city="
					+ arr_city + "&res_sig_dou=" + res_sig_dou + "&lea_time="
					+ lea_time + "&arr_time=" + arr_time + "&res_count="
					+ res_count;
		} else {
			url = "./reserve2.re?lea_city=" + lea_city + "&arr_city="
					+ arr_city + "&res_sig_dou=" + res_sig_dou + "&lea_time="
					+ lea_time + "&res_count=" + res_count;
		}
		location.href = url;
	}
</script>
<style type="text/css">
.intxt {
	background: none;
	border: none;
	border-radius: 0;
	vertical-align: middle;
	width: 113px;
	height: 21px;
	line-height: 19px;
	font-size: 11px;
	color: #fff;
	margin-top: -13px;
	padding: 0 0 0 5px;
}
fieldset{
	border: none;
}
</style>
</head>
<body>
	<form method="post">
		<header>
			<jsp:include page="../asiana_inc/header.jsp" />
		</header>
		<!-- 예매  -->
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
					<li class="step01_on">1. 여정 선택</li>
					<li class="step02_off">2. 운임/항공편 선택</li>
					<li class="step03_off">3. 여정/탑승자 확인</li>
					<li class="step04_off">4. 운임확인/결제</li>
					<li class="step05_off">5. 예약완료</li>
				</ul>

				<p class="helpOp">
					<span class="btnType06"><a href="#">예약도움말</a></span>
				</p>

				<div class="h4_type01">
					<h4>여정을 선택하세요.</h4>
				</div>

				<div style="margin: 40px 0 5px 0;" class="notice_container">
					<div class="notice_Inner innerType01">
						<ul class="notice">
							<li>인터넷을 통하여 항공권 조회일로부터 최대 349일까지, 오프라인을 통해서는 최대 354일까지 예매가
								가능합니다.</li>
							<li>해외발행 신용카드는 온라인 인증 서비스를 받은 Visa, Master 카드에 한해 <b><a
									href="#">영문사이트</a></b>에서 구매 가능합니다.
							</li>
						</ul>
					</div>
				</div>

				<div class="tableStyle01">
					<ul class="list-choice">
						<li class="btn-type-1 on"><span><a href="#">왕복</a></span></li>
						<li class="btn-type-2"><span><a href="#">편도</a></span></li>
					</ul>

					<div id="singleTripType" class="boxType01">
						<!--출발 공항  -->
						<div class="takeOff">
							<p class="tTitle">
								<strong>출발</strong>
							</p>

							<div id="departureAirportBox" class="selectLocalBox">
								<ul class="selectLocalInner" id="ul_Dep_Airport">
									<li class="list"><a href="#none">광주</a></li>
									<li class="list"><a href="#none"
										style="background: url('img/bg_select.gif');">김포</a></li>
									<li class="list"><a href="#none">대구</a></li>
									<li class="list"><a href="#none">무안</a></li>
									<li class="list"><a href="#none">부산</a></li>
									<li class="list"><a href="#none">여수</a></li>
									<li class="list"><a href="#none">울산</a></li>
									<li class="list"><a href="#none">인천</a></li>
									<li class="list"><a href="#none">제주</a></li>
									<li class="list"><a href="#none">진주</a></li>
									<li class="list"><a href="#none">청주</a></li>
									<li class="list"><a href="#none">포항</a></li>
								</ul>
							</div>
						</div>

						<!-- 도착 공항 -->
						<div class="getIn">
							<p class="tTitle">
								<strong>도착</strong>
							</p>

							<div id="departureAirportBox" class="selectLocalBox">
								<ul class="selectLocalInner" id="ul_Dep_Airport">
									<li class="list"><a href="#none">광주</a></li>
									<li class="list"><a href="#none">김포</a></li>
									<li class="list"><a href="#none">대구</a></li>
									<li class="list"><a href="#none">무안</a></li>
									<li class="list"><a href="#none">부산</a></li>
									<li class="list"><a href="#none">여수</a></li>
									<li class="list"><a href="#none">울산</a></li>
									<li class="list"><a href="#none">인천</a></li>
									<li class="list"><a href="#none"
										style="background: url('img/bg_select.gif');">제주</a></li>
									<li class="list"><a href="#none">진주</a></li>
									<li class="list"><a href="#none">청주</a></li>
									<li class="list"><a href="#none">포항</a></li>
								</ul>
							</div>
						</div>
					</div>
					<!--singleTripType끝  -->

					<!-- 달력  -->
					<div id="CalendarBox">
						<div class="boxType01">
							<div class="takeOff">
								<p class="tTitle">
									<strong>가는 날</strong>
								</p>

								<p class="outp">
									<input type="text" class="inp">
								<div id="datepicker"></div>
								</p>


								<!--selectLocalBox끝  -->
							</div>
							<!-- 가는날 -->

							<div class="getIn vuseh">
								<p class="tTitle">
									<strong>오는 날</strong>
								</p>

								<p class="outp">
									<input type="text" class="inp">
								<div id="datepicker1"></div>
								</p>
							</div>
							<!-- 오는날 -->
						</div>
					</div>
					<!-- 달력끝  -->


					<!--사람수  -->
					<div class="boxType01 reType02">
						<div class="personnelBox">
							<p class="tTitle">
								<strong>성인</strong>
							</p>

							<div class="selectBox2">
								<div class="selectStyle" style="height: 28px;">
									<span class="span-select" style="height: 28px;"> <input
										type="text" id="txt_adultCount" value="1명" readonly="readonly"
										title="성인 인원수" tabindex="-1"
										style="height: 28px; line-height: 28px;"> <select
										id="adultCount" name="adultCount" title="성인 인원수">
											<option value="1">1명</option>
											<option value="2">2명</option>
											<option value="3">3명</option>
											<option value="4">4명</option>
											<option value="5">5명</option>
											<option value="6">6명</option>
											<option value="7">7명</option>
											<option value="8">8명</option>
											<option value="9">9명</option>
									</select>
									</span>
								</div>
								<span class="cnT">(만 13세 이상)</span>
							</div>
						</div>
					</div>
				</div>
				<!--tableStyle01끝  -->

				<ul class="SnoticeList">
					<li>국내선 항공권 구매 및 예약 변경은 해당 항공편 출발 30분전까지 가능합니다.</li>
					<li style="color: #333;">국내선 유류 할증료는 발권일 기준 2014년 11월 1일부터
						2014년 11월 30일까지 편도 당 9,900원 징수됩니다. <span class="plan-btnType-3">
							[ <a href="#" target="blank" title="새창">바로가기</a> ]
					</span> <br>구매 후 탑승시점에 유류할증료가 인상되어도 차액을 징수하지 않으며 인하되어도 환급되지 않습니다.
					</li>
					<li style="color: #333;">계좌 이체 서비스를 이용하여 왕복 항공권을 구매하신 경우 전체
						환불만 가능하며 편도 구간에 대해 환불이 되지 않습니다. <br>편도로 각각 구매하시거나, 전체 환불 후 재
						구매하여 주시기 바랍니다.
					</li>
					<li style="color: #333;">인터넷 시스템 정기&nbsp;작업으로 매일 23시 50분 ~ 00시
						05분까지 항공권 예매 및 여정변경/환불 서비스가 제한되오니 이용에 참고하시기 바랍니다.</li>
				</ul>

				<ul class="btnBoxType01">
					<li><span class="Sbtn_TType06_1"><a href="#none"
							id="btnReset">다시 입력</a></span></li>
					<li class="right"><span class="Bbtn_TType01_1"> <a
							href="#none" onclick="submit_form();">조회하기</a></span></li>
				</ul>

			</div>
			<!--skipct끝 -->

		</div>
		<!--containerBox 끝 -->
		<footer>
			<jsp:include page="../asiana_inc/footer.jsp" />
		</footer>
		<!-- 예매끝  -->
	</form>
</body>
</html>