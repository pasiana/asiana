<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원목록</title>
<link type="text/css" rel="stylesheet" href="css/bookonline.css">
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
	.memberlist{
		width: 711px;
		text-align: center;
		border-collapse: collapse;
	}
	
	.memberlist tr:nth-child(1) td{
		font-size: 1.2em;
		font-weight: bold;
		background: url(img/t_back.jpg) repeat-x center center;
		padding: 7px 7px 9px 7px;
		color: white;
	}
	
	.memberlist tr:nth-child(1) .name{
		width: 80px;
		border-top-left-radius:5px;
		border-bottom-left-radius:5px;
	}
	
	.memberlist tr:nth-child(1) .day{
		width: 150px;
		border-top-right-radius:5px;
		border-bottom-right-radius:5px;
	}
	
	.memberlist tr:nth-child(1) .list{
		width: 80px;
	}
	
	.memberlist tr td{
		padding: 8px 0;
		border-bottom: 1px dotted #999;
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
					<li><a href="#none">관리자목록</a> <span>&gt;</span></li>
					<li><a href="#none">관리자에서</a> <span>&gt;</span></li>
					<li>회원목록</li>
				</ul>
			</div>
		</div>

		<div id="containerBox">
			<div id="container">
				<!-- 사이드 메뉴 -->
				<jsp:include page="AdminMenu.jsp" />
				<!-- 사이드 메뉴 끝 -->

				<div id="skipCt">
					<!-- section -->
					<section id="containerBody">
						<h3 class="h3_type01">회원목록</h3>

						<div class="service_contents">
							<table class="memberlist">
								<tr>
									<td class="name">이름</td>
									<td class="id">아이디</td>
									<td class="list">예약목록</td>
									<td class="day">가입날짜</td>
								</tr>
								
								<!-- 반복해야할곳 -->
								<tr>
									<td>안드로이드</td>
									<td>and</td>
									<td><a href="#">보기</a></td>
									<td>2014-12-23</td>
								</tr>
								
								<tr>
									<td>안드로이드</td>
									<td>and</td>
									<td><a href="#">보기</a></td>
									<td>2014-12-23</td>
								</tr>
								<!-- 반복해야할곳 -->
								
							</table>
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