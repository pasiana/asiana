<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link type="text/css" rel="stylesheet" href="asia_sub2/css/checkCharge.css">
<script src="asia_sub2/js/jquery-1.11.1.js"></script>
<script type="text/javascript">
	$(function() {
		$('.top3').addClass("menuchange");
		$('.top3').parent().children('ul').css('display', 'block');
	});
	function fncCity(city) {
		$.post('./searchCity.ch',{lea_city:city},function(result){
			$('#keyArrivalAirport').html(result);
		});
	}
	function fncSearch() {
		var depart = $('#keyDepartureAirport option:selected').text();
		var arrival = $('#keyArrivalAirport option:selected').text();
		$.post('./searchCharge.ch',{lea_city:depart, arr_city:arrival},function(result) {
			$('.common-table-3 tbody').show();
			$('#charge_ajax').html(result);
			var total = parseInt(result)+8800+4000;
			$('#charge_total').html(total);
		});
	}
</script>
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
					<li><a href="#">항공권 예매</a> <span>&gt;</span></li>
					<li><a href="#">운임조회</a> <span>&gt;</span></li>
					<li>국내선 운임 조회</li>
				</ul>
			</div>
		</div>
	
		<div id="containerBox" class="ag-reservation">
			<div id="container">
				<!-- 사이드 메뉴 -->
				<jsp:include page="MyAsanaMenu.jsp" />
				<!-- 사이드 메뉴 끝 -->
				<div id="skipCt">
					<!-- section -->
					<section id="containerBody">
						<h3 class="h3_type01">국내선 운임조회</h3>
						<div class="box-fareCheck">
							<h4 class="h4_type03">노선별 일반운임 조회</H4>
							<ul class="notice">
								<li>서울/부산 노선은 에어부산 공동운항편이며, 부산/제주 노선은 에어부산 공동운항편과 아시아나항공
									단독운항편이 있습니다.</li>
								<LI>인천/부산노선은 국제선 환승 전용 내항기로 국제선으로 24시간 이내 국내선으로 환승하는 고객에 한해
									이용가능합니다.</LI>
								<LI>하단 운임은 성인 1인은 통상 편도 운임이며, 인터넷 할인이 적용된 운임은 예매 단계에서 확인하실
									수 있습니다.</LI>
							</UL>
							<!-- box-topType-1 -->

							<FORM name="frmDomesticFare" id="frmDomesticFare" method="post">
								<DIV class="box-topType-1">
									<DIV class="box-bottomType-1">
										<DIV class="start">
											<P class="title">
												<LABEL for="keyDepartureAirport">출발</LABEL>
											</P>
											<DIV class="selectBox">
												<DIV class="selectStyle" style="width: 100%; height: 23px;">
													<SPAN class="span-select">
														<INPUT tabindex="-1" title="출발지" id="hiddenKeyD" type="text" readonly="readonly" value="서울(김포) (김포공항-국내선)">
														<SELECT	name="keyDepartureAirport" title="출발지 선택" id="keyDepartureAirport" onchange="fncCity(this.options[this.selectedIndex].text);">
															<OPTION value="">선택하세요</OPTION>
															<OPTION value="KWJ">광주</OPTION>
															<OPTION selected="selected" value="GMP">김포</OPTION>
															<OPTION value="PUS">부산</OPTION>
															<OPTION value="TAE">대구</OPTION>
															<OPTION value="MWX">무안</OPTION>
															<OPTION value="HIN">진주</OPTION>
															<OPTION value="RSU">여수</OPTION>
															<OPTION value="USN">울산</OPTION>
															<OPTION value="ICN">인천</OPTION>
															<OPTION value="CJU">제주</OPTION>
															<OPTION value="CJJ">청주</OPTION>
														</SELECT>
													</SPAN>
												</DIV>
											</DIV>
										</DIV>
										<DIV class="end">
											<P class="title">
												<LABEL for="keyArrivalAirport">도착</LABEL>
											</P>
											<DIV class="selectBox">
												<DIV class="selectStyle" style="width: 100%; height: 23px;">
													<SPAN class="span-select">
														<INPUT tabindex="-1" title="도착지" id="hiddenKeyA" type="text" readonly="readonly" value="제주 (제주공항)">
														<SELECT name="keyArrivalAirport" title="도착지 선택" id="keyArrivalAirport" onchange="javascript:document.getElementById('hiddenKeyA').value=this.options[this.selectedIndex].text">
															<OPTION	value="">선택하세요</OPTION>
														</SELECT>
													</SPAN>
												</DIV>
											</DIV>
										</DIV>
										<SPAN class="Sbtn_TType04_3">
											<A onclick="fncSearch();" href="#none">조회하기</A>
										</SPAN>
									</DIV>
								</DIV>
							</FORM>
							
							<DIV class="common-box-3" style="margin: -26px 0px 0px;">
								<TABLE class="common-table-3">
									<CAPTION>노선별 일반운임 조회</CAPTION>
									<COLGROUP>
										<COL width="25%">
										<COL width="25%">
										<COL width="25%">
										<COL width="25%">
									</COLGROUP>
									<THEAD>
										<TR>
											<TH scope="col">운임</TH>
											<TH scope="col">유류할증료(2014년 12월 기준)</TH>
											<TH scope="col">공항세</TH>
											<TH class="last-child" scope="col">총계</TH>
										</TR>
									</THEAD>
									<TBODY style="display: none;">
										<TR>
											<TD style="text-align: center; padding-right: 10px;"><span id="charge_ajax"></span></TD>
											<TD style="text-align: center; padding-right: 10px;">8,800원</TD>
											<TD style="text-align: center; padding-right: 10px;">4,000원</TD>
											<TD class="last-child"
												style="text-align: center; padding-right: 10px;"><span id="charge_total"></span></TD>
										</TR>
									</TBODY>
								</TABLE>
							</DIV>
							<DIV class="common-notice no-title">
								<UL>
									<LI>상기 유류할증료는 항공권 구매 시점에 따라 변경될 수 있습니다. <SPAN
										class="plan-btnType-3"> [ <A
											href="http://flyasiana.com/CW/ko/noticeManage/newsList.do?keyCategory=02"
											target="_blank">국내선 유류할증료 안내</A> ]
									</SPAN></LI>
								</UL>
							</DIV>
							<DIV class="common-boxRelationService">
								<DIV class="common-innerRelationService">
									<P class="title">
										<SPAN>관련서비스</SPAN>
									</P>
									<UL class="list-ul">
										<LI><A href="http://flyasiana.com/CW/kr/common/pageContent.do?pageId=PC_0403">초과수하물
												요금표</A></LI>
									</UL>
								</DIV>
							</DIV>
						</DIV>
						<!-- //box-fareCheck -->
					</section>
					<!-- section 끝-->
				</div>
				<!-- skipct끝  -->
			</div>
		</div>
		<!-- containerBox  -->
	</section>
	<footer>
		<jsp:include page="../asiana_inc/footer.jsp" />
	</footer>
	<!-- //main_container -->
</body>
</html>
