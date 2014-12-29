<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>퍼스트</title>
<link type="text/css" rel="stylesheet" href="./asia_sub/css/first_suite.css">
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						$('.top1').addClass("menuchange");
						$('.top1').parent().children('ul').css('display', 'block');
						
						$('.common-tab2_1')
								.click(
										function() {
											$('.DXclass_menuList1').show();
											$('.DXclass_menuList2').hide();
											$('.DXclass_menuList3').hide();
											$('.DXclass_menuList4').hide();
											$('.DXclass_menuList5').hide();

											$('.common-tab2_1')
													.css('background',
															'url("./asia_sub/img/common_tab2_left_on.gif") no-repeat 0 0');
											$('.common-tab2_1a')
													.css('background',
															'url("./asia_sub/img/common_tab2_right_on.gif") no-repeat right 0')
													.css('color', '#581cb4')
													.css('font-weight', 'bold');

											$('.common-tab2_2')
													.css('background',
															'url("./asia_sub/img/common_tab2_left_off.gif") no-repeat 0 0');
											$('.common-tab2_2a')
													.css('background',
															'url("./asia_sub/img/common_tab2_right_off.gif") no-repeat right 0')
													.css('color', '#000').css(
															'font-weight',
															'normal');

											$('.common-tab2_3')
													.css('background',
															'url("./asia_sub/img/common_tab2_left_off.gif") no-repeat 0 0');
											$('.common-tab2_3a')
													.css('background',
															'url("./asia_sub/img/common_tab2_right_off.gif") no-repeat right 0')
													.css('color', '#000').css(
															'font-weight',
															'normal');

											$('.common-tab2_4')
													.css('background',
															'url("./asia_sub/img/common_tab2_left_off.gif") no-repeat 0 0');
											$('.common-tab2_4a')
													.css('background',
															'url("./asia_sub/img/common_tab2_right_off.gif") no-repeat right 0')
													.css('color', '#000').css(
															'font-weight',
															'normal');

										});

						$('.common-tab2_2')
								.click(
										function() {
											$('.DXclass_menuList1').hide();
											$('.DXclass_menuList2').show();
											$('.DXclass_menuList3').hide();
											$('.DXclass_menuList4').hide();
											$('.DXclass_menuList5').hide();

											$('.common-tab2_1')
													.css('background',
															'url("./asia_sub/img/common_tab2_left_off.gif") no-repeat 0 0');
											$('.common-tab2_1a')
													.css('background',
															'url("./asia_sub/img/common_tab2_right_off.gif") no-repeat right 0')
													.css('color', '#000').css(
															'font-weight',
															'normal');

											$('.common-tab2_2')
													.css('background',
															'url("./asia_sub/img/common_tab2_left_on.gif") no-repeat 0 0');
											$('.common-tab2_2a')
													.css('background',
															'url("./asia_sub/img/common_tab2_right_on.gif") no-repeat right 0')
													.css('color', '#581cb4')
													.css('font-weight', 'bold');

											$('.common-tab2_3')
													.css('background',
															'url("./asia_sub/img/common_tab2_left_off.gif") no-repeat 0 0');
											$('.common-tab2_3a')
													.css('background',
															'url("./asia_sub/img/common_tab2_right_off.gif") no-repeat right 0')
													.css('color', '#000').css(
															'font-weight',
															'normal');

											$('.common-tab2_4')
													.css('background',
															'url("./asia_sub/img/common_tab2_left_off.gif") no-repeat 0 0');
											$('.common-tab2_4a')
													.css('background',
															'url("./asia_sub/img/common_tab2_right_off.gif") no-repeat right 0')
													.css('color', '#000').css(
															'font-weight',
															'normal');

											$('.common-tab2_5')
													.css('background',
															'url("./asia_sub/img/common_tab2_left_off.gif") no-repeat 0 0');
											$('.common-tab2_5a')
													.css('background',
															'url("./asia_sub/img/common_tab2_right_off.gif") no-repeat right 0')
													.css('color', '#000').css(
															'font-weight',
															'normal');

										});

						$('.common-tab2_3')
								.click(
										function() {
											$('.DXclass_menuList1').hide();
											$('.DXclass_menuList2').hide();
											$('.DXclass_menuList3').show();
											$('.DXclass_menuList4').hide();
											$('.DXclass_menuList5').hide();

											$('.common-tab2_1')
													.css('background',
															'url("./asia_sub/img/common_tab2_left_off.gif") no-repeat 0 0');
											$('.common-tab2_1a')
													.css('background',
															'url("./asia_sub/img/common_tab2_right_off.gif") no-repeat right 0')
													.css('color', '#000').css(
															'font-weight',
															'normal');

											$('.common-tab2_2')
													.css('background',
															'url("./asia_sub/img/common_tab2_left_off.gif") no-repeat 0 0');
											$('.common-tab2_2a')
													.css('background',
															'url("./asia_sub/img/common_tab2_right_off.gif") no-repeat right 0')
													.css('color', '#000').css(
															'font-weight',
															'normal');

											$('.common-tab2_3')
													.css('background',
															'url("./asia_sub/img/common_tab2_left_on.gif") no-repeat 0 0');
											$('.common-tab2_3a')
													.css('background',
															'url("./asia_sub/img/common_tab2_right_on.gif") no-repeat right 0')
													.css('color', '#581cb4')
													.css('font-weight', 'bold');

											$('.common-tab2_4')
													.css('background',
															'url("./asia_sub/img/common_tab2_left_off.gif") no-repeat 0 0');
											$('.common-tab2_4a')
													.css('background',
															'url("./asia_sub/img/common_tab2_right_off.gif") no-repeat right 0')
													.css('color', '#000').css(
															'font-weight',
															'normal');
											$('.common-tab2_5')
													.css('background',
															'url("./asia_sub/img/common_tab2_left_off.gif") no-repeat 0 0');
											$('.common-tab2_5a')
													.css('background',
															'url("./asia_sub/img/common_tab2_right_off.gif") no-repeat right 0')
													.css('color', '#000').css(
															'font-weight',
															'normal');

										});

						$('.common-tab2_4')
								.click(
										function() {
											$('.DXclass_menuList1').hide();
											$('.DXclass_menuList2').hide();
											$('.DXclass_menuList3').hide();
											$('.DXclass_menuList4').show();
											$('.DXclass_menuList5').hide();

											$('.common-tab2_1')
													.css('background',
															'url("./asia_sub/img/common_tab2_left_off.gif") no-repeat 0 0');
											$('.common-tab2_1a')
													.css('background',
															'url("./asia_sub/img/common_tab2_right_off.gif") no-repeat right 0')
													.css('color', '#000').css(
															'font-weight',
															'normal');

											$('.common-tab2_2')
													.css('background',
															'url("./asia_sub/img/common_tab2_left_off.gif") no-repeat 0 0');
											$('.common-tab2_2a')
													.css('background',
															'url("./asia_sub/img/common_tab2_right_off.gif") no-repeat right 0')
													.css('color', '#000').css(
															'font-weight',
															'normal');

											$('.common-tab2_3')
													.css('background',
															'url("./asia_sub/img/common_tab2_left_off.gif") no-repeat 0 0');
											$('.common-tab2_3a')
													.css('background',
															'url("./asia_sub/img/common_tab2_right_off.gif") no-repeat right 0')
													.css('color', '#000').css(
															'font-weight',
															'normal');

											$('.common-tab2_4')
													.css('background',
															'url("./asia_sub/img/common_tab2_left_on.gif") no-repeat 0 0');
											$('.common-tab2_4a')
													.css('background',
															'url("./asia_sub/img/common_tab2_right_on.gif") no-repeat right 0')
													.css('color', '#581cb4')
													.css('font-weight', 'bold');

											$('.common-tab2_5')
													.css('background',
															'url("./asia_sub/img/common_tab2_left_off.gif") no-repeat 0 0');
											$('.common-tab2_5a')
													.css('background',
															'url("./asia_sub/img/common_tab2_right_off.gif") no-repeat right 0')
													.css('color', '#000').css(
															'font-weight',
															'normal');

										});

					});
