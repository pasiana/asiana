<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./asiana_inc/css/footer.css">
<style type="text/css">

</style>
<script type="text/javascript">
$(function(){
	$('#family').mouseout(function(){
		$('.foot_li2').css('display','none');
	}).mouseover(function(){
		$('.foot_li2').css('display','block');
	});
});
</script>
</head>
<body>
<div id="footer">
	<!-- footer nav bar 시작 -->
	<div class="foot_hr">
		<div class="foot_margin" style="width:956px; height: 34px;">
			<ul class="foot foot_li1">
				<li><a href="#">미디어 룸</a></li>
				<li><a href="#">사이트맵</a></li>
				<li><a href="#">인터넷 도우미</a></li>
				<li><a href="#">로그인 설정 안내</a></li>
				<li><a href="#">운송약관</a></li>
				<li><a href="#">홈페이지 이용약관</a></li>
				<li>
					<a href="#" style="line-height: 26px;height: 23px;background: url(./asiana_inc/img/foot/bl_auth.png) no-repeat 0px 1px;width: 19px;display: inline-block;vertical-align: -5px;margin-top: -5px;"></a>
					<a href="#" style="">개인정보 취급방침</a>
				</li>
			</ul>
			<div id="family" style="position: relative; float: right; padding: 7px 0 0 0; z-index: 10;">
				<a href="#" style="display: inline-block;width: 134px; height: 20px; padding: 0px 0px 13px 14px;font-size: 11px;color: rgb(102, 102, 102);vertical-align: middle;line-height: 20px;background: url(./asiana_inc/img/foot/bg_family.gif) 0px 0px no-repeat;">패밀리사이트</a>
				<ul class="foot foot_li2">
					<li><a href="#">아시아나 380</a></li>
					<li><a href="#">아시아나 드림윙즈</a></li>
					<li><a href="#">기내면세품</a></li>
					<li><a href="#">인재채용</a></li>
					<li><a href="#">사회공헌/윤리경영</a></li>
					<li><a href="#">서비스컨설팅</a></li>
					<li><a href="#">아시아나카고</a></li>
					<li><a href="#">아시아나 샵</a></li>
					<li><a href="#">아시아나 구매포털</a></li>
					<li><a href="#">스타일라이언스</a></li>
				</ul>
				<a href="#">
					<img src="./asiana_inc/img/foot/btn_familygo.gif">
				</a>
			</div>
		</div>
	</div>
	<!-- footer nav bar 끝 -->
	<!-- footer content 시작 -->
	<div class="foot_hr" style="position: relative;">
		<div class="foot_content foot_margin">
			<address style="line-height:16px;font-size:11px;">
				<strong style="color:#333;">아시아나항공(주)</strong>
				대표이사 사장 김수천  |  (우) 157-713 서울시 강서구 오정로 443-83 (오쇠동)
				<span class="" style="margin-left:10px;">
					<a href="#" onclick="" title="새창">지도</a>
				</span>
				<span class="">
					<a href="#" onclick="">지점연락처</a>
				</span>
				<span class="">
					<a href="#" onclick="" title="새창">사업자정보 확인</a>
				</span>
				<br>
				예약  1588-8000 / 02-2669-8000  |  아시아나클럽  1588-8180 / 02-2669-8180  |  <a href="" target="_blank" style="color:#666; font-size:11px; line-height:16px; font-weight:normal; display:inline-block; margin:-2px 0 0; padding-right:15px; text-decoration:underline; background:url() no-repeat right bottom ;">이메일문의</a>
				<br>
				사업자등록번호  104-81-17480  |  통신판매업 신고번호 제 16-2822  |  개인정보관리책임자 여객마케팅 상무 송석원
				<br>
				호스팅 서버 위치 : 아시아나IDT(주) 전산센터(서울 강서구 오쇠동)
				<p style="color:#333;padding:5px 0 0 0;">© Asiana Airlines Inc. All Rights Reserved.</p>
			</address>
			<a href="#" style="position:absolute; top: 25px; right: 250px;">
				<img src="./asiana_inc/img/Logo.png">
			</a>
		</div>
	</div>
	<!-- footer content 끝 -->
	<!-- footer under_logo 시작 -->
	<div class="foot_hr">
		<div class="foot_margin" style="width: 956px; padding: 20px 0 36px 0;">
			<img src="./asiana_inc/img/foot/sb_airlinetheyear.jpg" style="margin-right: 190px;">
			<img src="./asiana_inc/img/foot/sb_i_2.jpg" style="margin-top: 8px; margin-right: 90px;">
			<a href="#">
				<img src="./asiana_inc/img/foot/sb_starmember_2.jpg">
			</a>
		</div>
	</div>
	<!-- footer under_logo 끝 -->
</div>
</body>
</html>