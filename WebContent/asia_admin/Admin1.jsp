<<<<<<< HEAD
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.cafe24.itwill3.Member.db.MemberBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원목록</title>
<link type="text/css" rel="stylesheet" href="asia_admin/css/bookonline.css">
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
			$('.top1').addClass("menuchange");
			$('.top1').parent().children('ul').css('display', 'block');
});

function searching() {
	if(document.fr.content.value==""){
		alert("검색어를 입력하십시오.");
		document.fr.content.focus();
		return false;
	}
	document.fr.submit();
}
</script>
<style type="text/css">
	#searching{
	width: 247px;
	height: 20px;
	float: right;
	margin-bottom: 10px;
	}
	
	#btn_search{
	background: url(asia_admin/img/btn_search.gif) no-repeat;
	width: 47px;
	height: 20px;
	}
	
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
		background: url(asia_admin/img/t_back.jpg) repeat-x center center;
		padding: 7px 7px 9px 7px;
		color: white;
	}
	
	.memberlist tr:nth-child(1) .num{
		width: 80px;
		border-top-left-radius:5px;
		border-bottom-left-radius:5px;
	}
	
	.memberlist tr:nth-child(1) .id{
		width: 100px;
	}
	
	.memberlist tr:nth-child(1) .name{
		width: 100px;
	}
	
	.memberlist tr:nth-child(1) .day{
		width: 120px;
	}
	
	.memberlist tr:nth-child(1) .list{
		width: 80px;
	}
	
	.memberlist tr td{
		padding: 8px 0;
		border-bottom: 1px dotted #999;
	}
	
	.memberlist tr:hover{
	background: #73706c;
	color: #fff; 
	}
</style>
</head>
<%
List memberlist=(List)request.getAttribute("memberlist");
SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
%>
<body>
	<header>
		<jsp:include page="../asiana_inc/header.jsp" />
	</header>
	<!-- 기내에서 -->
	<section id="main_container">
		<div class="locationBox">
			<div class="location">
				<ul>
					<li><a href="#none">HOME</a> <span>&nbsp;&gt;&nbsp;</span></li>
					<li><a href="#none">관리자 목록</a> <span>&nbsp;&gt;&nbsp;</span></li>
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
						
						<form action="./AsianaMemberListSearch.me" method="post" name="fr">
						<div id="searching">
						<select id="select" name="select" style="float: left;">
						<option value="member_num">회원번호</option>
						<option value="member_id">아이디</option>
						<option value="Krname">이름</option>
						</select>
						<input type="text" name="content" style="height: 18px; float: left;">
						<input type="image" id="btn_search" onclick="return searching()">
						</div>
						</form>
							
							<table class="memberlist">
								<tr>
									<td class="num">회원번호</td>
									<td class="id">아이디</td>
									<td class="name">이름</td>
									<td class="list">예약목록</td>
									<td class="day">가입날짜</td>
								</tr>
								
								<!-- 반복해야할곳 -->
								<%
								for(int i=0;i<memberlist.size();i++){
									MemberBean memberbean=(MemberBean)memberlist.get(i);
									%>
									<tr>
									<td><%=memberbean.getMember_num() %></td>
									<td><%=memberbean.getMember_id() %></td>
									<td><%=memberbean.getKrname() %></td>
									<td><a href="#">보기</a></td>
									<td><%=sdf.format(memberbean.getReg_date()) %></td>
									</tr>
									<%
								}
								%>
=======
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
>>>>>>> branch 'kwak' of https://github.com/pasiana/asiana.git
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
