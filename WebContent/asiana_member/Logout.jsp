<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="asiana_member/css/reset.css" type="text/css" rel="stylesheet">
<link href="asiana_member/css/Logout.css" type="text/css" rel="stylesheet">
<title>Insert title here</title>
<script type="text/javascript" src="asiana_member/js/jquery-1.11.1.js"></script>
</head>

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
<li>로그아웃</li>
</ul>
</div>
</div>

<div id="containerBox">
<div id="container">
<div id="skipCt">
<div id="containerBody">
<h3 class="h3_type02">로그아웃</h3>

<div class="loginBoxTyp0">
<div class="boxInner">
<img src="asiana_member/images/textK_login_text_5.gif">

<div class="btn_personnerList2">
<span class="btnKType04 btnPadding">
<a href="./AsianaLogin.me">로그인</a>
</span>

<span class="btnKType04">
<a href="./AsianaMain.me">홈으로</a>
</span>
</div>
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