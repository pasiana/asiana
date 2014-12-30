<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="./asiana_inc/css/footer.css" type="text/css" rel="stylesheet">
<link href="./asiana_inc/css/header.css" type="text/css" rel="stylesheet">
<title>Insert title here</title>
<script src="js/jquery-1.11.1.js"></script>
<script type="text/javascript">
$(function(){
	$('.info_title>a').click(function(){
		$(this).parent().parent().children('div').toggle();
		$(this).css('background',function(){
			if($(this).parent().parent().children('div').css('display') == "none"){
				return "#fff url('./asiana_inc/img/sub_event/blP_arrow.gif') no-repeat 678px 25px;color: #2a2c39;font-size: 16px;font-weight: bold;padding: 19px 0 18px 7px";
			} else {
				return "#f5f5f5 url('./asiana_inc/img/sub_event/blP_arrow_on.gif') no-repeat 678px 25px";
			}
		});
	});
	$('.info_view>span>a').click(function(){
		$(this).parent().parent().children('div').show();
	});
	$('.layer-slbClose').click(function(){
		$(this).parent().parent().hide();
	});
});
</script>
<style type="text/css">
#main {
	width: 100%;
	height: 1140px;
	overflow: hidden;
	position: relative;
}
#locationInner {
	position: relative;
	width: 956px;
	margin: 0 auto;
	height: 30px;
	line-height: 32px;
	z-index: 10;
}
#location ul li {
	float: left;
}
#location ul li span {
	padding: 0 8px;
}
#containerBody {
	margin: 0 0 0 195px;
	padding: 27px 0 100px 50px;
	min-height: 780px;
}
#containerBody h3 {
	font-size: 24px;
	color: #010101;
	font-weight: normal;
	margin: 0 0 44px 0;
	line-height: 28px;
}
.info_view strong {
	display: inline-block;
	margin: 0 0 15px 0;
	line-height: 20px;
	color: #000;
	font-size: 14px;
}
.info_content h5 {
	margin: 0 0 13px 0;
	display: block;
	font-size: 0.83em;
	font-weight: bold;
}
.info_view {
	position: relative;
	color: #666;
	line-height: 20px;
	padding: 21px 0 46px 7px;
	display: none;
}
.info_view>ul>li {
	float: left;
	width: 333px;
	margin: 45px 0 0 33px;
	border-bottom: none;
}
.info_accodian {
	border-top: 1px solid #60656c;
	margin: 0 0 44px 0;
}
.info_accodian li {
	border-bottom: 1px dotted #c2c3c5;
}
.info_accodian li.last {
	border-bottom: 1px solid #c2c2c2;
}
.info_title {
	font-weight: bold;
	display: block;
}
.info_title>a{
	display: block;
	background:#fff url('./asiana_inc/img/sub_event/blP_arrow.gif') no-repeat 678px 25px;
	color: #2a2c39;
	font-size: 16px;
	font-weight: bold;
	padding: 19px 0 18px 7px;
}
.text-close {
	color: #333;
	font-size: 11px;
	position: absolute;
	top: -37px;
	right: 41px;
}
.wd680box{position:absolute;top:0px;left:16px; background:url('./asiana_inc/img/sub_event/bgP_width680_top.gif') no-repeat 0 0;width:680px;padding:10px 0 0 0;z-index:9999;}
.wd680box-inner{background:url("./asiana_inc/img/sub_event/bgP_width680_bottom.gif") no-repeat 0 bottom;padding:0 2px 50px 2px;}
.titlebox{ background: #e8e8f7; line-height: 19px; margin: 0 8px 25px; padding: 0 0 0 9px;}
.titlebox strong{color: #201CB4; font-size: 13px;}
.content{border-top:1px solid #d3d2f0; padding:16px 22px 0 22px;}
.content-inner{height:337px; overflow-x:hidden; overflow-y:auto;}
.kor{background:url("./asiana_inc/img/sub_event/logoP_magic_boarding_pass.jpg") no-repeat 471px 0;}
.con-title{display:block; color:#333; line-height:20px; padding:25px 0 22px 0; font-size:16px;}
.content-inner ul li{line-height:20px; color:#333; border-bottom:none;}
.layer-slbClose{position:absolute; top:15px; right:15px;} 
</style>
</head>
<body>
	<!-- header 시작 -->
	<header>
		<jsp:include page="../asiana_inc/header.jsp" />
	</header>
	<!-- header 끝 -->
	<!-- section 시작 -->
	<section id="main">
		<!-- 헤더와 메인 사이 로케이션 박스 시작 -->
		<div id="locationBox" style="background: url('./asiana_inc/img/sub_event/bg_location.jpg') no-repeat center bottom;">
			<div id="locationInner">
				<div id="location">
					<ul>
						<li>
							<a href="#">Home</a>
							<span>></span>
						</li>
						<li>
							<a href="#">이벤트혜택</a>
							<span>></span>
						</li>
						<li style="color:#999;">매직보딩패스</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- 헤더와 메인 사이 로케이션 박스 끝 -->
		<!-- 메인 시작 -->
		<div id="containerBox" style="background: url('./asiana_inc/img/sub_event/bgP_body_boardingpass.jpg') no-repeat center 0">
			<div id="container" style="width: 956px;margin: 0 auto;position: relative;">
				<!-- aside(메인 왼쪽) 시작 -->
				<jsp:include page="aside.jsp" />
				<!-- aside(메인 왼쪽) 끝 -->
				<!-- 메인 오른쪽 -->
				<div id="skipCt">
					<section id="containerBody">
						<h3>매직 보딩 패스</h3>
						<div class="eventbox bg2">
							<div class="boarding">
								<h4 style="padding: 3px 0 0 1px;">
									<img src="./asiana_inc/img/sub_event/textP_boarding1.png">
								</h4>
								<div style="margin: 31px 0 59px 0;line-height: 22px;color: #000;">
									<img src="./asiana_inc/img/sub_event/textP_boarding2.png" style="margin: 0 0 9px 0;">
									<p style="margin: 0 0 0 1px;">
									아시아나항공 국내선, 국제선 이용 고객 (공동운항 항공편 제외)<br> 
									탑승일 기준 7일 동안 제휴사에서 이용하실 수 있습니다.
									</p>
								</div>
								<div class="info_content">
									<h5>
										<img src="./asiana_inc/img/sub_event/textP_boarding3.gif" style="border: 0 none;vertical-align: top;font-weight: bold;font-size: 0.83em;">
									</h5>
									<ul class="info_accodian">
										<li>
											<strong class="info_title">
												<a href="#none">01. 탑승권 자세히 보기</a>
											</strong>
											<div class="info_view">
											아래 4가지 타입 중 소지하고 계시는 보딩패스를 제시하시면 매직보딩패스 서비스를 이용하실 수 있습니다.<br>
											(이용 시 신분증을 함께 제시하시기 바랍니다.)
												<ul style="margin: -10px 0 0 -33px;">
													<li>
														<strong>01. 종이 탑승권</strong>
														<img src="./asiana_inc/img/sub_event/bgP_boarding_img1.jpg">													<p>
														탑승권 부분을 절취하여 제시하시면 매직보딩패스로 이용<br>
														가능합니다. 이용 시 신분증을 함께 제시하시기 바랍니다.
														</p>
													</li>
													<li>
														<strong>02. 국내선 키오스크 발급 탑승권</strong>
														<img src="./asiana_inc/img/sub_event/bgP_boarding_img2.jpg">
														<p>
														국내선 키오스크 발급 탑승권을 제시하시면<br> 
														매직보딩패스로 이용 가능합니다.
														</p>
													</li>
													<li>
														<strong>03. 온라인 체크인 시 이메일 보딩패스</strong>
														<img src="./asiana_inc/img/sub_event/bgP_boarding_img3.jpg">
														<p>
														홈페이지 및 모바일 웹/앱에서 인터넷 체크인을 하시는 경우<br> 
														메일로 받으신 탑승권 양식을 출력하여 제시하시면<br> 
														매직보딩패스로 이용 가능합니다.
														</p>
													</li>
													<li>
														<strong>04. 모바일 탑승권</strong>
														<img src="./asiana_inc/img/sub_event/bgP_boarding_img4.jpg">
														<p>
														모바일 웹/앱의 모바일탑승권을 제시하시면<br> 
														매직보딩패스로 이용 가능합니다.
														</p>
													</li>
												</ul>
												<strong class="text-close">
													<a href="#none">닫기</a>
												</strong>
											</div>
										</li>
										<li class="last">
											<strong class="info_title">
												<a href="#none">02. 이용 규정</a>
											</strong>
											<div class="info_view">
												- 탑승권은 본인만 사용 가능합니다.<br> 
												- 일부 제휴사는 사전 예약이 필요하오니, 제휴사/혜택에서 확인하시기 바랍니다.<br> 
												- 제공 혜택은 제휴사의 사정에 따라 사전 예고 없이 변경될 수 있습니다.
												<span style="background: url('./asiana_inc/img/sub_event/bg_btnLeft2.jpg') no-repeat 0 0; display: inline-block;">
													<a href="#none" style="background: url('./asiana_inc/img/sub_event/bg_btnRight2.jpg') no-repeat right 0;padding: 0 29px 0 13px;display: block;height: 22px;line-height: 22px;line-height: 22px;color: #4c4c4c;">이용 조건 모두 보기</a>
												</span>
												<div class="reWrapBox3 CreWrapBox" style="display: none;">
													<!-- layerPopup -->
													<div class="wd680box">
														<div class="wd680box-inner">
															<div class="titlebox">
																<strong>매직보딩패스 이용 조건 전문 </strong>
															</div> 
															<div class="content">
																<div class="content-inner">
																	<div class="kor">
																		<strong class="con-title">매직보딩패스 이용 조건 전문</strong>
																		<ul>
																			<li>1)  아시아나 "매직 보딩패스" 프로그램 (이하 프로그램)은 아시아나항공 탑승권 원본을 가지고 있는 승객에게만 <br>
																				혜택을 드리는 프로그램입니다.(공동 운항 편은 적용되지 않습니다.)
																			</li>
																			<li>2) 프로그램은 탑승자 본인에게만 혜택이 주어지며, 탑승 후 7일 후까지 혜택을 받으실 수 있습니다. </li>
																			<li>3) 아시아나항공 제휴업체 (이하 제휴업체)로부터 혜택을 받기 위해서는, 지불하기 전 탑승권 혜택요청과 함께 <br>
																				탑승권 원본과 사진이 있는 공식적인 신분증을 제시하셔야 합니다. 특히 호텔, 골프장 및 일부 식당의 경우 사전 <br>
																				예약을 하셔야 하며, 예약시 탑승권 사용을 사전에 알려야 합니다. 
																			</li>
																			<li>4) 아시아나항공은 프로그램 제휴업체의 서비스 혹은 물품의 질에 대하여 보장하지 않습니다. <br>
																				탑승자와 제휴업체 간의 연락과 계약 후 문제 발생시 책임은 탑승자 본인에게 있습니다. 
																			</li>
																			<li>5) 아시아나항공은 사전 고지 없이 프로그램을 변경하거나 종료할 수 있습니다. </li>
																			<li>6) 이 사이트에서 제공하는 내용은 특별히 언급하지 않는 한 2014년 12월까지 유효한 내용입니다. </li>
																			<li>7) 제공되는 할인 및 혜택은 다른 할인 및 혜택과 중복되어 적용되지 않습니다. </li>
																		</ul>
																	</div>
																</div>
															</div>
														</div>
														<a href="#none" class="layer-slbClose">
															<img src="./asiana_inc/img/sub_event/btn_close.gif">
														</a>
													</div>
													<!-- //layerPopup -->
													<div class="layer-slb"></div>
												</div>
												<strong class="text-close">
													<a href="#none">닫기</a>
												</strong>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</section>
				</div>
			</div>
		</div>
		<!-- 메인 끝 -->
	</section>
	<!-- section 끝 -->
	<!-- footer 시작 -->
	<footer>
		<jsp:include page="../asiana_inc/footer.jsp" />
	</footer>
	<!-- footer 끝 -->
</body>
</html>