<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 파비콘  -->
<link rel="shortcut icon" href="img/air.ico" type="image/x-icon">
<link rel="icon" href="img/air.ico" type="image/x-icon">
<!-- 파비콘  -->
<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
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
	font-family: 돋움;
	line-height: 20px;
	display: block;
	width: 145px;
	background: url('https://flyasiana.com/CW/images/bg/bg_asideOn.gif') 0
		9px no-repeat;
}

.subMenu1:hover {
	font-weight: bold;
}

#comm_lnb{
	width: 190px;
	
}
</style>
</head>

<body>
	<div id="comm_lnb" style="position: absolute; top: 0; left: 0;">
		<aside
			style="margin: 10px 0 0 0; padding-bottom: 10px; background: #fff;">
			<h2
				style="background: url('http://flyasiana.com/CW/images/bg/bg_h2.png') no-repeat 0 0; width: 171px; height: 60px; padding: 21px 0 0 19px;">
				<a href="Admin1.jsp"> <img src="img/admin_nav.png">
				</a>
			</h2>

			<ul
				style="background: url('https://flyasiana.com/CW/images/bg/bg_lnbBottom.png') no-repeat 0 bottom; padding: 0 1px 4px 1px; width: 188px;">
				<li><a class="menu top1" href="Admin1.jsp"> 회원목록 </a></li>

				<li><a class="menu top2" href="Admin2.jsp"> 예약목록 </a></li>
			</ul>
		</aside>
	</div>
</body>
</html>