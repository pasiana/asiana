<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./asiana_inc/css/header.css">
<style type="text/css">
	*{margin:0; padding: 0;
	font-family:"맑은 고딕";}
	body,table,input,textarea,select,button{font-size:12px;}
	a{color: black;}
</style>
<script type="text/javascript">
var lang_select_a = "";
var lang_select_a2 = "";
	$(function(){
		$('#head_nav>ul>li>a').each(function(idx){
			$(this).mouseover(function(){
				$('#nav_sub_'+idx+'+div').addClass('nav_sub_area_'+idx);
				$('.nav_sub_area_'+idx).css({
					'border': '1px solid rgb(156, 161, 166)',
					'border-top': 'none',
					'z-index': '200',
					'padding': '21px 0px 27px 10px',
					'position': 'absolute',
					'top': '66',
					'left': function(){return idx*136;},
					'display': 'block',
					'background': 'url("./asiana_inc/img/head/bg_gnbSub.gif") 0px 100% repeat-x rgb(255, 255, 255)'
				});
				$(this).children('img').attr("src","./asiana_inc/img/head/nav0"+(idx+1)+"_on.png");
			}).mouseout(function(){
				$('#head_nav,#head_nav>ul>li>a').not(this).hover(function(){
					$('#nav_sub_'+idx+'+div').removeClass('nav_sub_area'+idx);
					$('#nav_sub_'+idx+'+div').hide();
					$('#nav_sub_'+idx+'>img').attr("src","./asiana_inc/img/head/nav0"+(idx+1)+"_off.png");
				});
			});
			$('#lang_list>li>a').click(function(){
				$('#lang_list>li>a').css({
					'color': 'rgb(51, 51, 51)',
					'text-decoration': 'none',
					'background': 'rgb(255, 255, 255)'
				});
				$(this).css({
					'color': 'rgb(32, 28, 180)',
					'text-decoration': 'underline',
					'background': 'rgb(232, 232, 247)'
				});
				$('#lang_list ul').parent().children('ul').css('display','none');
				$(this).parent().children('ul').css('display','block');
				lang_select_a = $(this).text().replace(/\s/g,'');
			});
			$('#lang_list ul>li>a').click(function(){
				$('#lang_list ul>li>a').css({
					'color': 'rgb(51, 51, 51)',
					'text-decoration': 'none',
					'background': 'rgb(255, 255, 255)'
				});
				$(this).css({
					'color': 'rgb(32, 28, 180)',
					'text-decoration': 'underline',
					'background': 'rgb(232, 232, 247)'
				});
				lang_select_a2 = $(this).text().replace(/\s/g,'');
			});
		});
	});
	function show_lang() {
		$('#div_lang').show();
	}
	function lang_close() {
		$('#div_lang').hide();
	}
	function lang_select() {
		$('#select_lang').text(lang_select_a +" - "+ lang_select_a2);
		lang_close();
	}
