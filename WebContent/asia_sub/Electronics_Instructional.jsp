<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>휴대용 전자기기 사용안내</title>

<link type="text/css" rel="stylesheet" href="./asia_sub/css/bookonline.css">
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
			$('.top7').addClass("menuchange");
			$('.top7').parent().children('ul').css('display', 'block');
});
</script>
<style type="text/css">
	.Electronics_Instructional{
		font-weight: bold;
	}
</style>
</head>
<body>
	<header>
		<jsp:include page="../asiana_inc/header.jsp" />
	</header>
	<!-- 기내에서 -->
	<section id="main_container">
		<div class="locationBox">
			<div class="location">
				<ul>
					<li><a href="#none">HOME</a> <span>&gt;</span></li>
					<li><a href="#none">서비스 안내</a> <span>&gt;</span></li>
					<li><a href="#none">기내에서</a> <span>&gt;</span></li>
					<li>휴대용 전자기기 사용안내</li>
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
						<h3 class="h3_type01">휴대용 전자기기 사용안내</h3>

						<div class="service_contents">
							<img src="./asia_sub/img/Electronics_Instructional.jpg">
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
	<!-- 기내에서 끝  -->
</body>
</html>