</script>
<style type="text/css">
.menuchange {
	padding: 7px 0 7px 19px;
	line-height: 20px;
	display: block;
	color: #fff;
	font-size: 12px;
	font-weight: bold;
	background: #73706c;
}

.First {
	font-weight: bold;
}

.DXbox-banner {
	position: relative;
	padding: 350px 0 0 0;
	margin: 0 0 30px 0;
	width: 710px;
	background-image: url('./asia_sub/img/SEgall_photo02.gif');
}
</style>
</head>
<body>
	<header>
		<jsp:include page="../asiana_inc/header.jsp" />
	</header>
	<!-- 퍼스트 -->
	<section id="main_container">
		<div class="locationBox">
			<div class="location">
				<ul>
					<li><a href="#none">HOME</a> <span>&gt;</span></li>
					<li><a href="#none">서비스 안내</a> <span>&gt;</span></li>
					<li><a href="#none">클래스별 서비스</a> <span>&gt;</span></li>
					<li><a href="#none">퍼스트</a> <span>&gt;</span></li>
					<li><a href="#none">퍼스트</a> <span>&gt;</span></li>
					<li>좌석/편의시설</li>
				</ul>
			</div>
		</div>

		<div id="containerBox">
			<div id="container">
				<!-- 사이드 메뉴 -->
				<jsp:include page="ServiceMenu.jsp" />
				<!-- 사이드 메뉴 끝 -->

				<div id="skipCt">
					<!-- section -->
					<section id="containerBody">
						<h3 class="h3_type01">퍼스트</h3>

						<div class="service_contents">
							<h4>당신의 품격까지 지켜드리는 퍼스트클래스</h4>
							<p class="DXsubcopy">퍼스트 클래스는 180도 등받이 각도와 81인치 넓은 좌석 간격으로
								넉넉하고 격조있는 여행을 하실 수 있습니다. 개별 칸막이로 한 분, 한분의 독립 공간을 제공해 드리며, 자동 미세
								컨트롤 시스템으로 편안한 휴식을 선사합니다.</p>

							<div id="box-banner" class="DXbox-banner"></div>

							<div class="service_tabList">
								<ul class="common-tab2">
									<li class="common-tab2_1"><a href="#none"
										class="common-tab2_1a"><span>좌석 및<br>편의시설
										</span></a></li>
									<li class="common-tab2_2"><a href="#none"
										class="common-tab2_2a"><span>예약서비스</span></a></li>
									<li class="common-tab2_3"><a href="#none"
										class="common-tab2_3a"><span>공항서비스</span></a></li>
									<li class="common-tab2_4"><a href="#none"
										class="common-tab2_4a"><span>기내서비스</span></a></li>
								</ul>

								<div class="DXclass_menulist">
									<div class="DXclass_menuList1">
										<p class="DXwidth100">&nbsp;</p>

										<h5 class="DXser_left">
											<img alt="좌석및 편의시설" src="./asia_sub/img/SEclass_h5.gif">
										</h5>

										<span class="DXser_right btnType18"><a href="#">기종별
												좌석 배치도</a></span>

										<div class="DX_group DXmar_top25">
											<dl class="DXmenuList0_gr1 DXmar_right24">
												<dt>180도 침대형 시트</dt>
												<dd>
													<img src="./asia_sub/img/SEfirst_ph01.gif">
												</dd>
												<dd class="DXseat_text">180도 등받이 각도로 모두가 부러워하는 격조 있는
													휴식을 즐기십시오.</dd>
											</dl>
											<dl class="DXmenuList0_gr1 DXmar_right24">
												<dt>81인치 넓은 좌석 간격</dt>
												<dd>
													<img src="./asia_sub/img/SEfirst_ph02.gif">
												</dd>
												<dd class="DXseat_text">
													넉넉하고 여유로운 개인공간에서 <br> 당신이 상상하던 여행의 꿈이 이루어질 <br>
													것입니다.
												</dd>
											</dl>
											<dl class="DXmenuList0_gr1 DX_noR">
												<dt>개별 칸막이</dt>
												<dd>
													<img src="./asia_sub/img/SEfirst_ph03.gif">
												</dd>
												<dd class="DXseat_text">
													한 분, 한 분의 프라이버시를 <br> 지켜드리는 독립공간에서 소중한 <br> 시간을
													보내십시오.
												</dd>
											</dl>
										</div>

										<div class="DX_group">
											<dl class="DXmenuList1_gr1 DXmar_right24">
												<dt>자동 미세 컨트롤 시스템</dt>
												<dd>
													<img src="./asia_sub/img/SEfirst_ph04.gif">
												</dd>
												<dd class="DXseat_text">
													개인 체형에 100% 맞춰주는 하이엔드 <br> 시스템으로 가장 편안한 휴식을 <br>
													제공합니다.
												</dd>
											</dl>
											<dl class="DXmenuList1_gr1 DXmar_right24">
												<dt>전원 공급 장치</dt>
												<dd>
													<img src="./asia_sub/img/SEfirst_ph04.gif">
												</dd>
												<dd class="DXseat_text">A380, B777, B747 일부 항공기에 전원
													공급장치 및 USB가 제공 중입니다.</dd>
											</dl>
											<dl class="DXmenuList1_gr1 DX_noR">
												<dt>위성전화</dt>
												<dd>
													<img src="./asia_sub/img/SEfirst_ph05.gif">
												</dd>
												<dd class="DXseat_text">
													통화요금 : 10초당 1.33~2달러<br> 대상기종 : A380, B777, B747 일부에
													한함
												</dd>
											</dl>
										</div>

										<div class="DX_group">
											<dl class="DXmenuList1_gr1 DXmar_right24">
												<dt>SMS / E-MAIL 서비스</dt>
												<dd>
													<img alt="SMS / E-MAIL 서비스" src="./asia_sub/img/SEmenuList_ph10.gif">
												</dd>
												<dd class="DXseat_text">
													1회 이용료 : 1.5달러 <br> 결제방법 : 신용카드<br> 가능언어 : 한글, 영어<br>
													대상기종 : B777 일부에 한함
												</dd>
											</dl>
											<dl class="DXmenuList1_gr1 DXpad_top15 DXmar_right24"></dl>
											<dl class="DXmenuList1_gr1 DXpad_top15 DXheight50"></dl>
										</div>
									</div>
									<!-- DXclass_menuList1 끝  -->

									<div class="DXclass_menuList2">
										<h5 class="DXsection_h5">
											<img alt="예약서비스타이틀" src="./asia_sub/img/SEbooking_h5.gif">
										</h5>

										<div class="DXservice_group DXmar_top15">
											<span class="booking_photo"><img alt="예약서비스"
												src="./asia_sub/img/SEbooking_photo01.gif"></span>

											<div class="booking_photo_right">
												<p class="DXsubcopy02">퍼스트 스위트 클래스를 이용하시는 고객님의 보다 편리한
													여행을 돕고자 프리미엄서비스센터를 운영하여 최선의 노력을 기울이고 있습니다.</p>
												<p class="DXsection_h5_tit">좌석 사전 배정 서비스</p>
												<ul class="DXnotice">
													<li class="no_bullet">고객님이 원하시는 좌석으로 우선 배정해드립니다.</li>
												</ul>
												<p class="DXsection_h5_tit">다양한 항공여행 정보 안내</p>
												<ul class="DXnotice">
													<li class="no_bullet">항공기 기종이나 좌석, 기내서비스 등 항공 여행 관련
														문의사항에 대해 상세히 안내해 <br> 드림은 물론, 고객님이 원하실 경우 도착지 및 공항정보가
														담긴 여행안내서를 이메일로 <br> 보내드립니다.
													</li>
												</ul>
												<p class="DXsection_h5_tit">기내식 사전 주문 (미주, 유럽)</p>
												<ul class="DXnotice">
													<li class="no_bullet">한국출발 미국, 유럽노선 탑승 고객께서는 첫 번째 식사를
														미리 주문하실 수 있습니다.</li>
												</ul>
												<p class="DXbtnType18_gap">
													<span class="btnType18"><a
														href="/CW/ko/common/pageContent.do?pageId=PC_0413">기내식
															서비스</a></span>
												</p>

												<div class="DXservice_465box"></div>
											</div>
										</div>
									</div>
									<!-- DXclass_menuList2 끝  -->

									<div class="DXclass_menuList3">
										<h5 class="DXsection_h5">
											<img alt="체크인서비스" src="./asia_sub/img/SEcheckin_h5.gif">
										</h5>
										<div class="DXservice_group DXmar_top15 group1">
											<span class="booking_photo"><img alt="체크인서비스"
												src="./asia_sub/img/SEcheckin_photo01.gif"></span>
											<div class="booking_photo_right">
												<p class="DXsection_h5_tit DXpad_top_no">컨시어즈 서비스</p>
												<ul class="DXnotice">
													<li class="no_bullet">일등석 고객이 탑승수속 카운터에 도착하신 시점부터,
														탑승수속 및 출국수속 전과정을 전담직원이 전면지원하며, 라운지까지 안내해 드리는 서비스입니다</li>
												</ul>
												<dl>
													<dt>- 서비스 대상</dt>
													<dd>유상항공권(full fare)을 구입하신 손님에 대한 서비스로, 좌석을 승급하신 경우나,
														보너스항공권을 이용하시는 경우에는 서비스대상에서 제외되오니 양해하여 주시기 바랍니다.</dd>
													<dt>- 대상 노선</dt>
													<dd>First Class 가 운영되는 전 노선에 적용되며, 해외공항 출발편의 경우 공항당국
														사정에 따라 출국심사 서비스 지원이 제한되는 경우도 있습니다.</dd>
													<dt>- 환승 손님</dt>
													<dd>당사 항공편을 이용하여 인천공항에 도착 후 환승하시는 경우, 도착 항공편 탑승구에서
														라운지까지 전과정을 지원해 드립니다. 단, 타항공사를 이용하여 도착하시는 경우는 제외됩니다. (도착 및
														환승 항공편이 아시아나항공편일 경우에 한함)</dd>
												</dl>
											</div>
										</div>
										<h5 class="DXsection_h5 DXmar_top30">
											<img alt="라운지서비스" src="./asia_sub/img/SElounge_h5.gif">
										</h5>
										<div class="DXservice_group DXmar_top15 group2">
											<span class="booking_photo"><img alt="라운지서비스"
												src="./asia_sub/img/SElounge_photo01.gif"></span>
											<div class="booking_photo_right">
												<p class="DXsubcopy02">
													잠시 머무실 곳이지만, 떠나고 싶지 않은 편안함을 드립니다.<br> 업무와 휴식 모두를 위한
													이상적 공간, 저희 아시아나항공 라운지에서 곧 시작될 최고의 비행을 미리 경험 하십시오.
												</p>
												<p class="DXbtnType18_gap">
													<span class="btnType18"><a href="#">라운지 서비스</a></span>
												</p>
											</div>
										</div>
										<h5 class="DXsection_h5 DXmar_top30">
											<img alt="수하물서비스" src="./asia_sub/img/SEbaggage_h5.gif">
										</h5>
										<div class="DXservice_group DXmar_top15 group3">
											<span class="booking_photo"><img alt="수하물서비스"
												src="./asia_sub/img/SEbaggage_photo01.gif"></span>
											<div class="booking_photo_right">
												<p class="DXsubcopy02">
													고객을 정성껏 모시는 저희 아시아나항공의 세심한 손길은 <br> 고객님의 소중한 수하물 처리에도
													변함이 없습니다.
												</p>
												<p class="DXsection_h5_tit">무거운 짐이라도 걱정 없이</p>
												<ul class="DXnotice">
													<li class="no_bullet">고객님께 제공되는 무료수하물 추가허용 서비스라면 염려하실
														필요가 없습니다.</li>
												</ul>
												<p class="DXsection_h5_tit">큰 짐이라도 안심하실 수 있게</p>
												<ul class="DXnotice">
													<li class="no_bullet">고객께서 직접 운반하시기 힘든 큰 크기의 수하물은 저희
														직원이 직접 <br> 전용 운반도구를 이용하여 신속한 수속을 도와 드립니다.
													</li>
												</ul>
												<p class="DXsection_h5_tit">맡기신 짐을 가장 빨리 받으실 수 있게</p>
												<ul class="DXnotice">
													<li class="no_bullet">고단하신 여정 끝에 맡기셨던 짐을 기다리시는 불편함을 덜어
														드리기 위해 <br> 신속하고 정확하게 처리해 드립니다.
													</li>
												</ul>
												<p class="DXbtnType18_gap">
													<span class="btnType18"><a href="#">수하물 서비스</a></span>
												</p>
											</div>
										</div>
									</div>
									<!-- DXclass_menuList3끝 -->

									<div class="DXclass_menuList4">
										<h5 class="DXsection_h5">
											<img src="./asia_sub/img/SEfoodservice_h5.gif" alt="기내식서비스">
										</h5>
										<div class="DXservice_group DXmar_top15">
											<span class="booking_photo"><img
												src="./asia_sub/img/SEfood_photo01.gif" alt="기내식서비스"></span>
											<div class="booking_photo_right">
												<p class="DXsubcopy02">손님 한 분 한 분을 최고로 모시고자, 건강과 입맛을
													고려하여 엄선된 기내식을 조리장인의 정성을 담아 준비하였습니다. 궁중한식의 정통성을 유지하고 있는
													&lt;궁중음식연구원&gt;과 국내 이탈리아 음식의 선두 주자인 &lt;라쿠치나&gt;와의 제휴로 마련한
													다양한 궁중정찬과 양식을 품격 높은 와인서비스와 함께 즐기시기 바랍니다.</p>
												<p class="DXsubcopy02">* 10종의 다양한 궁중정찬은 사전 주문제로 운영되며, 서울
													출발 미주, 유럽 장거리 노선(2014.5.1 이후 출발편)에서 제공됩니다.</p>
												<p class="DXbtnType18_gap">
													<span class="btnType18"><a
														onclick="window.open(this.href,'','resizable=yes,location=no,menubar=no,scrollbars=no,status=no,toolbar=no,fullscreen=no,dependent=no,width=550,height=625,status'); return false"
														href="http://flyasiana.com/CW/ko/common/pageContent.do?pageId=PC_0884">궁중정찬
															사전 주문 메뉴 보기</a></span><span class="btnType18"><a
														href="/CW/ko/common/pageContent.do?pageId=PC_0413">기내식
															서비스</a></span>
												</p>
											</div>
										</div>
										<h5 class="DXsection_h5 DXmar_top30">
											<img src="./asia_sub/img/SEdutyfree_h5.gif" alt="기내면세품">
										</h5>
										<div class="DXservice_group DXmar_top15">
											<span class="booking_photo"><img
												src="http://ozimg.flyasiana.com/img_server/content_upload/editorimage/613832d4-c96b-48ea-9b27-4ce968f5b3c0.gif"
												alt="기내면세품"></span>
											<div class="booking_photo_right">
												<p class="DXsubcopy02">
													최고의 품질과 최상의 가격을 검증 받은 제품만을 만나보실 수 있는 가장 만족스러운 <br> 쇼핑
													공간, 아시아나항공의 기내면세를 통해 가족과 지인들께 기쁨을 선물하십시오.
												</p>
												<p class="DXsection_h5_tit">풍성한 아이템</p>
												<ul class="DXnotice">
													<li class="no_bullet">번잡한 출국장 면세지역에서의 고단한 쇼핑을 짐을
														덜어드리기에 충분한 약 240여개에<br> 달하는 풍성한 상품구성, 편안한 좌석에서 상품
														선택/결제까지 한번에 해결 하십시오.
													</li>
												</ul>
												<p class="DXsection_h5_tit">기내면세품 주문 예약제도</p>
												<ul class="DXnotice">
													<li class="no_bullet">한정된 탑재수량 때문에 원하시는 물건을 구입 못하실까
														걱정되십니까?<br> 전화/이메일/모바일을 통한 사전주문으로 탑승하신 운항편에게 원하시는 상품을
														<br> 정확하게 받아보실 수 있습니다.
													</li>
												</ul>
												<p class="DXbtnType18_gap">
													<span class="btnType18"><a
														href="/CW/ko/common/pageContent.do?pageId=PC_0162">면세품
															사전 주문</a></span>
												</p>
											</div>
										</div>
										<h5 class="DXsection_h5 DXmar_top30">
											<img src="./asia_sub/img/SEamenity_h5.gif" alt="수하물서비스">
										</h5>
										<div class="DXservice_group DXmar_top15 Am3">
											<span class="booking_photo"><img
												src="http://ozimg.flyasiana.com/img_server/content_upload/editorimage/1d9fe6b3-5fee-4bf3-85d2-39a3755ac8fd.gif"
												alt="수하물서비스"></span>
											<div class="booking_photo_right">
												<p class="DXsubcopy02">아시아나항공이 고객님만을 위해 특별히 준비한&nbsp;
													최고의 서비스를 통해 편안하고 품격높은 항공 여행을 즐기시기 바랍니다.</p>
												<p class="DXsection_h5_tit">미주,유럽노선</p>
												<ul class="DXnotice">
													<li class="no_bullet">최고급 Duck Down 을 넣어 만든 가볍고 따듯한
														침구세트를 준비해 드리며, 명품 브랜드&nbsp;코스메틱과 다양한 편의용품으로 구성된 Traveler's
														Kit 그리고 내 집과 같은 편안함을 느끼실 수 있도록 부드러운 감촉의 편의복을 서비스해 드립니다.</li>
												</ul>
												<p class="DXsection_h5_tit">모든 노선</p>
												<ul class="DXnotice">
													<li class="no_bullet">화장실내 최고급 코스메틱과 면 타올이 구비되어 있으며,
														포근하고 따듯한 울담요와 슬리퍼를 비롯하여 필기도구, 편지지 세트, 간단한 의약품이 상시 준비되어
														있습니다.</li>
												</ul>
											</div>
										</div>
										<h5 class="DXsection_h5 DXmar_top30">
											<img src="./asia_sub/img/SEentertain_h5.gif" alt="엔터테인먼트">
										</h5>
										<div class="DXservice_group DXmar_top15">
											<span class="booking_photo"><img
												src="./asia_sub/img/SEentertain_photo01.gif" alt="엔터테인먼트"></span>
											<div class="booking_photo_right">
												<p class="DXsubcopy02">
													업무로 바쁘셨던 지상에서는 누릴 수 없었던 여유.<br> 엄선한 최신 영화와 음악, 게임,
													다큐멘터리 등 다양한 컨텐츠가 최고의 시스템을 통해<br> 고객님들의 선택을 기다리고 있습니다.
													편안한 좌석에서 최고의 음식을 음미하시면서<br> 즐기실 수 있는 모처럼의 기쁨을 결코 놓치지
													마십시오.
												</p>
												<p class="DXbtnType18_gap">
													<span class="btnType18"><a
														href="/CW/ko/serviceMovie/serviceMovie.do?keyCategory=01">기내
															엔터테인먼트</a></span>
												</p>
											</div>
										</div>
									</div>
									<!-- DXclass_menuList4 끝  -->

								</div>
								<!-- DXclass_menulist 끝  -->
							</div>
							<!-- service_tabList 끝 -->

							<div class="common-boxRelationService">
								<div class="common-innerRelationService">
									<img src="./asia_sub/img/service.jpg">
								</div>
							</div>

						</div>
						<!-- ervice_contents 끝 -->
					</section>
					<!-- section 끝-->
				</div>
			</div>
		</div>
	</section>
	<footer>
		<jsp:include page="../asiana_inc/footer.jsp" />
	</footer>
	<!-- 퍼스트 끝  -->
</body>
</html>