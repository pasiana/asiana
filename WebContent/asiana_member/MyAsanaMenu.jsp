<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="asiana_member/css/reset.css" type="text/css" rel="stylesheet">
<link href="asiana_member/css/MyAsianoMenu.css" type="text/css" rel="stylesheet">
<title>Insert title here</title>
<script type="text/javascript" src="asiana_member/js/jquery-1.11.1.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	//메뉴 클릭 시 서브메뉴 오픈
	$('.menu').click(function(){
		$('.menu').removeClass("menuchange");
		$('.menu').parent().children('ul').css('display','none');
		$(this).addClass("menuchange");	
		$(this).parent().children('ul').css('display','block');
	});
	
	//서브메뉴 클릭 시 글자 굵기
	$('.subMenu1').click(function(){
		$('.subMenu1').css('font-weight','normal');
		$(this).css('font-weight','bold');
	});
});
</script>

</head>

<body>
<div style="position: absolute; top: 0; left: 0;">
<aside style="margin: 10px 0 0 0; padding-bottom: 10px; background: #fff;">
<h2 style="background: url('https://flyasiana.com/CW/images/bg/bg_h2.png') no-repeat 0 0; width: 171px; height: 60px; padding: 21px 0 0 19px;">
<a href="./MyAsiana.me">
<img src="https://flyasiana.com/CW/images/nav/nav03_h98.png">
</a>
</h2>

<ul style="background: url('https://flyasiana.com/CW/images/bg/bg_lnbBottom.png') no-repeat 0 bottom; padding: 0 1px 4px 1px; width: 188px;">
<li>
<a class="menu top1" href="./ReservationList.me">
예매/구매내역
</a>
<ul class="submenu sub1" style="padding: 15px 0 15px 19px; display: none;">
<li>
<a class="subMenu1 index1" href="./ReservationList.me">
항공권 예약 현황
</a>
</li>
<li>
<a class="subMenu1 index2" href="#">
체크인 가능 예약
</a>
</li>
<li>
<a class="subMenu1 index3" href="#">
항공권 구매내역
</a>
</li>
<li>
<a class="subMenu1 index4" href="#">
마일리지 구매내역
</a>
</li>
</ul>
</li>

<li>
<a class="menu top2" href="#">
마일리지 조회
</a>
<ul class="submenu sub2" style="padding: 15px 0 15px 19px; display: none;">
<li>
<a class="subMenu1 index1" href="#">
상세조회
</a>
</li>
<li>
<a class="subMenu1 index2" href="#">
적립/사용처별 세부사항
</a>
</li>
<li>
<a class="subMenu1 index3" href="#">
소멸 예정 마일리지
</a>
</li>
</ul>
</li>

<li>
<a class="menu top3" href="#">
누락마일리지 적립
</a>
<ul class="submenu sub3" style="padding: 15px 0 15px 19px; display: none;">
<li>
<a class="subMenu1 index1" href="#">
아시아나항공
</a>
</li>
<li>
<a class="subMenu1 index2" href="#">
스타얼라이언스
</a>
</li>
<li>
<a class="subMenu1 index3" href="#">
기타 제휴항공사
</a>
</li>
</ul>
</li>

<li>
<a class="menu top4" href="#">
쿠폰 조회
</a>
<ul class="submenu sub4" style="padding: 15px 0 15px 19px; display: none;">
<li>
<a class="subMenu1 index1" href="#">
마일리지 항공권/라운지 쿠폰
</a>
</li>
<li>
<a class="subMenu1 index2" href="#">
제휴사 쿠폰
</a>
</li>
</ul>
</li>

<li>
<a class="menu top5" href="./GetPassword.me">
회원정보
</a>
<ul class="submenu sub5" style="padding: 15px 0 15px 19px; display: none;">
<li>
<a class="subMenu1 index1" href="./GetPassword.me">
회원정보변경
</a>
</li>
<li>
<a class="subMenu1 index2" href="./ChangePassword.me">
비밀번호변경
</a>
</li>
<li>
<a class="subMenu1 index3" href="./MyAsianaOut.me">
회원탈퇴
</a>
</li>
</ul>
</li>

<li>
<a class="menu top6" href="#">
가족회원 관리
</a>
<ul class="submenu sub6" style="padding: 15px 0 15px 19px; display: none;">
<li>
<a class="subMenu1 index1" href="#">
현황 조회
</a>
</li>
<li>
<a class="subMenu1 index2" href="#">
가족회원 신청/조회
</a>
</li>
<li>
<a class="subMenu1 index3" href="#">
가족회원 탈퇴
</a>
</li>
</ul>
</li>

<li>
<a class="menu top7" href="#">
이벤트/스크랩 보관함
</a>
<ul class="submenu sub7" style="padding: 15px 0 15px 19px; display: none;">
<li>
<a class="subMenu1 index1" href="#">
이벤트 참여 내역
</a>
</li>
<li>
<a class="subMenu1 index2" href="#">
스크랩 보관함
</a>
</li>
</ul>
</li>
</ul>
</aside>
</div>
</body>
</html>