<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>인터넷예매</title>
<link type="text/css" rel="stylesheet" href="css/newsear.css">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">
<link rel ="shortcut icon" href="images/logo/favicon.ico">
<script type="text/javascript">
var date = new Date();
var lea_time = date.getFullYear()+"-"+new String(date.getMonth()+1)+"-"+date.getDate();
var arr_time = date.getFullYear()+"-"+new String(date.getMonth()+1)+"-"+(date.getDate()+3);
$(function() {
	$('.top2').addClass("menuchange");
	$('.top2').parent().children('ul').css('display', 'block');
	$('#datepicker').val(lea_time);
	$('#datepicker1').val(arr_time);
	$('#datepicker').datepicker({
		onSelect: function(date){
			$('#datepicker').val(date);
		}
	});
	$('#datepicker1').datepicker({
		onSelect: function(date){
			$('#datepicker1').val(date);
		}
	});
	$("#tabs").tabs();
});
$.datepicker.setDefaults({
	dateFormat : 'yy-mm-dd',
	dayNamesMin: ["일","월","화","수","목","금","토"],
	monthNames: [ "1월", "2월", "3월", "4월", "5월", "6월",
	              "7월", "8월", "9월", "10월", "11월", "12월" ],
	yearSuffix: "년",
	minDate: "-0d",
	showMonthAfterYear: true
});

function click_search(){
	$('.sear_tb').toggle();/*클릭시 자동으로 온/오프  */
}

</script>
<style type="text/css">
#h3_type01 {
	color: #5e14cc;
	background: url('images/bg/bg_arrow4.gif') no-repeat 114px 16px;
	
}

* {
	margin: 0;
	padding: 0;
}

a {
	text-decoration: none;
	color: black;
	cursor: pointer;
}

li {
	list-style: none;
}

body {
	font-family: "맑은 고딕";
	overflow-x: hidden;
}


#searbody {
	/* both:clear;
 height: 100%; 
min-height: 1000px;
border : solid 2px green;
display: block; */
	
}

#sea {
	/* border : solid 1px black; */
	width: 700px;
}

.cont {
	border-top: 1px solid blue;
	height: 800px;
}

.notice li {
	line-height: 20px;
	background: url("images/bl/bl_ck.gif") no-repeat 0px 5px;
	padding: 0 0 0 14px;
	font-size: 11px;
	color: #333;
}
#yojong {
	padding: 0 0 10px 0;
	/* border-bottom: 1px solid #d1d1d1; */
	display: block;
	-webkit-margin-before: 1em;
	-webkit-margin-after: 1em;
	-webkit-margin-start: 0px;
	-webkit-margin-end: 0px;
}

.boxType01 {
	content: "";
	display: block;
	windows: 400px;
	height: 100%;
}

.selectStyle:after {
	display: block;
	content: "";
	clear: both;
}

.takeOff {
	width: 300px;
	height: 100% px;
	float: left; /* border: 1px solid blue; */
}

.getIn {
	width: 337px;
	height: 100% px;
	float: left;
}

.jul {
	border-bottom: 1px solid #d1d1d1;
	font-size: 13px;
}

.ganun {
	width: 100px;
}

.Sbtn_TType04_3 {
	float: right;
	text-align: right;
	display: inline-block;
}

.Sbtn_TType04_3 a {
	padding: 0 15px 30px 35px;
	display: block;
	height: 25px;
	line-height: 25px;
	font-weight: bold;
}

.locationBox {
	margin: 0 auto;
	width: 1440px;
	height: 30px;
	background: url("img/bg_location.jpg") no-repeat center bottom;
}
.location {
	margin: 0 auto;
	color: #333;
	font-size: 11px;
	width: 956px;
	height: 25px;
	border: 1px solid white;
}

.location ul li {
	float: left;
}

.search_tb {
	color: #5c5f66;
	padding: 8px 0 44px 10px;
	text-align: left;
	vertical-align: top;
	font-size: 11px;
	/* border-right: 1px solid #e4e4e4; */
	background: #f8f8f8;
	line-height: 16px;
}

