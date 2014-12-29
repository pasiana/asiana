<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="asiana_member/css/reset.css" type="text/css" rel="stylesheet">
<link href="asiana_member/css/SearchID.css" type="text/css" rel="stylesheet">
<title>Insert title here</title>
<script type="text/javascript" src="asiana_member/js/jquery-1.11.1.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	//포커스 이벤트
	$('.inputType01').focus(function(){	
		$(this).css('border','1px solid #241CB0');
	});
	
	$('.inputType01').blur(function(){
		$(this).css('border','1px solid #a6a6a6');
	});
});

//월별 일 수 구하기 & 2월 윤년 구분
function date() {
 var years=Number(document.fr.years.value);
 var month=Number(document.fr.month.value);
 var day="";

 	switch (month) {
 	case 1: case 3: case 5: case 7: case 8: case 10: case 12:		
 		for(var i=1;i<=31;i++){
	   		day+="<option value="+i+">"+i+"</option>";
 		}
  	   	document.fr.day.innerHTML=day;
 		break;
 
 	case 4: case 6: case 9: case 11:
		for(var i=1;i<=30;i++){
 		    day+="<option value="+i+">"+i+"</option>";
 		}
  		document.fr.day.innerHTML=day;
  		break;
 
 	case 2:
  		if(years%4 == 0 && years%100 != 0 || years%400 == 0){
   			for(var i=1;i<=29;i++){
   				day+="<option value="+i+">"+i+"</option>";
  			}  			
  			document.fr.day.innerHTML=day; 			
  			break;
  		}else{
  			for(var i=1;i<=28;i++){  				
   				day+="<option value="+i+">"+i+"</option>";
   			} 
   			document.fr.day.innerHTML=day;
   			break;
 	 	}
    }
}

function SearchID() {
	if(document.fr.Krname.value==""){
		alert("한글성명을 입력해주세요.");
		document.fr.Krname.focus();
		return false;
	}
	
	if(/[^ㄱ-ㅎㅏ-ㅣ가-힣]/g.test(document.fr.Krname.value)){
		alert("성명은 한글로 입력해 주십시오.");
		document.fr.Krname.focus();
		return false;
	}
	
	if(document.fr.years.value=="년도"){
		alert("년도을 정확히 선택하세요.");
		document.fr.years.focus();
		return false;
	}
	
	if(document.fr.month.value=="월"){
		alert("월을 정확히 선택하세요.");
		document.fr.month.focus();
		return false;
	}
	
	if(document.fr.day.value=="일"){
		alert("일을 정확히 선택하세요.");
		document.fr.day.focus();
		return false;
	}
	
	document.fr.birthday.value = document.fr.years.value+"-"+document.fr.day.value+"-"+document.fr.day.value;
	
	if(document.fr.email.value==""){
		alert("이메일 주소를 입력하세요.");
		document.fr.email.focus();
		return false;
	}
	
	if(!/^[0-9a-zA-Z가-힣]([-_\.]?[0-9a-zA-Z가-힣])*@[0-9a-zA-Z가-힣]([-_\.]?[0-9a-zA-Z가-힣])*\.[a-zA-Z가-힣]{2,3}$/.test(document.fr.email.value)) {
		alert("올바른 이메일 주소를 입력해 주세요.");
		document.fr.email.focus();
		return false;
	}
	document.fr.submit();
}
</script>
</head>

<body>
<header>
	<jsp:include page="../asiana_inc/header.jsp" />
</header>
<form action="./ResultID.me" method="post" name="fr">
<div class="locationBox">
<div class="locationInner">
<ul>
<li>
<a href="#">HOME</a>
<span>></span>
</li>
<li> 
아이디 찾기
</li>
</ul>
</div>
</div>

<!-- 본문 -->
<div class="loginBox">
<div class="container">
<div class="skipCt">
<div id="containerBody">
<h3 class="h3_type02">아이디 찾기</h3>
<p class="topBtnArea">
<span class="btnKtype01">
<a href="./SearchPW.me">비밀번호 찾기</a>
</span>
</p>
</div>

<div class="accInnerBox">
<div class="boxInner">
<h6 class="h4_type01">아이디 찾기</h6>
<p>
회원가입 시 입력한 이메일 정보를 입력해주십시오.
</p>

<table class="SearchBox">
<tr>
<td>한글성명</td>
<td><input type="text" class="inputType01" name="Krname"></td>
</tr>

<tr>
<td>생년월일</td>
<td>
<select name="years" onchange="date()">
<option value="년도">년도</option>
<%
for(int i=2014;i>=1900;i--){
	%><option value="<%=i%>"><%=i%></option> <%
}
%>
</select>
<span>&nbsp;년&nbsp;</span>

<select class="month" name="month" onchange="date()">
<option value="월">월</option>
<%
for(int i=1;i<=12;i++){
	%><option value="<%=i%>"><%=i%></option> <%
}
%>
</select>
<span>&nbsp;월&nbsp;</span>

<select class="day" name="day">
<option value="일">일</option>
</select>

<span>&nbsp;일&nbsp;</span>
<input type="hidden" name="birthday">
</td>
</tr>

<tr>
<td>이메일 주소</td>
<td><input type="text" class="inputType01" name="email"></td>
</tr>
</table>
<div class="btnArea">
<span class="Sbtn_TType3_1">
<a href="#" onclick="SearchID()">확인</a>
</span>
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