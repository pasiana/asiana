<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="asiana_member/css/reset.css" type="text/css" rel="stylesheet">
<link href="asiana_member/css/login.css" type="text/css" rel="stylesheet">
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

//아이디 공백, 특수문자 입력 제어
function special_filter(str_value){
	if(document.frm.loginType.value==0){
		return str_value.replace(/[^\w]/g, "");
	}else{
		return str_value.replace(/[^0-9]/g, "");
	}
}

//비밀번호 공백 제어
function gap_filter(str_value) {
	return str_value.replace(/[\s]/g , "");
}

//화면 로딩
function init() {
	var type;
	var result;
	
	document.frm.member_id.focus();
	document.frm.radLoginType[0].checked=true;

	if(getCookie("member_id")){
		result=getCookie("member_id");
		type=result.substring(0, 1);
		document.frm.member_id.value=result.substring(1, result.length);

		if(type=="N"){
			document.frm.radLoginType[1].checked=true;
			$("#loginType").val("1");
			$("#labelID").html("회원번호");
			$("#labelSave").html("회원번호 저장");
			$("#forLoginID").attr("maxlength", "8");
		}else{
			document.frm.radLoginType[0].checked=true;
			$("#loginType").val("0");
		}
		document.frm.saveID.checked=true;
		document.frm.passwd.focus();
	}
}

//id 쿠키 저장
function setCookie(name, type, value, expiredays) {
	var param=type+value;
	var expire=new Date();
	expire.setDate(expire.getDate()+expiredays);
	document.cookie=name+"="+ escape(param) + "; path=/; expires=" + expire.toGMTString() + ";";
}

//id 쿠키 가져오기
function getCookie(Name) {
    var first = Name + "=";
    if (document.cookie.length > 0) { 
        start = document.cookie.indexOf(first);
        if (start != -1) {
            start+= first.length; 
            end = document.cookie.indexOf(";", start); 
            if (end == -1) {
                end = document.cookie.length;
            }
            return unescape(document.cookie.substring(start, end));
        }
    }
}

//아이디(회원번호)저장 체크
var check=0;
function labelcheck(){
	document.frm.saveID.checked=true;
	
	if(check==1){
		document.frm.saveID.checked=false;
		check=0;
		return;
	}
	check=1;
}

//로그인 타입(아이디 & 회원번호)
function showLoginType(val){
	if(val == 1){
		$("#forLoginID").val("");
		$("#labelID").html("회원번호");
		$("#labelSave").html("회원번호 저장");
		$("#forLoginID").attr("maxlength", "8");
	}else{
		$("#forLoginID").val("");
		$("#labelID").html("아이디");
		$("#labelSave").html("아이디 저장");
		$("#forLoginID").attr("maxlength", "12");
	}
	$("#loginType").val(val);
}

//로그인버튼 클릭
function login() {
	var member_id=document.frm.member_id.value;
	var passwd=document.frm.passwd.value;
	var radLoginType;
	var loginType=document.frm.loginType.value;
	
	if(member_id==""){
		alert("아이디를 입력하세요.");
		document.frm.member_id.focus();
		return false;
	}
	
	if(member_id.length<4){
		alert("아이디는 4~12자리입니다.");
		document.frm.member_id.focus();
		return false;
	}
	
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
	
	if(document.frm.radLoginType[0].checked==true){
		radLoginType="I";
	}else{
		radLoginType="N";
	}
	
	if(document.frm.saveID.checked==true){
		setCookie("member_id", radLoginType, member_id, 7);
	}else{
		setCookie("member_id", radLoginType, member_id, 0);
	}
	
	$.ajax({
		url: 'asiana_member/loginCheck.jsp',
		type: 'post',
		data: {
			loginType : loginType,
			member_id : member_id,
			passwd : passwd
		},
		success:function(data){
			if(data==0){
				alert("아이디 또는 비밀번호 오류입니다.\n입력하신 아이디 또는 비밀번호가 등록되어 있지 않거나, 잘못 입력하셨습니다.");
				$('.loginAreaTop').css('margin-top','10px');
				$('.errorBox').css('margin-top','-40px');
				$('.errorBox').css('display','block');
			}else{
				document.frm.submit();
			}
		}
	});
}
</script>
</head>

<body onload="init()">
<header>
	<jsp:include page="../asiana_inc/header.jsp" />
</header>
<form action="./MemberLoginAction.me" method="post" name="frm" onsubmit="return false;">
<input type="hidden" id="loginType" name="loginType" value="0">
<input type="hidden" id="error" name="error" value="0">
<div class="locationBox">
<div class="locationInner">
<ul>
<li>
<a href="#">HOME</a>
<span>></span>
</li>
<li>로그인</li>
</ul>
</div>
</div>

<div class="loginBox">
<div class="hr">
<div id="containerBody">
<h2>로그인</h2>
</div>
</div>

<!-- 에러박스 시작 -->
<div class="errorBox">
<div class="errorInner">
<div class="noticeBl">
<p>
<strong>아이디 또는 비밀번호 오류입니다.</strong>
<br>
입력하신 아이디 또는 비밀번호가 등록되어 있지 않거나, 잘못 입력하셨습니다.
</p>
</div>
</div>
</div>
<!-- 에러박스 끝 -->

<div class="loginAreaTop">
<div class="contentsLogin">
<ul class="selType">
<li>
<label>
<input type="radio" name="radLoginType" onclick="showLoginType(0)">&nbsp;아이디로 로그인
</label>
</li>

<li>
<label>
<input type="radio" name="radLoginType" onclick="showLoginType(1)">&nbsp;회원번호로 로그인
</label>
</li>
</ul>

<ul class="contType">
<li>
<ul>
<li>
<label id="labelID">아이디</label>
<input type="text" id="forLoginID" class="inputfocus" name="member_id" maxlength="12" style="ime-mode: disabled;" onkeyup="this.value=special_filter(this.value)">
</li>

<li>
<label>비밀번호</label>
<input type="password" id="forLoginPasswd" class="inputfocus" maxlength="10" name="passwd" onkeyup="this.value=gap_filter(this.value)">
</li>

<li>
<input type="image" id="btnLogin" onclick="return login(); return asdf();">
</li>
</ul>

<p style="width:100px; line-height: 20px; display: block; margin-top: 10px;">
<input type="checkbox" name="saveID">
<label id="labelSave" onclick="labelcheck();">아이디 저장</label>
</p>

<p>* 아이디와 비밀번호는 대/소문자를 구별하여 입력하시기 바랍니다.</p>
</li>
</ul>

<ul class="utillBtn">
<li>
<span class="btnType02">
<a href="./SearchID.me">아이디 찾기</a>
</span>
</li>
<li>
<span class="btnType02">
<a href="./SearchPW.me">비밀번호 찾기</a>
</span>
</li>
<li>
<span class="btnType02">
<a href="./AsianaCheckRegistered.me">회원가입</a>
</span>
</li>
</ul>
</div>
</div>

</div>
</form>
<footer>
	<jsp:include page="../asiana_inc/footer.jsp" />
</footer>
</body>
</html>