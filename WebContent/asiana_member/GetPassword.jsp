<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="asiana_member/css/reset.css" type="text/css" rel="stylesheet">
<link href="asiana_member/css/GetPassword.css" type="text/css" rel="stylesheet">
<title>Insert title here</title>
<script type="text/javascript" src="asiana_member/js/jquery-1.11.1.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	//비밀번호 텍스트 상자 포커스이벤트
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

//확인버튼 클릭
function confirm() {
	var member_id=document.frm.member_id.value;
	var passwd=document.frm.passwd.value;

	if(passwd==""){
		alert("비밀번호를 입력하세요.");
		document.frm.passwd.focus();
		return false;
	}
	
	if(passwd.length<5){
		alert("비밀번호는 5~10자리입니다.");
		document.frm.passwd.focus();
		return false;
	}
	
	$.ajax({
		url: 'asiana_member/loginCheck.jsp?member_id='+member_id+'&passwd='+passwd,
		type: 'post',
		success:function(data){
			if(data==0){
				alert("비밀번호가 일치하지 않습니다.");
				$('.notice_container').css('display','block');
				return false;
			}
		}
	});
}
</script>

<style type="text/css">
.top5{
font-weight: bold;
background: #73706c;
color: #fff !important; 
}

.sub5{
display: block !important;
}

.sub5 .index1{
font-weight: bold;
}
</style>
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
<form action="./GetMemberInfo.me" method="post" name="frm">
<input type="hidden" name="member_id" value="<%=member_id %>">
<div class="locationBox">
<div class="locationInner">
<ul>
<li>
<a href="#">HOME</a>
<span>></span>
</li>
<li> 
<a href="./MyAsiana.me">마이 아시아나</a>
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

<div class="myasianaBox subMain">
<div class="container">

<!-- 메뉴 -->
<jsp:include page="MyAsanaMenu.jsp" />

<!-- 본문 -->
<div id="skipCt">
<div id="containerBody">
<h3 class="h3_type01">비밀번호 확인</h3>
<h4 class="h4_type01">회원님의 개인정보를 안전하게 보호하기 위해 비밀번호를 다시 입력하여 주세요.</h4>

<!-- 에러박스 시작-->
<div class="notice_container">
<div class="notice_Inner">
<ul class="notice">
<li>
<p>비밀번호가 일치하지 않습니다.</p>
</li>
</ul>
</div>
</div>
<!-- 에러박스 끝 -->

<table class="myBoxType2">
<tr class="tableTRtype2">
<td>
회원 아이디
</td>

<td>
<strong>
<span class="fontPerple"><%=member_id %></span>
</strong>
</td>
</tr>

<tr class="tableTRtype2">
<td class="line"> 
비밀번호
</td>

<td class="line"> 
<input type="password" name="passwd" class="inputfocus" maxlength="10" onkeyup="this.value=gap_filter(this.value)">
</td>
</tr>
</table>

<ul class="alertList01">
<li>회원님의 개인정보를 보호하기 위해, 회원정보 조회시 비밀번호 재확인합니다.</li>
<li>비밀번호는 대/소문자를 구별하여 입력하시기 바랍니다.</li>
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