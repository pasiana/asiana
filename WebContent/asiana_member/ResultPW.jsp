<%@page import="com.cafe24.itwill3.Member.db.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="asiana_member/css/reset.css" type="text/css" rel="stylesheet">
<link href="asiana_member/css/ResultID.css" type="text/css" rel="stylesheet">
<title>Insert title here</title>
<script type="text/javascript" src="asiana_member/js/jquery-1.11.1.js"></script> 
<style type="text/css">

</style>
</head>
<%
MemberBean memberbean=(MemberBean)request.getAttribute("memberbean");
%>
<body>
<header>
	<jsp:include page="../asiana_inc/header.jsp" />
</header>

<div class="locationBox">
<div class="locationInner">
<ul>
<li>
<a href="#">HOME</a>
<span>></span>
</li>
<li> 
비밀번호 찾기
</li>
</ul>
</div>
</div>

<!-- 본문 -->
<div class="loginBox">
<div class="container">
<div class="skipCt">
<div id="containerBody">
<h3 class="h3_type02">비밀번호 찾기</h3>
<p class="topBtnArea">
<span class="btnKtype01">
<a href="./SearchID.me">아이디 찾기</a>
</span>
</p>
</div>

<div class="accInnerBox">
<div class="boxInner">
<h6 class="h4_type01">임시 비밀번호</h6>

<table class="SearchBox">
<tr>
<td>이름</td>
<td><%=memberbean.getKrname() %></td>
</tr>

<tr>
<td>회원번호</td>
<td><%=memberbean.getMember_num() %></td>
</tr>

<tr>
<td>임시 비밀번호</td>
<td><strong><%=memberbean.getPasswd() %></strong></td>
</tr>
</table>
<div class="btn_personneList2">
<span class="btnType12 btnPadding">
<a href="./AsianaMain.me">아시아나항공 홈</a>
</span>
<span class="btnType12">
<a href="./AsianaLogin.me">로그인 하기</a>
</span>
</div>

</div>
</div>

</div>
</div>
</div>

<footer>
	<jsp:include page="../asiana_inc/footer.jsp" />
</footer>
</body>
</html>