#colgroup {
	display: table-column-group;
}

#tabs {
	height: 100%;
	
	
}

.scheSrchBox {
	background: url("images/bg/bgP_scheduleBottom.gif") no-repeat 0 bottom;
	margin: -1px 0 0 0;
}

#search_table {
margin-top:-100px;
	position: relative; 
	font-size: 15px;
}

#search_table tr{
height:30px;
 
}
#search_table td.tb_left{
width:200px;

}
#search_table select{
width:180px;
}
#search_table input[type=text]{
width:180px;
}

#sear_tb #tbtb{

}

</style>
</head>
<body>
	<header>
		<jsp:include page="../asiana_inc/header.jsp" />
	</header>
	<!-- 항공권예매 -->
	<section id="main_container">
		<div class="locationBox">
			<div class="location">
				<ul>
					<li><a href="#none">HOME</a> <span>&gt;</span></li>
					<li><a href="#none">서비스 안내</a> <span>&gt;</span></li>
					<li><a href="#none">항공권 예매</a> <span>&gt;</span></li>
					<li>스케줄 조회</li>
				</ul>
			</div>
		</div>

		<div id="containerBox">
			<div id="container">
				<!-- 사이드 메뉴 -->
				<jsp:include page="MyAsanaMenu.jsp" />
				<!-- 사이드 메뉴 끝 -->

				<div id="skipCt">
					<!-- section -->
					<section id="containerBody">
						<div id="sea">
<br>
			<h2 class="h3_type01">스케줄 조회</h2>
			<hr color=#D5D5D5 style="margin-top:10px; ">
			<br>
			




			<div id="tabs">

				<ul>

					<li><a href="#tabs-1">국내선</a></li>

				</ul>

				<div id="tabs-1">

					<table id="search_table" >
						<div id="yojong">
							<tr>
								<td class="tb_left"><strong class="title">여정선택</strong></td>
								<td colspan="3"><input type="radio" name="group1"
									value="RT" checked><strong>왕복</strong> <input
									type="radio" name="group1" value="OW">편도
					</tr></div>

						
						
						
						
						<tr>

							<div class="boxType01">
								<div class="takeOff">



									<div class="selectBox">
										<td class="tb_left"><strong class="title">출발</strong></td>
										<!-- 국내선 출발 select box 변경 -->
										<td class="tb_right">
											<div class="selectStyle"
												style="height: 23px; width: 245px; display: inline-block;">
												<span class="span-select" style="height: 23px;"> <select
													id="ul_Dom_DepAirport" name="ul_Dom_DepAirport"
													title="선택하세요" >
														<option value="ICN">서울(인천)</option>
														<option value="GMP">서울(김포)</option>
														<option value="KWJ">광주</option>
														<option value="TAE">대구</option>
														<option value="MWX">무안</option>
														<option value="PUS">부산</option>
														<option value="RSU">여수</option>
														<option value="USN">울산</option>
														<option value="CJU">제주</option>
														<option value="HIN">진주</option>
														<option value="CJJ">청주</option>
														<option value="KPO">포항</option>
												</select>
												</span>
											</div>
										</td>
										<!-- // 국내선 출발 select box 변경 -->
									</div>
								</div>
								

								
										<td class="tb_left"><strong class="title">도착</strong></td>
										<!-- 국내선 도착 select box 변경 -->
										<td class="tb_left">
											<div class="selectStyle"
												style="height: 23px; width: 245px; display: inline-block;">
												<span class="span-select" style="height: 23px;"> <select
													id="ul_Dom_ArrAirport" name="ul_Dom_ArrAirport"
													title="선택하세요">
														<option value="KWJ">광주</option>
														<option value="PUS">부산</option>
														<option value="RSU">여수</option>
														<option value="USN">울산</option>
														<option value="CJU">제주</option>
														<option value="KPO">포항</option>
												</select>
												</span>
											</div>
										</td>
						</tr>
						<!-- // 국내선 도착 select box 변경 -->
					
					
						<tr>
							<div class="ganun" style="width: 100%; height: 100%;">


								<td class="tb_left"><strong>가는날</strong></td>
								<td class="tb_left"><input type="text" id="datepicker"></td>
								<td class="tb_left"><strong>오는날</strong></td>
								<td class="tb_left"><input type="text" id="datepicker1"></td>

							</div>
						</tr>
						<tr>
							<div>
								<div>
									<td><strong class="tb_left"
