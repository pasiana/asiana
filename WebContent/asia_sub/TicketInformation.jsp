<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>항공권안내</title>
<link type="text/css" rel="stylesheet" href="./asia_sub/css/ticketinformation.css">
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
			$('.top2').addClass("menuchange");
			$('.top2').parent().children('ul').css('display', 'block');
			
			$('.In').click(function(){
				$('.In').css('font-weight','normal').css('text-decoration','none');
				$(this).css('font-weight','bold').css('text-decoration', 'underline');
			});
			
			$('.In1').click(function() {
				$('.eTicket').show();
				$('.Sent').hide();
				$('.Reissue').hide();
				$('.Lost').hide();
				$('.Upgrades').hide();
				$('.PurchaseMeans').hide();
			});
			
			$('.In2').click(function() {
				$('.eTicket').hide();
				$('.Sent').show();
				$('.Reissue').hide();
				$('.Lost').hide();
				$('.Upgrades').hide();
				$('.PurchaseMeans').hide();
			});
			
			$('.In3').click(function() {
				$('.eTicket').hide();
				$('.Sent').hide();
				$('.Reissue').show();
				$('.Lost').hide();
				$('.Upgrades').hide();
				$('.PurchaseMeans').hide();
			});
			
			$('.In4').click(function() {
				$('.eTicket').hide();
				$('.Sent').hide();
				$('.Reissue').hide();
				$('.Lost').show();
				$('.Upgrades').hide();
				$('.PurchaseMeans').hide();
			});
			
			$('.In5').click(function() {
				$('.eTicket').hide();
				$('.Sent').hide();
				$('.Reissue').hide();
				$('.Lost').hide();
				$('.Upgrades').show();
				$('.PurchaseMeans').hide();
			});
			
			$('.In6').click(function() {
				$('.eTicket').hide();
				$('.Sent').hide();
				$('.Reissue').hide();
				$('.Lost').hide();
				$('.Upgrades').hide();
				$('.PurchaseMeans').show();
			});
});
</script>
<style type="text/css">
	.TicketInformation{
		font-weight: bold;
	}
	.In:hover{
		text-decoration: underline;
	}
	.In1{
		font-weight: bold;
		text-decoration: underline;
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
					<li><a href="#none">항공권 안내</a> <span>&gt;</span></li>
					<li>전자항공권 안내</li>
				</ul>
			</div>
		</div>

		<div id="containerBox">
			<div id="container">
				<!-- 사이드 메뉴 -->
				<jsp:include page="ServiceMenu.jsp" />
				<!-- 사이드 메뉴 끝 -->

				<div id="skipCt">
					<!-- section -->
					<section id="containerBody">
						<h3 class="h3_type01">항공권 안내</h3>

						<ul class="common-depth4">

							<li><a href="#" class="In In1">전자항공권안내</a></li>
							<li><a href="#" class="In In2">타 지역 송부 서비스</a></li>
							<li><a href="#" class="In In3">항공권 재발행 및 취소</a></li>
							<li><a href="#" class="In In4">항공권 분실</a></li>
							<li><a href="#" class="In In5">좌석 승급</a></li>
							<li><a href="#" class="In In6">항공권 구입 수단</a></li>

						</ul>

						<div class="service_contents">
							<img src="./asia_sub/img/TicketInformation.jpg" class="eTicket" >
							
							<img src="./asia_sub/img/sent.jpg" class="Sent" style="display: none;">
							
							<img src="./asia_sub/img/Reissue.jpg" class="Reissue" style="display: none;">
							
							<img src="./asia_sub/img/Lost.jpg" class="Lost" style="display: none;">
							
							<img src="./asia_sub/img/Upgrades.jpg" class="Upgrades" style="display: none;">
							
							<img src="./asia_sub/img/PurchaseMeans.jpg" class="PurchaseMeans" style="display: none;">
						</div>

						<div class="common-boxRelationService">
							<div class="common-innerRelationService">
								<img src="./asia_sub/img/service.jpg">
							</div>
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