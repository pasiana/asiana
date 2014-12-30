<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>IT아시아나클럽 소개</title>
<link type="text/css" rel="stylesheet" href="./asia_sub3/css/bookonline.css">
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('.top1').addClass("menuchange");
		$('.top1').parent().children('ul').css('display', 'block');
	});
</script>
<style type="text/css">
.location ul li:nth-child(4) {
	color: #999;
}

#containerBox #container #containerBody {
	min-height: 550px;
}

.asianaContent-tit-1 {
	margin: 0 0 40px 0;
}
.asianaContent_txtP-1 {
margin: 0 0 232px 0;
}
.asianaContent-txt-1 {
width: 710px;
line-height: 24px;
}
.asianaContent-txt-1 .left-txtLeft-1 {
width: 345px;
float: left;
margin: 0 30px 0 0;
}
.asianaContent-txt-1 .right-txtRight-1 {
width: 335px;
float: left;
}
</style>
</head>
<body>
	<header>
		<jsp:include page="../asiana_inc/header.jsp" />
	</header>
	<section id="main_container">
		<div class="locationBox">
			<div class="location">
				<ul>
					<li><a href="#none">HOME</a> <span>&gt;</span></li>
					<li><a href="#none">IT아시아나</a> <span>&gt;</span></li>
					<li><a href="#none">IT아시아나 소개</a> <span>&gt;</span></li>
					<li>소개</li>
				</ul>
			</div>
		</div>
		<div id="containerBox"
			style="background: url(http://ozimg.flyasiana.com/img_server/content_upload/editorimage/384fa99e-9563-40fa-bcd7-d6ca3037c1ca.jpg) 50% 0px no-repeat;">
			<div id="container">
				<!-- 사이드 메뉴 -->
				<jsp:include page="IntroductionMenu.jsp" />
				<!-- 사이드 메뉴 끝 -->

				<div id="skipCt">
					<!-- section -->
					<section id="containerBody">
						<h3 class="h3_type01">소개</h3>

						<div class="asianaContent-bigbg">
							<h4 class="asianaContent-tit-1">
								<img
									src="http://flyasiana.com/CW/images/text/textJ_company_box_txt01.gif">
							</h4>

							<div class="asianaContent-txt-1 asianaContent_txtP-1">
								<p class="left-txtLeft-1">
									1988년 '최고의 안전과 서비스를 통한 고객 만족'이라는<br> 경영이념으로 창립된 아시아나항공은 전
									세계에 색동날개를<br> 펼치는 글로벌 항공사로 성장하였습니다.<br> 색동 고운 날개 만큼이나
									아름다운 미소, 참신하고 정성어린<br> 서비스로 고객에게 다가가는 아시아나 항공은 최신 설비로<br>
									안전을 최우선으로 추구하며 미래를 향한 비상을 계속하고<br> 있습니다.
								</p>
								<p class="right-txtRight-1">
									아시아나항공은 최고의 서비스를 통한 고객만족을 핵심<br> 역량으로 정하고, 업계 최고 1등의 기업가치를
									창출하는<br> 아름다운 기업으로서의 역할을 다하고자 끊임없는 노력을<br> 기울이고 있습니다.
									또한 윤리/환경/상생 경영 및 사회공헌에<br> 이르기까지 기업의 사회적 책임을 다하여 지속 가능한
									성장을<br> 추구하는 세계 최고의 항공사가 되고자 합니다.<br> 아시아나항공과 함께 즐겁고
									편안한 여행 되시길 바랍니다.
								</p>
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