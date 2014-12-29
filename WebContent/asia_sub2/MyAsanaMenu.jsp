<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$(document).ready(function() {
		//메뉴 클릭 시 서브메뉴 오픈
		$('.menu').click(function() {
			$('.menu').removeClass("menuchange");
			$('.menu').parent().children('ul').css('display', 'none');
			$(this).addClass("menuchange");
			$(this).parent().children('ul').css('display', 'block');
		});

		//서브메뉴 클릭 시 글자 굵기
		$('.subMenu1').click(function() {
			$('.subMenu1').css('font-weight', 'normal');
			$(this).css('font-weight', 'bold');
		});
	});
</script>
<style type="text/css">
* {
	padding: 0;
	margin: 0;
}

body {
	font-family: "맑은 고딕";
}

ul {
	list-style: none;
}

a {
	text-decoration: none;
}

.menu {
	padding: 7px 0 7px 19px;
	line-height: 20px;
	display: block;
	font-size: 12px;
	border-top: 1px solid #e8e8e8;
	color: #000;
}

.menuchange {
	padding: 7px 0 7px 19px;
	line-height: 20px;
	display: block;
	color: #fff;
	font-size: 12px;
	font-weight: bold;
	background: #73706c;
}

.subMenu1 {
	padding: 0 0 0 15px;
	color: #333;
	font-size: 11px;
	line-height: 20px;
	display: block;
	width: 145px;
	background: url('https://flyasiana.com/CW/images/bg/bg_asideOn.gif') 0
		9px no-repeat;
}

.subMenu1:hover {
	font-weight: bold;
}
</style>
</head>

<body>
	<div style="position: absolute; top: 10px; left: 0;">
		<aside
			style="margin: 10px 0 0 0; padding-bottom: 10px; background: #fff;">
			<h2
				style="background: url('https://flyasiana.com/CW/images/bg/bg_h2.png') no-repeat 0 0; width: 171px; height: 60px; padding: 21px 0 0 19px;">
				<a href="MyAsiana.jsp"> <img
					src="https://flyasiana.com/CW/images/nav/nav03_h1.png"
					alt="항공권 예매 홈 > 항공권 예매">
				</a>
			</h2>

			<ul
				style="background: url('https://flyasiana.com/CW/images/bg/bg_lnbBottom.png') no-repeat 0 bottom; padding: 0 1px 4px 1px; width: 188px;">
				<li><a class="menu top1" href="#"> 항공권 예매 </a>
					<ul class="submenu sub1"
						style="padding: 15px 0 15px 19px; display: none;">
						<li><a class="subMenu1 index1" href="#"> 국내선 </a></li>
						<li><a class="subMenu1 index2" href="#"> 국제선 </a></li>
						<!-- <li>
<a class="subMenu1 index3" href="#">
스케줄 조회
</a>
</li>
<li>
<a class="subMenu1 index4" href="#">
운임조회
</a>
</li> -->
					</ul></li>
				<li><a class="menu top2" href="#"> 할인항공권 </a>
					<ul class="submenu sub2"
						style="padding: 15px 0 15px 19px; display: none;">
						<li><a class="subMenu1 index1" href="#"> 국내선 할인항공권 </a></li>
						<li><a class="subMenu1 index2" href="#"> 국제선 할이항공권 </a></li>
						<li><a class="subMenu1 index3" href="#"> 국제선 오즈드림페어 </a></li>
						<li><a class="subMenu1 index4" href="#"> 국제선 타임페어 </a></li>
					</ul></li>
				<li><a class="menu top3" href="#"> 마일리지항공권 발급 </a>
					<ul class="submenu sub3"
						style="padding: 15px 0 15px 19px; display: none;">
						<li><a class="subMenu1 index1" href="#"> 국내선 마일리지항공권 </a></li>
						<li><a class="subMenu1 index2" href="#"> 국제선 마일리지항공권 </a></li>
						<li><a class="subMenu1 index3" href="#"> 스타얼라이언스 마일리지항공권
						</a></li>
						<li><a class="subMenu1 index4" href="#"> 마일리지항공권 잔여석 조회 </a>
						</li>

					</ul></li>

				<li><a class="menu top4" href="#"> 스케줄 조회 </a>
					<ul class="submenu sub4"
						style="padding: 15px 0 15px 19px; display: none;">
						<li><a class="subMenu1 index1" href="#"> 스케줄 조회 </a></li>
					</ul></li>

				<li><a class="menu top5" href="#"> 운임조회 </a>
					<ul class="submenu sub5"
						style="padding: 15px 0 15px 19px; display: none;">
						<li><a class="subMenu1 index1" href="#"> 국내선 운임조회 </a></li>
						<li><a class="subMenu1 index2" href="#"> 국제선 운임조회 </a></li>
					</ul></li>

				<li><a class="menu top6" href="#"> 체크인/탑승권 발급 </a> <!-- <ul class="submenu sub6" style="padding: 15px 0 15px 19px; display: none;">
</ul> --></li>

				<li><a class="menu top7" href="#"> 항공기 출도착 안내 </a>
					<ul class="submenu sub7"
						style="padding: 15px 0 15px 19px; display: none;">
						<!-- <li>
<a class="subMenu1 index1" href="#">
이벤트 참여 내역
</a>
</li> -->
						<li><a class="subMenu1 index2" href="#"> 스크랩 보관함 </a></li>
					</ul></li>
				<li><a class="menu top8" href="#"> 취항 노선 </a></li>
			</ul>
		</aside>
	</div>
</body>
</html>
