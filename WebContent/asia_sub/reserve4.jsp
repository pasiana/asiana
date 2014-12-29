<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%
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
<title>예매4</title>
<link type="text/css" rel="stylesheet" href="css/reserve4.css">
<script src="js/jquery-1.11.1.js"></script>
<style type="text/css">
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
									
									<%if(res_sig_dou.equals("왕복")){ %>
									<!-- 오는날 정보  -->
									<li class="liType01 selectStart"><strong class="sTitle">오는
											날</strong>
										<div class="pType01">
											<strong>2015/<%=arr_day %><br><%=arr_time %>
											</strong><br>
										</div></li>
									<!-- 오는날 정보 끝  -->
									<%} %>
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
													<th scope="col" class="textRight">가는 편(<%=lea_city %>-<%=arr_city %>)</th>
													<%if(res_sig_dou.equals("왕복")){ %>
													<th scope="col" class="textRight">오는 편(<%=arr_city %>-<%=lea_city %>)</th>
													<%} %>
												</tr>
											</thead>

											<tbody>
												<tr>
													<th scope="col">항공운임</th>
													<%if(res_sig_dou.equals("왕복")){ %>
													<td><span class="pr"><%=lea_charge %></span> <span class="unit">원</span>
														<br></td>
													<td><span class="pr"><%=arr_charge %></span> <span class="unit">원</span>
														<br></td>
													<%}else{ %>
													<td><span class="pr"><%=charge %></span> <span class="unit">원</span>
														<br></td>
													<% } %>
												</tr>
												<tr>
													<th scope="col">유류할증료</th>
													<td><span class="pr">0</span> <span class="unit">원</span>
													</td>
													<td><span class="pr">0</span> <span class="unit">원</span>
													</td>
												</tr>
												<tr>
													<th scope="col">세금 및 제반요금</th>
													<td><span class="pr">0</span> <span class="unit">원</span></td>
													<td><span class="pr">0</span> <span class="unit">원</span></td>
												</tr>
											</tbody>
											<tfoot>
												<tr>
													<td colspan="3"><strong class="ttText">합계</strong><strong
														class="ttPrice"><%=charge %> 원</strong></td>
												</tr>
											</tfoot>
										</table>
									</div>
									<!-- 회원정보 끝 -->
									<div class="btnPrice">
										<span class="btnType06 btn_CpopupLayer"></span> <strong
											class="text">총 지불금액</strong> <span class="totalP"><strong><%=charge %></strong>
											원</span>
									</div>
								</div>
							</div>
						</section>
						<!-- 운임정보끝 -->
						
						<!-- 결제  -->
						<div class="fareMethodBox" >
							<h4 class="h4_type01">결제방식을 선택하세요.</h4>
							
							<div class="fareMethodTable">
								<div class="totalMethod">결제금액<br><strong class="money"><%=charge %></strong> <strong class="unit">원</strong></div>
								<div class="fareMethodText">
											<ul class="noticeList">
												<li>홈페이지를 통해 신용카드(체크카드 포함) 및 계좌이체를 통한 결제가 가능합니다. </li>
												<li>국내 발행 카드 이용 시 안전한 신용카드 거래를 위해 신용카드 인증이 필요합니다. </li>
												<li>신용카드 인증 시 발생한 오류는 반드시 해당 카드사로 문의하여 주시기 바랍니다. </li>
												<li>인터넷 익스플로러에서만 계좌이체가 가능합니다.</li>
												<li style="color:#581cb4;">해외발행 신용카드는 온라인 인증 서비스를 받은 Visa, Master 카드에 한해 영문사이트에서 구매 가능합니다.</li>
											</ul>

											<dl class="payment-select fareRule01" style="display: block; height: 20px;">
												<dt><strong>결제방식</strong></dt>
												<dd>
													<ul class="btn-cList">
														<li><a href="#none" id="btn-type-KV" val="KV" class="btn-type-1 on">신용카드</a></li>
													</ul>
												</dd>
											</dl>

											<!-- 신용카드 -->
											<dl class="payment-type-KV fareRule02" style="display: block;">
												<dt><strong>카드종류</strong></dt>
												<dd>
													<select id="cardClass_KV" name="cardClass_KV" style="border: 1px solid #9e9e9e;overflow: hidden;background-color: #fff;height:23px;width:180px">
														<option value="">선택하세요</option>
														<option value="016">KB국민카드</option>
														<option value="026">BC카드(하나,농협BC 포함)</option>
														<option value="026">우리카드</option>
														<option value="031">삼성카드</option>
														<option value="047">롯데카드</option>
														<option value="027">현대카드</option>
														<option value="029">신한(구 LG)카드</option>
														<option value="011">제주카드</option>
														<option value="018">NH(농협자체)Card</option>
														<option value="008">외환카드</option>
														<option value="022">씨티(한미)카드</option>
														<option value="026">산은카드</option>
														<option value="017">수협카드</option>
														<option value="010">전북카드</option>
														<option value="006">하나SK카드</option>
														<option value="002">광주은행</option>
													</select>
												</dd>
											</dl>
											<dl class="payment-type-KV fareRule02" style="display: block;">
												<dt><strong>할부선택</strong></dt>
												<dd>
													<select id="installmentType_KV" name="installmentType_KV" style="border: 1px solid #9e9e9e;overflow: hidden;background-color: #fff;height:23px;width:130px">
														<option value="00">일시불</option>
														<option value="02">2개월 할부</option>
														<option value="03">3개월 할부</option>
														<option value="04">4개월 할부</option>
														<option value="05">5개월 할부</option>
														<option value="06">6개월 할부</option>
														<option value="07">7개월 할부</option>
														<option value="08">8개월 할부</option>
														<option value="09">9개월 할부</option>
														<option value="10">10개월 할부</option>
														<option value="11">11개월 할부</option>
														<option value="12">12개월 할부</option>
													</select>
												</dd>
											</dl>
										</div>
							</div>
						</div>
						<!-- 결제 끝 -->
						
						<ul class="btnBoxType01">
							<li><span class="Sbtn_TType06_2"><a href="./reserve.re">예매취소</a></span></li>
							<li class="right"><span class="Bbtn_TType01_1"><a href="#">결제하기</a></span></li>
						</ul>
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