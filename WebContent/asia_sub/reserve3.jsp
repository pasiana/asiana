<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<%

String member_id = (String)session.getAttribute("member_id");
if(member_id == null) {
	response.sendRedirect("./AsianaLogin.me");
}

	String lea_city = (String)request.getAttribute("lea_city");
	String arr_city = (String)request.getAttribute("arr_city");
	String lea_time = (String)request.getAttribute("lea_time");
	String res_sig_dou = (String)request.getAttribute("res_sig_dou");
	int res_count = ((Integer) request.getAttribute("res_count")).intValue();
	String lea_day = (String)request.getAttribute("lea_day");
	int charge = ((Integer)request.getAttribute("charge")).intValue();
	
	//왕복
	String arr_time = (String)request.getAttribute("arr_time");
	String arr_day = (String)request.getAttribute("arr_day");
 	String arr_charge =(String)request.getAttribute("arr_charge");
 	String lea_charge =(String)request.getAttribute("lea_charge");
	
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>예매3</title>
<link type="text/css" rel="stylesheet" href="css/reserve3.css">
<script src="js/jquery-1.11.1.js"></script>
<script type="text/javascript">
	function back(){
		history.back();
	}
	
	var lea_city = "<%=lea_city %>";
	var arr_city = "<%=arr_city %>";
	var res_sig_dou = "<%=res_sig_dou %>";
	var lea_time = "<%=lea_time %>";
	var arr_time = "<%=arr_time %>";
	var res_count = "<%=res_count%>";
	var lea_day = "<%=lea_day%>";
	var arr_day = "<%=arr_day%>";
	var charge = "<%=charge%>";
	var lea_charge ="<%=lea_charge%>";
	var arr_charge ="<%=arr_charge%>";
	
	function submit_form3() {
		var url = "";
		if (res_sig_dou == "왕복") {
			url = "./reserve4.re?lea_city=" + lea_city + "&arr_city="
			+ arr_city + "&res_sig_dou=" + res_sig_dou + "&lea_time="
			+ lea_time + "&arr_time=" + arr_time + "&res_count=" + res_count + "&lea_day=" + lea_day +"&arr_day="+ arr_day + "&charge=" + charge
			+ "&lea_charge=" + lea_charge +"&arr_charge=" + arr_charge;
		} else {
			url = "./reserve4.re?lea_city=" + lea_city + "&arr_city="
			+ arr_city + "&res_sig_dou=" + res_sig_dou + "&lea_time="
			+ lea_time + "&res_count=" + res_count + "&lea_day=" + lea_day + "&charge=" + charge;
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
<% if(res_sig_dou.equals("왕복")){
	%>
	.selectITbox3 .selectITinner3 li.liType01.totalIntro .tBoxD .end.oneWay {
		background: url("https://flyasiana.com/images/bg/bg_arrow5.gif") no-repeat 0 3px;
		padding: 0 0 0 33px;
	}
	<%												
}%>
</style>
</head>
<body>
	<header>
		<jsp:include page="../asiana_inc/header.jsp" />
	</header>
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

		<section id="containerBody">
			<div id="containerBox">
				<div id="skipct">
					<h3>국내선 예매</h3>
					<ul class="rv_stepBox">
						<li class="step01_end">1. 여정 선택</li>
						<li class="step02_end">2. 운임/항공편 선택</li>
						<li class="step03_on">3. 여정/탑승자 확인</li>
						<li class="step04_off">4. 운임확인/결제</li>
						<li class="step05_off">5. 예약완료</li>
					</ul>

					<p class="helpOp">
						<span class="btnType06"><a href="#">예약도움말</a></span>
					</p>
					<!-- 위에 상단 끝 -->

					<!-- 본문  -->
					<div class="itineraryBoxPs fareBox">
						<div class="fareInner">
							<!-- 선택한 공항 시간, 인원 박스 시작 -->
							<div class="selectITbox3 domesticFlight">
								<div class="selectITinner3">
									<ul style="height: 88px;">
									<!-- 사람수, 공항 -->
									<li class="liType01 totalIntro"><strong class="sTitle">총
											인원 <%=res_count %>명</strong>
										<div class="tBoxD">
											<p class="start">
												<strong><%=lea_city %></strong><br> 
											</p>
											<p class="end oneWay">
												<strong><%=arr_city %></strong><br> 
											</p>
										</div></li>
									<!-- 사람수, 공항 끝-->

									<!-- 가는날 정보 -->
									<li class="liType01 selectStart"><strong class="sTitle">가는
											날</strong>
										<div class="pType01">
											<strong>2015/<%=lea_day %><br><%=lea_time %>
											</strong><br>
										</div></li>
									<!-- 가는날 정보 끝 -->
									
									<% if(res_sig_dou.equals("왕복")){ %>
									<!-- 오는날 정보  -->
									<li class="liType01 selectStart"><strong class="sTitle">오는
											날</strong>
										<div class="pType01">
											<strong>2015/<%=arr_day %><br><%=arr_time %>
											</strong><br>
										</div></li>
									<!-- 오는날 정보 끝  -->
									<% }%>
								</ul>
								</div>
							</div>
							<!-- 선택한 공항 시간, 인원 박스 끝 -->

							<!-- 알림문 -->
							<div class="notice_container">
								<div class="notice_Inner innerType01">
									<ul class="notice">
										<li>반드시 실제 탑승하실 분의 성명을 입력하십시오. (예약 후 변경이 불가합니다)</li>
										<li>외국 국적이신 경우 성함을 여권상 영문으로 입력하여 주시기 바랍니다.</li>
										<li>탑승 완료 후에는 소급하여 할인을 적용 받을 수 없으므로 할인 대상 손님께서는 항공권 구입,
											탑승 시<br>할인 증빙서류를 소지하여 주시기 바랍니다.
										</li>
										<li>스타얼라이언스 회원사로 마일리지 적립을 원하는 경우 반드시 영문 성함으로 입력하여 주시기
											바랍니다. 에어부산이 운항하는 공동운항편은 스타얼라이언스 회원사로 마일리지 적립이 불가합니다.</li>
										<li><img src="img/bg_communal2.gif" alt="공동운항"> 표기는
											공동운항을 의미하며, 마우스를 클릭하시면 세부 항공편이 안내됩니다.</li>
									</ul>
								</div>
							</div>
							<!-- 알림문 끝 -->

							<!-- 탑승자 정보 -->
							<div class="passengerBox z1">
								<h4 class="h4_type01">탑승자 정보</h4>

								<div class="passengerInner">
									<p class="sTitle">
										<strong>성인</strong>
									</p>

									<div class="passengerBody">

										<div class="entryBox">
											<div class="paragraph double" style="height: 59px;">
												<div style="float: left; width: 155px; height: 33px;">
													<div class="text gap-1">
														<label for="tt_name1_1"><strong>성명</strong></label>
													</div>
												</div>

												<div style="float: left; width: 470px;">
													<p
														style="font-size: 11px; font-family: '돋움'; clear: both; padding: 8px 1px 1px 0;">
														<span style="color: #5e14cc;">예시)</span> 홍/길동 또는
														HONG/KILDONG
													</p>
													<div class="entry z2" style="width: 231px;">
														<label for="familyName0" style=><strong>성</strong>(family
															name)</label> <input type="text" class="text01"
															style="width: 95px; text-transform: uppercase;">
														<span style="padding-left: 10px;">/</span>
													</div>
													<div class="text gap-2" style="width: 100px;">
														<label for="givenName0"><strong>이름</strong>(first
															name)</label>
													</div>
													<div class="entry z2"
														style="width: 139px; float: right; margin: -35px 10px 0 0;">
														<input type="text" class="text01"
															style="width: 135px; text-transform: uppercase;">
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- 탑승자 정보 끝 -->

							<!-- 예약정보 수신 연락처  -->
							<div class="passengerBox mB11 z2">
								<h4 class="h4_type01">예약정보 수신 연락처</h4>

								<div class="passengerInner">
									<div class="passengerCt">
										<div class="text">
											<label for="tt_phone01"><strong>휴대전화</strong></label>
										</div>
										<div class="entry">
											<div>
												<input type="text" class="text01" id="phoneNo1"
													name="phoneNo1" maxlength="4" title="휴대전화 앞번호"
													style="width: 95px;"> - <input type="text"
													class="text01" id="phoneNo2" name="phoneNo2" maxlength="4"
													title="가운데번호" style="width: 95px;"> - <input
													type="text" class="text01" id="phoneNo3" name="phoneNo3"
													maxlength="4" title="끝번호" style="width: 95px;">
											</div>
										</div>
									</div>

									<div class="passengerCt  bB0">
										<div class="text">
											<strong><label for="tt_email">이메일주소</label></strong>
										</div>
										<div class="entry">
											<div>
												<input type="text" class="text01" id="tt_email"
													name="tt_email" style="width: 480px;">
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- 예약정보 수신 연락처 끝 -->

							<!-- 수신연락처 밑에 글  -->
							<ul class="noticeList mB26">
								<li>휴대전화번호 입력 시 SMS로 결제 정보 및 항공편 변경 정보를 확인하실 수 있습니다.</li>
								<li>예약정보 수신 연락처에 작성하신 이메일로 구매 결과와 여정안내서를 전송해드립니다.</li>
							</ul>
							<!-- 수신연락처 밑에 글 끝 -->

							<!-- 하단 버튼부분  -->
							<ul class="btnBoxType01">
								<li><span class="Sbtn_TType06_1"><a href="#" onclick="back();">이전단계</a></span></li>
								<li class="right"><span class="Bbtn_TType01_1">
								<a href="#" onclick="submit_form3();">계속하기</a></span></li>
							</ul>
							<!-- 하단 버튼부분 끝  -->
						</div>
					</div>
					<!-- 본문끝 -->

				</div>
			</div>
			<!-- containerBox끝  -->
		</section>
	</section>
	<footer>
		<jsp:include page="../asiana_inc/footer.jsp" />
	</footer>
</body>
</html>