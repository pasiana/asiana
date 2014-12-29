<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="asiana_member/css/reset.css" type="text/css" rel="stylesheet">
<link href="asiana_member/css/ChangePassword.css" type="text/css" rel="stylesheet">
<title>Insert title here</title>
<script type="text/javascript" src="asiana_member/js/jquery-1.11.1.js"></script> 
<script type="text/javascript">
$(document).ready(function(){
	//포커스 이벤트
	$('.inputfocus').focus(function(){	
		$(this).css('border','1px solid #241CB0');
	});
	
	$('.inputfocus').blur(function(){
		$(this).css('border','1px solid #a6a6a6');
	});
});

//비밀번호 공백 제어
function gap_filter(str_value) {
	return str_value.replace(/[\s]/g , "");
}

//확인
function confirm() {
	if(document.frm.passwd.value.length<5){
		alert("비밀번호는 5~10자리입니다.");
		document.frm.passwd.focus();
		return false;
	}
	
	if(document.frm.newpasswd.value==""){
		alert("신규 비밀번호을 입력하세요.");
		document.frm.newpasswd.focus();
		return false;
	} 
	
	if(document.frm.newpasswd.value.length<5){
		alert("비밀번호는 5~10자리입니다.");
		document.frm.newpasswd.focus();
		return false;
	}
	
	if(document.frm.newpasswd.value!=document.frm.repasswd.value){
		alert("비밀번호가 일치하지 않습니다.");
		document.frm.repasswd.focus();
		return false;
	} 
	
	if(document.frm.passwd.value == document.frm.newpasswd.value){
		alert("신규 비밀번호가 기존 비밀번호와 일치합니다.");
		document.frm.newpasswd.focus();
		return false;
	}
	
	document.frm.submit();
}
</script>
</head>
<%
String member_id=(String)session.getAttribute("member_id");
if(member_id==null){
	response.sendRedirect("./AsianaLogin.me");
}
%>
<body>
<header>
	<jsp:include page="../asiana_inc/header.jsp" />
</header>
<form action="./DoChangePassword.me" method="post" name="frm">
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
비밀번호 변경
</li>
</ul>
</div>
</div>

<div class="myasianaBox subMain">
<div class="container">

<!-- 메뉴 -->
<jsp:include page="MyAsanaMenu.jsp" />

<div id="skipCt">
<div id="containerBody">
<h3 class="h3_type01">비밀번호 변경</h3>

<h4 class="h4_type01">
회원님의 개인정보를 안전하게 보호하기 위해 아시아나항공은 비밀번호를 암호화하여 저장,<br>
관리하고 있습니다. 새로운 비밀번호로 변경해 주세요.
</h4>

<table class="myBoxType2">
<tr>
<td>기존 비밀번호</td>
<td><input type="password" class="inputfocus" name="passwd" maxlength="10" onkeyup="this.value=gap_filter(this.value)"></td>
</tr>

<tr>
<td class="line" style="color: #5e14cc;">신규 비밀번호</td>
<td class="line"><input type="password" class="inputfocus" name="newpasswd" maxlength="10" onkeyup="this.value=gap_filter(this.value)"></td>
</tr>

<tr>
<td class="line" style="color: #5e14cc;">신규 비밀번호 재확인</td>
<td class="line"><input type="password" class="inputfocus" name="repasswd" maxlength="10" onkeyup="this.value=gap_filter(this.value)"></td>
</tr>
</table>

<ul class="alertList01">
<li>띄어쓰기 없는 영문 대소문자, 모든 문자, 숫자로 5~10자</li>
<li>전화번호, 주민번호 등 타인이 쉽게 유추 가능한 비밀번호의 사용을 자제해 주시기 바랍니다.</li>
<li>비밀번호 변경은 3개월 이내에 주기적으로 변경하시기를 권해 드립니다.</li>
</ul>

<div class="btn_personneList">
<input type="image" class="confirm" onclick="return confirm()">
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