style="padding: 4px 0 0 0; display: inline-block; *display: inline; *zoom: 1;">조회기준</strong></td>
									<td colspan="3"><input type="radio" name="searchByDom"
										id="searchByDomDate" value="Day"
										style="vertical-align: middle;" checked> <label
										for="searchByDomDate"
										style="vertical-align: middle; margin-left: 3px;">선택일
											스케줄</label> <input type="radio" name="searchByDom"
										id="searchByDomWeek" value="Week"
										style="vertical-align: middle;"> <label
										for="searchByDomWeek"
										style="vertical-align: middle; margin-left: 3px;">선택일
											기준 +/- 3일 스케줄</label> <br>
								</div>
								
								<hr color=#D5D5D5 style="margin-top:10px; ">
								
								<!--클릭시 나오는 테이블  -->
								<tr><td colspan="4">
								<div class="sear_tb" style="display:none;">
								<table id="tbtb" border="1" style="width:98%;" >
								
가는 항공편 김포->제주<br> <!--가는항공편 김포, 제주는 디비후에 재조정  -->
<tr><td>편명</td><td>출발일</td><td>출발시간</td>
    <td>도착시간</td><td>비행시간</td><td>기종</td></tr>
    
</table>
								
								</div></td></tr>
							<br>
							<br>
							
<tr><td colspan="4">
								<div class="sear_tb" style="display:none;">
								<table id="tbtb2" border="1" style="width:98%;" >
								
오는 항공편 김포->제주<br> <!--가는항공편 김포, 제주는 디비후에 재조정  -->
<tr><td>편명</td><td>출발일</td><td>출발시간</td>
    <td>도착시간</td><td>비행시간</td><td>기종</td></tr>
    
   
    </table>
								
								</div></td></tr>
						
						
						<!-- 테이블선 -->
						<tr>
							<td colspan="4">
								<div class="Sbtn_TType04_3" id="dom_scheSrch">
									<a href="#none" onclick="click_search();"><img
										src="images/btn/searchbutton.PNG"></a>
										<div>
										
										
										</div>

								</div>
							</td>
						</tr>
					</table>
					
				</div>


			</div>
			<br>
			<div id="sear_notice">
				<ul class="notice">

					<li>주간스케줄은 항공편 결항 및 지연이 반영되지 않을 수 있으므로, 정확한 스케줄은 항공편 예약 시
						재확인하시기 바랍니다.</li>
					<li>도착지에 대한 여행 정보는 취항지 <strong>[ 여행가이드 ]</strong>에서 확인하실 수
						있습니다.
					</li>
					<li>마일리지 항공권 스케줄을 확인은 <strong>[ 마일리지항공권 잔여석 ]</strong>에서 하실 수
						있습니다.
					</li>
					<li>호텔 / 렌터카 / 여행자 보험 을 계획하고, 아시아나클럽 회원에게 제공되는 마일리지 혜택을 확인하세요.
						<strong><a href="#">[ 바로가기 ]</a></strong>
					</li>
				</ul>

			</div>












			<!--여정선택, 왕복, 편도  -->













		</div>
						
					</section>
					<!-- section 끝-->
				</div>
			</div>
		</div>
	</section>
	<footer>
		<jsp:include page="../asiana_inc/footer.jsp" />
	</footer>
	<!-- 항공권예매 끝  -->
</body>
</html>