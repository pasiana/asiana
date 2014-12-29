<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="asiana_member/css/reset.css" type="text/css" rel="stylesheet">
<link href="asiana_member/css/DoChangePassword.css" type="text/css" rel="stylesheet">
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
<li> 
<a href="MyAsiana.jsp">마이 아시아나</a>
<span>></span>
</li>
<li> 
<a href="#">회원정보</a>
<span>></span>
</li>
<li> 
회원정보 변경
</li>
</ul>
</div>
</div>

<div id="containerBox">
<div id="container">

<!-- 메뉴 -->
<jsp:include page="MyAsanaMenu.jsp" />

<div id="skipCt">
<div id="containerBody">
<h3 class="h3_type01">비밀번호 변경</h3>
<div class="contBold">
회원님의 정보가 수정되었습니다.<br>
감사합니다.
</div>

<div class="btn_personneList2">
<span class="btnType12 btnPadding">
<a href="./MyAsiana.me">마이아시아나 홈으로</a>
</span>
<span class="btnType12">
<a href="./AsianaMain.me">홈으로</a>
</span>
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