<%@page import="com.cafe24.itwill3.Member.db.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="asiana_member/css/reset.css" type="text/css" rel="stylesheet">
<link href="asiana_member/css/MyAsiana.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="asiana_member/js/jquery-1.11.1.js"></script>
<title>Insert title here</title>
</head>
<%
MemberBean memberbean=(MemberBean)request.getAttribute("memberbean");
%>
<body>
<header>
	<jsp:include page="../asiana_inc/header.jsp" />
</header>
<form action="" method="post" name="frm">
<div class="locationBox">
<div class="locationInner">
<ul>
<li>
<a href="#">HOME</a>
<span>></span>
</li>
<li> 마이 아시아나</li>
</ul>
</div>
</div>

<div class="myasianaBox subMain">
<div class="container">

<!-- 메뉴 -->
<jsp:include page="MyAsanaMenu.jsp" />

<!-- 본문 -->
<div id="skipCt">
<!-- 본문 -->
<div id="containerBody">
<div class="subMainBox">
<div class="boxInner">
<h3 class="subMainBoxh3" style="vertical-align: bottom;">
<strong style="font-size: 16px;"><%=memberbean.getKrname() %></strong>
<span style="font-weight: normal; font-size: 11px; line-height: 24px;">(<%=memberbean.getLast_name() %>/<%=memberbean.getFirst_name() %>)</span>
<img src="asiana_member/images/textK_myAsiana0_1.gif" style="margin: 0 0 -2px; vertical-align: baseline;">
</h3>

<ul class="subMainTopInfo">
<li class="memberInfo">

<h4 class="title">나의 정보</h4>
<table>
<tr>
<td>회원번호</td>
<td><strong><%=memberbean.getMember_num() %></strong></td>
</tr>

<tr>
<td>잔여마일리지</td>
<td>
<span class="btnkType12">
<a href="#"><strong><%=memberbean.getMileage() %></strong>마일</a>
</span>
</td>
</tr>

<%if(!memberbean.getTelephone().equals("") && !memberbean.getMobile().equals("")){
	%>
	<tr>
	<td>전화번호</td>
	<td><%=memberbean.getTelephone() %></td>
	</tr>
	<tr>
	<td>휴대전화</td>
	<td><%=memberbean.getMobile() %></td>
	</tr>
	<%
}else if(memberbean.getTelephone().equals("")){
	%>
	<tr>
	<td>휴대전화</td>
	<td><%=memberbean.getMobile() %></td>
	</tr>
	<%
}else{
	%>
	<tr>
	<td>전화번호</td>
	<td><%=memberbean.getTelephone() %></td>
	</tr>
	<%
}
%>

<tr>
<td>이메일</td>
<td><%=memberbean.getEmail() %></td>
</tr>
</table>

</li>

<li class="couponInfo">
<h4 class="title">나의 쿠폰</h4>
<ul class="couponList">
<li class="last">발행된 쿠폰이 없습니다.</li>
</ul>
<span class="btnType02">
<a href="#">전체쿠폰</a>
</span>
</li>

<li class="logoImage">
<img src="asiana_member/images/logo.JPG" style="width: 222px; height: 141px;">
</li>
</ul>

<div class="subMainBtn">
<span class="btnType02">
<a href="./GetPassword.me">회원정보 자세히 보기</a>
</span>
</div>
</div>
</div>

<div class="subMainPositionBox">
<h4 class="h4_Ticket">항공권 예약 현황</h4>
<div class="common-boxQna">
<div class="common-innerQna">
회원님의 항공권 예약 현황을 보시려면 예약조회 메뉴에서 확인하실 수 있습니다.
<p>
<span class="btnType02">
<a href="ReservationList.me">바로가기</a>
</span>
</p>
</div>
</div>
</div>
</div>
</div>

</div>
</div>
</form>
<footer>
	<jsp:include page="../asiana_inc/footer.jsp" />
</footer>
</body>
</html>