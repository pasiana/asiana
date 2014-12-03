<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>인터넷예매</title>

<link type="text/css" rel="stylesheet" href="css/bookonline.css">
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
			$('.top2').addClass("menuchange");
			$('.top2').parent().children('ul').css('display', 'block');
});
</script>
<style type="text/css">
	.BookingAirport{
		font-weight: bold;
	}
</style>
</head>
<body>
	<!-- 항공권예매 -->
	<section id="main_container">
		<div class="locationBox">
			<div class="location">
				<ul>
					<li><a href="#none">HOME</a> <span>&gt;</span></li>
					<li><a href="#none">서비스 안내</a> <span>&gt;</span></li>
					<li><a href="#none">항공권 예매</a> <span>&gt;</span></li>
					<li>공항 예매</li>
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
						<h3 class="h3_type01">공항 예매</h3>

						<div class="service_contents">
							<img src="img/BookingAirport.jpg">
						</div>

						<div class="common-boxRelationService">
							<div class="common-innerRelationService">
								<img src="img/service.jpg">
							</div>
						</div>

					</section>
					<!-- section 끝-->
				</div>
			</div>
		</div>
	</section>
	<!-- 항공권예매 끝  -->
</body>
</html>