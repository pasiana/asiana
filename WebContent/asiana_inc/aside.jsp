<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="">
<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
<script type="text/javascript">
	$(function() {
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
*{margin: 0; padding: 0px; font: 12px;}
body,table,input,textarea,select,button{font-size:12px;}
ul,ol{list-style:none;}
a{color:#000;text-decoration:none;cursor:pointer;}
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
	background: url('./asiana_inc/img/sub_event/bg_asideOn.gif') 0 9px no-repeat;
}

.subMenu1:hover {
	font-weight: bold;
}
</style>
</head>

<body>
<div style="position: absolute; top: 0; left: 0;">
		<aside
			style="margin: 10px 0 0 0; padding-bottom: 10px; background: #fff;">
			<h2
				style="background: url('./asiana_inc/img/sub_event/bg_h2.png') no-repeat 0 0; width: 171px; height: 60px; padding: 21px 0 0 19px;">
				<a href="#"> <img src="./asiana_inc/img/sub_event/nav03_h5.png">
				</a>
			</h2>

			<ul
				style="background: url('./asiana_inc/img/sub_event/bg_lnbBottom.png') no-repeat 0 bottom; padding: 0 1px 4px 1px; width: 188px;">
				<li><a class="menu top1" href="#"> 이벤트 </a>
					<ul class="submenu sub1"
						style="padding: 15px 0 15px 19px; display: none;">
						<li><a class="subMenu1 index1" href="#"> 진행 이벤트 </a></li>
						<li><a class="subMenu1 index2" href="#"> 종료 이벤트 </a></li>
					</ul></li>


				<li><a class="menu top5" href="./magicInfo.su"> 매직보딩패스 </a></li>


			</ul>
		</aside>
	</div>
</body>
</html>