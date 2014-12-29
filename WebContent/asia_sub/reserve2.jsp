<%@page import="com.cafe24.itwill3.reservation.db.ReservationBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<%
		//편도
		List<ReservationBean> relist = (List)request.getAttribute("relist");
		String lea_city = (String)request.getAttribute("lea_city");
		String arr_city = (String)request.getAttribute("arr_city");
		String lea_time = (String)request.getAttribute("lea_time");
		String res_sig_dou = (String)request.getAttribute("res_sig_dou");
		int res_count = ((Integer) request.getAttribute("res_count")).intValue();
		List<ReservationBean> leaday =(List)request.getAttribute("leaday");
		
		//왕복
		String arr_time =(String)request.getAttribute("arr_time");
		List<ReservationBean> arrlist=(List)request.getAttribute("arrlist");
		List<ReservationBean> arrday = (List)request.getAttribute("arrday");
	%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>예매2</title>
<link type="text/css" rel="stylesheet" href="./asia_sub/css/reserve2.css">
<script src="js/jquery-1.11.1.js"></script>
<script type="text/javascript">
	var lea_city="<%=lea_city %>";
	var arr_city="<%=arr_city %>";
	var res_sig_dou="<%=res_sig_dou%>";
	var res_count="<%=res_count%>";
	
	$(document).ready(function(){
		//편도 li버튼
		$('.btnDay').click(function() {
			$('.btnDay').css("background","url('./asia_sub/img/bg_stTitle.gif') no-repeat 0 0");
			$('.btnDay .day').css("color","#333");
			$(this).css("background","url('https://flyasiana.com/images/bg/bg_stTitle_on.gif') no-repeat 0 0");
			$(this).find('.day').css("color","#fff");
			
			//li 클릭된값 밑에 정보 나오기
			var day_click_index = $(this).index();
			$('.all_table>tbody').hide();
			$('.all_table>tbody').eq(day_click_index).show();
		});
		
		//왕복 li버튼
		$('.btnDay1').click(function() {
			$('.btnDay1').css("background","url('./asia_sub/img/bg_stTitle.gif') no-repeat 0 0");
			$('.btnDay1 .day').css("color","#333");
			$(this).css("background","url('https://flyasiana.com/images/bg/bg_stTitle_on.gif') no-repeat 0 0");
			$(this).find('.day').css("color","#fff");
			
			//li 클릭된값 밑에 정보 나오기
			var day_click_index = $(this).index();
			$('.all_table1>tbody').hide();
			$('.all_table1>tbody').eq(day_click_index).show();
			
		});
		
		//편도 선택버튼 눌럿을때
		$('.last-td').click(function(){
			$('.last-td').css("background","none");
			$(this).css("background","#FFE400");
		});
		
		//왕복 선택버튼 눌럿을때
		$('.arr_last-td').click(function(){
			$('.arr_last-td').css("background","none");
			$(this).css("background","#FFE400");
		});
	});
	
	//'선택' 눌렀을때 정보값 나오게하기
	var lea_time=""; //출발시간
	var charge=""; //운임가격
	var lea_day=""; //가는날짜
	
	var arr_day=""; //오는날짜(왕복)
	var arr_time=""; //출발시간(왕복)
	var charge2=""; //운임가격(왕복)
	
	//편도에서 선택 눌렀을 시
	function btns(chk)
	{  
	    var row = chk.parentElement.parentElement.parentElement;
	    var txtCell = "출발날짜:"+row.cells[7].innerText+"\n출발시간:"+row.cells[1].innerText+"\n도착시간:"+row.cells[2].innerText+"\n요금:"+row.cells[5].innerText;
	    alert(txtCell);
	    
	    //값넣기
	    lea_time=row.cells[1].innerText; //출발시간
	    charge=row.cells[5].innerText;
	    lea_day=row.cells[7].innerText;
	}
	
	//왕복에서 선택 눌렀을 시
	function btns2(chk)
	{  
	    var row = chk.parentElement.parentElement.parentElement;
	    var txtCell ="출발날짜:"+row.cells[7].innerText+"\n출발시간:"+row.cells[1].innerText+"\n도착시간:"+row.cells[2].innerText+"\n요금:"+row.cells[5].innerText;
	    alert(txtCell);
	    
	    //값넣기
	    arr_time=row.cells[1].innerText; //출발시간
	    charge2=row.cells[5].innerText;
	    arr_day=row.cells[7].innerText;
	}
	
	//예약3번째페이지 값넘기는 스크립트
	function submit_form2() {
		charge = charge.split("원");
		charge = Number(charge[0]);
		charge2 = charge2.split("원");
		charge2 = Number(charge2[0]);
		
		var url = "";
		if (res_sig_dou == "왕복") {
			//왕복일때 요금 합
			sumCharge=charge+charge2;
			
			url = "./reserve3.re?lea_city=" + lea_city + "&arr_city="
			+ arr_city + "&res_sig_dou=" + res_sig_dou + "&lea_time="
			+ lea_time + "&arr_time=" + arr_time + "&res_count=" + res_count + "&lea_day=" + lea_day +"&arr_day="+ arr_day + "&charge=" + sumCharge
			+ "&lea_charge=" + charge +"&arr_charge=" + charge2;
		} else {
			url = "./reserve3.re?lea_city=" + lea_city + "&arr_city="
					+ arr_city + "&res_sig_dou=" + res_sig_dou + "&lea_time="
					+ lea_time + "&res_count=" + res_count + "&lea_day=" + lea_day + "&charge=" + charge;
		}
		location.href = url;
	}