</script>
<%
String member_id=(String)session.getAttribute("member_id");
%>
</head>
<body>
<div id="header">
	<!-- login_bar 시작 -->
	<div class="login_bar">
		<div class="section">
			<!-- 언어 선택공간 시작 -->
			<div>
				<p>
					<a class="lang_a" href="#none" onclick="show_lang();">
						<span>
							<span class="earth"></span>
							<span id="select_lang">Korea - 한국어</span>
							<span class="lang">change</span>
						</span>
					</a>
				</p>
				<div id="div_lang">
					<span style="height: 28px;font-size: 11px;display: block;line-height: 28px;font-weight: bold;padding: 0 0 0 13px;border-bottom: 1px solid #d6d6d6;">
						<span class="earth"></span>
						<span id="select_lang">Korea - 한국어</span>
					</span>
					<div style="padding: 20px 14px;">
						<span style="font-weight: bold;">Select your region and language.</span>
						<ul id="lang_list">
							<li>
								<a href="#">
									Korea
									<ul>
										<li>
											<a href="#">English</a>
										</li>
										<li>
											<a href="#">한국어</a>
										</li>
									</ul>
								</a>
							</li>
							<li>
								<a href="#">
									USA
									<ul>
										<li>
											<a href="#">English</a>
										</li>
										<li>
											<a href="#">한국어</a>
										</li>
									</ul>
								</a>
							</li>
							<li>
								<a href="#">
									China
									<ul>
										<li>
											<a href="#">중국어</a>
										</li>
										<li>
											<a href="#">English</a>
										</li>
										<li>
											<a href="#">한국어</a>
										</li>
									</ul>
								</a>
							</li>
							<li>
								<a href="#">
									Japan
									<ul>
										<li>
											<a href="#">일본어</a>
										</li>
										<li>
											<a href="#">English</a>
										</li>
										<li>
											<a href="#">한국어</a>
										</li>
									</ul>
								</a>
							</li>
						</ul>
						<p style="text-align: right;">
							<span style="background: url('./asiana_inc/img/head/Sbtn_TTypeL01_2.gif') no-repeat 0 0;display: inline-block;">
								<a href="#none" onclick="lang_select();" style="background: url('./asiana_inc/img/head/Sbtn_TTypeR01_2.gif') no-repeat right 0;padding: 0 15px;display: block;height: 25px;line-height: 25px;color: #fff;font-weight: bold;">적용</a>
							</span>
						</p>
					</div>
					<a href="#none" onclick="lang_close();" style="position: absolute;top: 10px;right: 16px;">
						<img src="./asiana_inc/img/head/btn_close.gif">
					</a>
				</div>
			</div>
			<!--  언어선택공간 끝 -->
			<div class="login_div" style="position: absolute; top:0px; right:0; z-index:9999;">
				<ul>
				<%if(member_id==null){
					%>
					<li><a href="./AsianaLogin.me"><strong>로그인</strong></a></li>
					<li><a href="./AsianaCheckRegistered.me"><strong>회원가입</strong></a></li>
				 <% }else{%>
				 <li><a href="#" style="color: #000;"><strong>환영합니다!</strong></a></li>
					<li><a href="./AsianaLogout.me"><strong>로그아웃</strong></a></li><%}%>
					<li><a href="./MyAsiana.me"><strong>마이 아시아나</strong></a></li>
					<%
					if(member_id!=null){
						if(member_id.equals("admin")){
							%>
							<li><a href="./AsianaMemberList.me"><strong>관리자 목록</strong></a></li>
							<%
						}
					}
					%>
				</ul>
			</div>
		</div>
	</div>
	<!-- login_bar 끝 -->
	<!-- header main 시작 -->
	<div id="header_main">
		<!-- 메인 로고,검색,네비 시작 -->
		<div class="headInner">
			<div>
				<h1 style="padding: 20px 0 0 1px; margin: 0 0 0 -1px;">
					<!-- 메인 로고 시작 -->
					<a href="./ItanaMain.ma">	
						<img src="./asiana_inc/img/Logo.png" alt="아시아나 항공">
					</a>
					<!-- 메인 로고 끝 -->
				</h1>
				<!-- 메인 검색 시작 -->
				<div class="search">
					<form id="frm_search" name="frm_search" onkeyup="ajax_search(this.frm_txt.value)">
						<fieldset>
							<span class="frm_span">
								<input type="text" name="frm_txt" class="intxt">
								<input type="image" src="./asiana_inc/img/head/btn_topsearch.png">
							</span>
						</fieldset>
					</form>
				</div>
				<!-- 메인 검색 끝 -->
				<!-- 메인 네비 시작 -->
				<div id="head_nav">
					<div class="clear"></div>
					<ul>
						<!-- 항공권 예매 list -->
						<li>
							<a href="#" id="nav_sub_0">
								<img src="./asiana_inc/img/head/nav01_off.png">
							</a>
							<!-- 항공권 예매 마우스 오버시 나타나는 div -->
							<div class="nav_sub">
								<!-- 항공권 예매 div 좌측 -->
								<div>
									<ul>
										<li>
											<a href="#">
												<span>항공권 예매</span>
											</a>
											<ul class="airline_ul">
												<li>
													<a href="./reserve.re">국내선</a>
												</li>
												<li>
													<a href="#">예약조회</a>
												</li>
											</ul>
										</li>
									</ul>
									<ul>
										<li>
											<a href="#">
												<span>스케쥴 조회</span>
											</a>
										</li>
									</ul>
									<ul>
										<li>
											<a href="./checkCharge.ch">
												<span>운임 조회</span>
											</a>
										</li>
									</ul>
								</div>
							</div>
						</li>
						<!-- 아시아나 클럽 list -->
						<li>
							<a href="#" id="nav_sub_1">
								<img src="./asiana_inc/img/head/nav02_off.png">
							</a>
							<div class="nav_sub">
								<ul>
									<li>
										<a href="./information.su">
											<span>아시아나클럽 소개</span>
										</a>
									</li>
								</ul>
								<ul>
									<li>
										<a href="#">
											<span>뉴스/이벤트</span>
										</a>
									</li>
								</ul>
							</div>
						</li>
						<!-- 서비스 안내 list -->
						<li>
							<a href="#" id="nav_sub_2">
								<img src="./asiana_inc/img/head/nav03_off.png">
							</a>
							<div class="nav_sub">
								<ul>
									<li>
										<a href="./suite.su">
											<span>클래스별 서비스</span>
										</a>
									</li>
								</ul>
								<ul>
									<li>
										<a href="./ticket.su">
											<span>항공권 예매</span>
										</a>
									</li>
								</ul>
								<ul>
									<li>
										<a href="./check.su">
											<span>공항에서</span>
										</a>
									</li>
								</ul>
								<ul>
									<li>
										<a href="./bag.su">
											<span>수하물/유실물</span>
										</a>
									</li>
								</ul>
								<ul>
									<li>
										<a href="./meals.su">
											<span>기내에서</span>
										</a>
									</li>
								</ul>
								<ul>
									<li>
										<a href="./aircraft.su">
											<span>항공기 안내</span>
										</a>
									</li>
								</ul>
								<ul>
									<li>
										<a href="./mobile.su">
											<span>모바일 서비스</span>
										</a>
									</li>
								</ul>
							</div>
						</li>
						<li>
							<a href="#" id="nav_sub_3">
								<img src="./asiana_inc/img/head/nav05_off.png">
							</a>
							<div class="nav_sub">
								<ul>
									<li>
										<a href="#">
											<span>이벤트</span>
										</a>
									</li>
								</ul>
								<ul>
									<li>
										<a href="./magicInfo.su">
											<span>매직보딩패스</span>
										</a>
									</li>
								</ul>
							</div>
						</li>
					</ul>
				</div>
				<!-- 메인 네비 끝 -->
			</div>
		</div>
		<!-- 메인 로고,검색,네비 끝 -->
	</div>
	<!-- header main 끝 -->
</div>
</body>
</html>