</script>
<style type="text/css">
.tableBox04 .dayListBox ul li:nth-child(1){
	background:url('https://flyasiana.com/images/bg/bg_stTitle_on.gif') no-repeat 0 0;
}
.tableBox04 .dayListBox ul li:nth-child(1) .day{
	color: #fff;
}
.dayno{
	font-size: 15px;
}
.trnone{
	font-size: 16px;
	text-align: center;
	height: 30px;
	padding-top: 10px; 
}

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
	.selectITbox4 .selectITinner4 .sLeft .upsellEnd.oneWay {
		background: url("https://flyasiana.com/images/bg/bg_arrowSE.gif") no-repeat 10px center;
	}
	<%												
}%>


</style>
</head>
<body>
<form method="post">
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
									<span class="upsellStart"><strong><%=lea_city %></strong></span> <span
										class="upsellEnd oneWay"><strong><%=arr_city %></strong></span> <span
										class="ppCnt">( <strong>탑승객 <%=res_count %>명</strong>&nbsp;<span>:&nbsp;성인&nbsp;<%=res_count %>명</span>
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
								<strong>가는 항공편</strong> <%=lea_city %> → <%=arr_city %> 
							</p>
							
							<div class="dayListBox">
							<% if(lea_time.equals("01/01")){
								
							%>
								<ul id="day">
								<%
									for(int i=0; i<7; i++){
									ReservationBean reservationBean = leaday.get(i);
								%>
									<li class="btnDay" id="chagneDateSearch">
										<a href="#">
											<strong class="day leaday"><%=reservationBean.getLeaDay() %></strong> <span class="price"><strong>87,700</strong>
											<span class="sm">원</span><br>부터</span>
										</a>
									</li>
									<%} 
									
									} else {%>
										<strong class="dayno">선택한 날짜에 항공운항이 없습니다.</strong>
									<%
										}
									%>
								</ul>
							</div>

							<div class="tableTypeBox01">
								<div class="inner-table"
									style="overflow-x: hidden; max-height: 640px;">
									<table class="tableType03 mT0 all_table" id="tbDepartureFlightList">
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
										<% if(lea_time.equals("01/01")){
								
										%>
										<tbody>
											<%
											for(int i=0; i<leaday.size(); i++){
												ReservationBean reservationBean = leaday.get(i);
												if(reservationBean.getLeaDay().equals("01/01/목")){
													for(i=0; i<relist.size(); i++){
														ReservationBean rBean = relist.get(i);
														if(rBean.getLeaDay().equals("01/01/목")){
											%>
											<tr class="tr">
												<td rowspan="1"><span class="box"><span
														class="text-type-1"><%=rBean.getFlightNum() %> </span></span></td>
												<td rowspan="1"><span class="box"><strong><%=rBean.getLeaTime() %></strong></span></td>
												<td rowspan="1"><span class="box"><strong><%=rBean.getArrTime() %></strong></span></td>
												<td rowspan="1"><span class="box"><a
														class="bl_go" href="#none" id="searchFlightInfo"><%=rBean.getFlyModel() %></a></span></td>

												<td class="hover_td"><span class="box"><span
														class="day">-적립가능</span></span></td>
												<td class="hover_td"><span class="box"> <span
														class="price"> <strong><%=rBean.getCharge() %></strong> 원<br>
													</span>
												</span></td>
												<td class="hover_td"><span class="box"><strong><%=rBean.getSeats() %></strong>석</span>
												</td>
												<td style="display: none;">
												<span class="box"><strong><%=rBean.getLeaDay() %></strong></span>
												</td>
												<td class="last-td last-child hover_td"><span
													class="Sbtn_TType07_3"><a href="#none"
														id="ra_depAvail0" onclick="btns(this)">선택</a></span></td>
											</tr>
											<%			}
													} 
												}
											}
											%>
										</tbody>
										<% } else { %>
											<tbody>
												<tr>
													<td colspan="8" class="trnone" ><strong>선택한 날짜에 항공운항이 없습니다.</strong></td>
												</tr>
											</tbody>
											<%
										}
										%>
										
										
										<tbody style="display: none;">
											<%
											for(int i=0; i<leaday.size(); i++){
												ReservationBean reservationBean = leaday.get(i);
												if(reservationBean.getLeaDay().equals("01/02/금")){
													for(i=0; i<relist.size(); i++){
														ReservationBean rBean = relist.get(i);
														if(rBean.getLeaDay().equals("01/02/금")){
											%>
											<tr>
												<td rowspan="1"><span class="box"><span
														class="text-type-1"><%=rBean.getFlightNum() %> </span></span></td>
												<td rowspan="1"><span class="box"><strong><%=rBean.getLeaTime() %></strong></span></td>
												<td rowspan="1"><span class="box"><strong><%=rBean.getArrTime() %></strong></span></td>
												<td rowspan="1"><span class="box"><a
														class="bl_go" href="#none" id="searchFlightInfo"><%=rBean.getFlyModel() %></a></span></td>

												<td class="hover_td"><span class="box"><span
														class="day">-적립가능</span></span></td>
												<td class="hover_td"><span class="box"> <span
														class="price"> <strong><%=rBean.getCharge() %></strong> 원<br>
													</span>
												</span></td>
												<td class="hover_td"><span class="box"><strong><%=rBean.getSeats() %></strong>석</span>
												</td>
												<td style="display: none;">
												<span class="box"><strong><%=rBean.getLeaDay() %></strong></span>
												</td>
												<td class="last-td last-child hover_td"><span
													class="Sbtn_TType07_3"><a href="#none"
														id="ra_depAvail0" onclick="btns(this)">선택</a></span></td>
											</tr>
											<%			}
													} 
												}
											}
											%>
										</tbody>
										
										<tbody style="display: none;">
											<%
											for(int i=0; i<leaday.size(); i++){
												ReservationBean reservationBean = leaday.get(i);
												if(reservationBean.getLeaDay().equals("01/03/토")){
													for(i=0; i<relist.size(); i++){
														ReservationBean rBean = relist.get(i);
														if(rBean.getLeaDay().equals("01/03/토")){
											%>
											<tr>
												<td rowspan="1"><span class="box"><span
														class="text-type-1"><%=rBean.getFlightNum() %> </span></span></td>
												<td rowspan="1"><span class="box"><strong><%=rBean.getLeaTime() %></strong></span></td>
												<td rowspan="1"><span class="box"><strong><%=rBean.getArrTime() %></strong></span></td>
												<td rowspan="1"><span class="box"><a
														class="bl_go" href="#none" id="searchFlightInfo"><%=rBean.getFlyModel() %></a></span></td>

												<td class="hover_td"><span class="box"><span
														class="day">-적립가능</span></span></td>
												<td class="hover_td"><span class="box"> <span
														class="price"> <strong><%=rBean.getCharge() %></strong> 원<br>
													</span>
												</span></td>
												<td class="hover_td"><span class="box"><strong><%=rBean.getSeats() %></strong>석</span>
												</td>
												<td style="display: none;">
												<span class="box"><strong><%=rBean.getLeaDay() %></strong></span>
												</td>
												<td class="last-td last-child hover_td"><span
													class="Sbtn_TType07_3"><a href="#none"
														id="ra_depAvail0" onclick="btns(this)">선택</a></span></td>
											</tr>
											<%			}
													} 
												}
											}
											%>
										</tbody>
										
										<tbody style="display: none;">
											<%
											for(int i=0; i<leaday.size(); i++){
												ReservationBean reservationBean = leaday.get(i);
												if(reservationBean.getLeaDay().equals("01/04/일")){
													for(i=0; i<relist.size(); i++){
														ReservationBean rBean = relist.get(i);
														if(rBean.getLeaDay().equals("01/04/일")){
											%>
											<tr>
												<td rowspan="1"><span class="box"><span
														class="text-type-1"><%=rBean.getFlightNum() %> </span></span></td>
												<td rowspan="1"><span class="box"><strong><%=rBean.getLeaTime() %></strong></span></td>
												<td rowspan="1"><span class="box"><strong><%=rBean.getArrTime() %></strong></span></td>
												<td rowspan="1"><span class="box"><a
														class="bl_go" href="#none" id="searchFlightInfo"><%=rBean.getFlyModel() %></a></span></td>

												<td class="hover_td"><span class="box"><span
														class="day">-적립가능</span></span></td>
												<td class="hover_td"><span class="box"> <span
														class="price"> <strong><%=rBean.getCharge() %></strong> 원<br>
													</span>
												</span></td>
												<td class="hover_td"><span class="box"><strong><%=rBean.getSeats() %></strong>석</span>
												</td>
												<td style="display: none;">
												<span class="box"><strong><%=rBean.getLeaDay() %></strong></span>
												</td>
												<td class="last-td last-child hover_td"><span
													class="Sbtn_TType07_3"><a href="#none"
														id="ra_depAvail0" onclick="btns(this)">선택</a></span></td>
											</tr>
											<%			}
													} 
												}
											}
											%>
										</tbody>
										
										<tbody style="display: none;">
											<%
											for(int i=0; i<leaday.size(); i++){
												ReservationBean reservationBean = leaday.get(i);
												if(reservationBean.getLeaDay().equals("01/05/월")){
													for(i=0; i<relist.size(); i++){
														ReservationBean rBean = relist.get(i);
														if(rBean.getLeaDay().equals("01/05/월")){
											%>
											<tr>
												<td rowspan="1"><span class="box"><span
														class="text-type-1"><%=rBean.getFlightNum() %> </span></span></td>
												<td rowspan="1"><span class="box"><strong><%=rBean.getLeaTime() %></strong></span></td>
												<td rowspan="1"><span class="box"><strong><%=rBean.getArrTime() %></strong></span></td>
												<td rowspan="1"><span class="box"><a
														class="bl_go" href="#none" id="searchFlightInfo"><%=rBean.getFlyModel() %></a></span></td>

												<td class="hover_td"><span class="box"><span
														class="day">-적립가능</span></span></td>
												<td class="hover_td"><span class="box"> <span
														class="price"> <strong><%=rBean.getCharge() %></strong> 원<br>
													</span>
												</span></td>
												<td class="hover_td"><span class="box"><strong><%=rBean.getSeats() %></strong>석</span>
												</td>
												<td style="display: none;">
												<span class="box"><strong><%=rBean.getLeaDay() %></strong></span>
												</td>
												<td class="last-td last-child hover_td"><span
													class="Sbtn_TType07_3"><a href="#none"
														id="ra_depAvail0" onclick="btns(this)">선택</a></span></td>
											</tr>
											<%			}
													} 
												}
											}
											%>
										</tbody>
										
										<tbody style="display: none;">
											<%
											for(int i=0; i<leaday.size(); i++){
												ReservationBean reservationBean = leaday.get(i);
												if(reservationBean.getLeaDay().equals("01/06/화")){
													for(i=0; i<relist.size(); i++){
														ReservationBean rBean = relist.get(i);
														if(rBean.getLeaDay().equals("01/06/화")){
											%>
											<tr>
												<td rowspan="1"><span class="box"><span
														class="text-type-1"><%=rBean.getFlightNum() %> </span></span></td>
												<td rowspan="1"><span class="box"><strong><%=rBean.getLeaTime() %></strong></span></td>
												<td rowspan="1"><span class="box"><strong><%=rBean.getArrTime() %></strong></span></td>
												<td rowspan="1"><span class="box"><a
														class="bl_go" href="#none" id="searchFlightInfo"><%=rBean.getFlyModel() %></a></span></td>

												<td class="hover_td"><span class="box"><span
														class="day">-적립가능</span></span></td>
												<td class="hover_td"><span class="box"> <span
														class="price"> <strong><%=rBean.getCharge() %></strong> 원<br>
													</span>
												</span></td>
												<td class="hover_td"><span class="box"><strong><%=rBean.getSeats() %></strong>석</span>
												</td>
												<td style="display: none;">
												<span class="box"><strong><%=rBean.getLeaDay() %></strong></span>
												</td>
												<td class="last-td last-child hover_td"><span
													class="Sbtn_TType07_3"><a href="#none"
														id="ra_depAvail0" onclick="btns(this)">선택</a></span></td>
											</tr>
											<%			}
													} 
												}
											}
											%>
										</tbody>
										
										<tbody style="display: none;">
											<%
											for(int i=0; i<leaday.size(); i++){
												ReservationBean reservationBean = leaday.get(i);
												if(reservationBean.getLeaDay().equals("01/07/수")){
													for(i=0; i<relist.size(); i++){
														ReservationBean rBean = relist.get(i);
														if(rBean.getLeaDay().equals("01/07/수")){
											%>
											<tr>
												<td rowspan="1"><span class="box"><span
														class="text-type-1"><%=rBean.getFlightNum() %> </span></span></td>
												<td rowspan="1"><span class="box"><strong><%=rBean.getLeaTime() %></strong></span></td>
												<td rowspan="1"><span class="box"><strong><%=rBean.getArrTime() %></strong></span></td>
												<td rowspan="1"><span class="box"><a
														class="bl_go" href="#none" id="searchFlightInfo"><%=rBean.getFlyModel() %></a></span></td>

												<td class="hover_td"><span class="box"><span
														class="day">-적립가능</span></span></td>
												<td class="hover_td"><span class="box"> <span
														class="price"> <strong><%=rBean.getCharge() %></strong> 원<br>
													</span>
												</span></td>
												<td class="hover_td"><span class="box"><strong><%=rBean.getSeats() %></strong>석</span>
												</td>
												<td style="display: none;">
												<span class="box"><strong><%=rBean.getLeaDay() %></strong></span>
												</td>
												<td class="last-td last-child hover_td"><span
													class="Sbtn_TType07_3"><a href="#none"
														id="ra_depAvail0" onclick="btns(this)">선택</a></span></td>
											</tr>
											<%			}
													} 
												}
											}
											%>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<!-- 가는항공편끝 -->
						
						<%if(res_sig_dou.equals("왕복")) 
							{
						%>
						<!-- 오는 항공편  -->
						<div class="tableBox04" >
							<p class="comingAr">
								<strong>오는 항공편</strong>  <%=arr_city %> → <%=lea_city %>
							</p>

							<div class="dayListBox">
								<% if(arr_time.equals("01/03")){
									
								%>
									<ul id="day">
									<%
										for(int i=0; i<arrday.size(); i++){
										ReservationBean reservationBean = arrday.get(i);
									%>
										<li class="btnDay1" id="chagneDateSearch">
											<a href="#">
												<strong class="day"><%=reservationBean.getArrDay() %></strong> <span class="price"><strong>87,700</strong>
												<span class="sm">원</span><br>부터</span>
											</a>
										</li>
										<%} 
										
										} else {%>
											<strong class="dayno">선택한 날짜에 항공운항이 없습니다.</strong>
										<%
											}
										%>
									</ul>
							</div>

							<div class="tableTypeBox01">
								<div class="inner-table"
									style="overflow-x: hidden; max-height: 640px;">
								<table class="tableType03 mT0 all_table1" id="tbDepartureFlightList">
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
										<% if(arr_time.equals("01/03")){
								
										%>
										<tbody>
											<%
											for(int i=0; i<arrday.size(); i++){
												ReservationBean reservationBean = arrday.get(i);
												if(reservationBean.getArrDay().equals("01/03/토")){
													for(i=0; i<arrlist.size(); i++){
														ReservationBean rBean = arrlist.get(i);
														if(rBean.getArrDay().equals("01/03/토")){
											%>
											<tr>
												<td rowspan="1"><span class="box"><span
														class="text-type-1"><%=rBean.getFlightNum() %> </span></span></td>
												<td rowspan="1"><span class="box"><strong><%=rBean.getLeaTime() %></strong></span></td>
												<td rowspan="1"><span class="box"><strong><%=rBean.getArrTime() %></strong></span></td>
												<td rowspan="1"><span class="box"><a
														class="bl_go" href="#none" id="searchFlightInfo"><%=rBean.getFlyModel() %></a></span></td>

												<td class="hover_td"><span class="box"><span
														class="day">-적립가능</span></span></td>
												<td class="hover_td"><span class="box"> <span
														class="price"> <strong><%=rBean.getCharge() %></strong> 원<br>
													</span>
												</span></td>
												<td class="hover_td"><span class="box"><strong><%=rBean.getSeats() %></strong>석</span>
												</td>
												<td style="display: none;">
												<span class="box"><strong><%=rBean.getArrDay()%></strong></span>
												</td>
												<td class="last-child hover_td arr_last-td"><span
													class="Sbtn_TType07_3"><a href="#none"
														id="ra_depAvail0" onclick="btns2(this)">선택</a></span></td>
											</tr>
											<%			}
													} 
												}
											}
											%>
										</tbody>
										<% } else { %>
											<tbody>
												<tr>
													<td colspan="8" class="trnone" ><strong>선택한 날짜에 항공운항이 없습니다.</strong></td>
												</tr>
											</tbody>
											<%
										}
										%>
										
										
										<tbody style="display: none;">
											<%
											for(int i=0; i<arrday.size(); i++){
												ReservationBean reservationBean = arrday.get(i);
												if(reservationBean.getArrDay().equals("01/04/일")){
													for(i=0; i<arrlist.size(); i++){
														ReservationBean rBean = arrlist.get(i);
														if(rBean.getArrDay().equals("01/04/일")){
											%>
											<tr>
												<td rowspan="1"><span class="box"><span
														class="text-type-1"><%=rBean.getFlightNum() %> </span></span></td>
												<td rowspan="1"><span class="box"><strong><%=rBean.getLeaTime() %></strong></span></td>
												<td rowspan="1"><span class="box"><strong><%=rBean.getArrTime() %></strong></span></td>
												<td rowspan="1"><span class="box"><a
														class="bl_go" href="#none" id="searchFlightInfo"><%=rBean.getFlyModel() %></a></span></td>

												<td class="hover_td"><span class="box"><span
														class="day">-적립가능</span></span></td>
												<td class="hover_td"><span class="box"> <span
														class="price"> <strong><%=rBean.getCharge() %></strong> 원<br>
													</span>
												</span></td>
												<td class="hover_td"><span class="box"><strong><%=rBean.getSeats() %></strong>석</span>
												</td>
												<td style="display: none;">
												<span class="box"><strong><%=rBean.getArrDay()%></strong></span>
												</td>
												<td class="last-child hover_td arr_last-td"><span
													class="Sbtn_TType07_3"><a href="#none"
														id="ra_depAvail0" onclick="btns2(this)" >선택</a></span></td>
											</tr>
											<%			}
													} 
												}
											}
											%>
										</tbody>
										
										<tbody style="display: none;">
											<%
											for(int i=0; i<arrday.size(); i++){
												ReservationBean reservationBean = arrday.get(i);
												if(reservationBean.getArrDay().equals("01/05/월")){
													for(i=0; i<arrlist.size(); i++){
														ReservationBean rBean = arrlist.get(i);
														if(rBean.getArrDay().equals("01/05/월")){
											%>
											<tr>
												<td rowspan="1"><span class="box"><span
														class="text-type-1"><%=rBean.getFlightNum() %> </span></span></td>
												<td rowspan="1"><span class="box"><strong><%=rBean.getLeaTime() %></strong></span></td>
												<td rowspan="1"><span class="box"><strong><%=rBean.getArrTime() %></strong></span></td>
												<td rowspan="1"><span class="box"><a
														class="bl_go" href="#none" id="searchFlightInfo"><%=rBean.getFlyModel() %></a></span></td>

												<td class="hover_td"><span class="box"><span
														class="day">-적립가능</span></span></td>
												<td class="hover_td"><span class="box"> <span
														class="price"> <strong><%=rBean.getCharge() %></strong> 원<br>
													</span>
												</span></td>
												<td class="hover_td"><span class="box"><strong><%=rBean.getSeats() %></strong>석</span>
												</td>
												<td style="display: none;">
												<span class="box"><strong><%=rBean.getArrDay()%></strong></span>
												</td>
												<td class="last-child hover_td arr_last-td"><span
													class="Sbtn_TType07_3"><a href="#none"
														id="ra_depAvail0" onclick="btns2(this)">선택</a></span></td>
											</tr>
											<%			}
													} 
												}
											}
											%>
										</tbody>
										
										<tbody style="display: none;">
											<%
											for(int i=0; i<arrday.size(); i++){
												ReservationBean reservationBean = arrday.get(i);
												if(reservationBean.getArrDay().equals("01/06/화")){
													for(i=0; i<arrlist.size(); i++){
														ReservationBean rBean = arrlist.get(i);
														if(rBean.getArrDay().equals("01/06/화")){
											%>
											<tr>
												<td rowspan="1"><span class="box"><span
														class="text-type-1"><%=rBean.getFlightNum() %> </span></span></td>
												<td rowspan="1"><span class="box"><strong><%=rBean.getLeaTime() %></strong></span></td>
												<td rowspan="1"><span class="box"><strong><%=rBean.getArrTime() %></strong></span></td>
												<td rowspan="1"><span class="box"><a
														class="bl_go" href="#none" id="searchFlightInfo"><%=rBean.getFlyModel() %></a></span></td>

												<td class="hover_td"><span class="box"><span
														class="day">-적립가능</span></span></td>
												<td class="hover_td"><span class="box"> <span
														class="price"> <strong><%=rBean.getCharge() %></strong> 원<br>
													</span>
												</span></td>
												<td class="hover_td"><span class="box"><strong><%=rBean.getSeats() %></strong>석</span>
												</td>
												<td style="display: none;">
												<span class="box"><strong><%=rBean.getArrDay()%></strong></span>
												</td>
												<td class="last-child hover_td arr_last-td"><span
													class="Sbtn_TType07_3"><a href="#none"
														id="ra_depAvail0" onclick="btns2(this)" >선택</a></span></td>
											</tr>
											<%			}
													} 
												}
											}
											%>
										</tbody>
										
										<tbody style="display: none;">
											<%
											for(int i=0; i<arrday.size(); i++){
												ReservationBean reservationBean = arrday.get(i);
												if(reservationBean.getArrDay().equals("01/07/수")){
													for(i=0; i<arrlist.size(); i++){
														ReservationBean rBean = arrlist.get(i);
														if(rBean.getArrDay().equals("01/07/수")){
											%>
											<tr>
												<td rowspan="1"><span class="box"><span
														class="text-type-1"><%=rBean.getFlightNum() %> </span></span></td>
												<td rowspan="1"><span class="box"><strong><%=rBean.getLeaTime() %></strong></span></td>
												<td rowspan="1"><span class="box"><strong><%=rBean.getArrTime() %></strong></span></td>
												<td rowspan="1"><span class="box"><a
														class="bl_go" href="#none" id="searchFlightInfo"><%=rBean.getFlyModel() %></a></span></td>

												<td class="hover_td"><span class="box"><span
														class="day">-적립가능</span></span></td>
												<td class="hover_td"><span class="box"> <span
														class="price"> <strong><%=rBean.getCharge() %></strong> 원<br>
													</span>
												</span></td>
												<td class="hover_td"><span class="box"><strong><%=rBean.getSeats() %></strong>석</span>
												</td>
												<td style="display: none;">
												<span class="box"><strong><%=rBean.getArrDay()%></strong></span>
												</td>
												<td class="last-child hover_td arr_last-td"><span
													class="Sbtn_TType07_3"><a href="#none"
														id="ra_depAvail0" onclick="btns2(this)" >선택</a></span></td>
											</tr>
											<%			}
													} 
												}
											}
											%>
										</tbody>
										
										<tbody style="display: none;">
											<%
											for(int i=0; i<arrday.size(); i++){
												ReservationBean reservationBean = arrday.get(i);
												if(reservationBean.getArrDay().equals("01/08/목")){
													for(i=0; i<arrlist.size(); i++){
														ReservationBean rBean = arrlist.get(i);
														if(rBean.getArrDay().equals("01/08/목")){
											%>
											<tr>
												<td rowspan="1"><span class="box"><span
														class="text-type-1"><%=rBean.getFlightNum() %> </span></span></td>
												<td rowspan="1"><span class="box"><strong><%=rBean.getLeaTime() %></strong></span></td>
												<td rowspan="1"><span class="box"><strong><%=rBean.getArrTime() %></strong></span></td>
												<td rowspan="1"><span class="box"><a
														class="bl_go" href="#none" id="searchFlightInfo"><%=rBean.getFlyModel() %></a></span></td>

												<td class="hover_td"><span class="box"><span
														class="day">-적립가능</span></span></td>
												<td class="hover_td"><span class="box"> <span
														class="price"> <strong><%=rBean.getCharge() %></strong> 원<br>
													</span>
												</span></td>
												<td class="hover_td"><span class="box"><strong><%=rBean.getSeats() %></strong>석</span>
												</td>
												<td style="display: none;">
												<span class="box"><strong><%=rBean.getArrDay()%></strong></span>
												</td>
												<td class="last-child hover_td arr_last-td"><span
													class="Sbtn_TType07_3"><a href="#none"
														id="ra_depAvail0" onclick="btns2(this)" >선택</a></span></td>
											</tr>
											<%			}
													} 
												}
											}
											%>
										</tbody>
										
										<tbody style="display: none;">
											<%
											for(int i=0; i<arrday.size(); i++){
												ReservationBean reservationBean = arrday.get(i);
												if(reservationBean.getArrDay().equals("01/09/금")){
													for(i=0; i<arrlist.size(); i++){
														ReservationBean rBean = arrlist.get(i);
														if(rBean.getArrDay().equals("01/09/금")){
											%>
											<tr>
												<td rowspan="1"><span class="box"><span
														class="text-type-1"><%=rBean.getFlightNum() %> </span></span></td>
												<td rowspan="1"><span class="box"><strong><%=rBean.getLeaTime() %></strong></span></td>
												<td rowspan="1"><span class="box"><strong><%=rBean.getArrTime() %></strong></span></td>
												<td rowspan="1"><span class="box"><a
														class="bl_go" href="#none" id="searchFlightInfo"><%=rBean.getFlyModel() %></a></span></td>

												<td class="hover_td"><span class="box"><span
														class="day">-적립가능</span></span></td>
												<td class="hover_td"><span class="box"> <span
														class="price"> <strong><%=rBean.getCharge() %></strong> 원<br>
													</span>
												</span></td>
												<td class="hover_td"><span class="box"><strong><%=rBean.getSeats() %></strong>석</span>
												</td>
												<td style="display: none;">
												<span class="box"><strong><%=rBean.getArrDay()%></strong></span>
												</td>
												<td class="last-child hover_td arr_last-td"><span
													class="Sbtn_TType07_3"><a href="#none"
														id="ra_depAvail0" onclick="btns2(this)">선택</a></span></td>
											</tr>
											<%			}
													} 
												}
											}
											%>
										</tbody>
									</table>
									
								</div>
							</div>
						</div>
						<!-- 오는 항공편 끝  -->
						<%} %>
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
							<li><span class="Sbtn_TType06_1"><a href="./reserve.re">이전단계</a></span></li>
							<% if(lea_time.equals("01/01")){ %>
								<li class="right"><span class="Bbtn_TType01_1">
								<a href="#none" onclick="submit_form2();">계속하기</a></span></li>
							<%}else { %>
								<li class="right" style="display: none;"><span class="Bbtn_TType01_1">
								<a href="#none" onclick="submit_form2();">계속하기</a></span></li>
							<%} %>
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
	</form>
</body>
</html>