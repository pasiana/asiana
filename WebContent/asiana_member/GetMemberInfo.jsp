<%@page import="com.cafe24.itwill3.Member.db.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="asiana_member/css/reset.css" type="text/css" rel="stylesheet">
<link href="asiana_member/css/GetMemberInfo.css" type="text/css" rel="stylesheet">
<title>Insert title here</title>
<script src="http://dmaps.daum.net/map_js_init/postcode.js"></script>
<script type="text/javascript" src="asiana_member/js/jquery-1.11.1.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	//포커스 이벤트
	$('input[type=text]').focus(function(){	
		$(this).css('border','1px solid #241CB0');
	});
	
	$('input[type=text]').blur(function(){
		$(this).css('border','1px solid #a6a6a6');
	});
	
	//개인정보 제3자 제공 내용보기
	$('.btn_CpopupLayer a').click(function(){
		$('.Boxclose').show();
	});
	
	$('.btn_close').click(function(){
		$('.Boxclose').hide();
	});
});

//숫자만 입력
function number_filter(str_value) {
	return str_value.replace(/[^0-9]/gi, "");
}

//다음 우편번호 서비스
function openDaumPostcode(){
	new daum.Postcode({
        oncomplete: function(data) {
        	document.frm.post_code1.value = data.postcode1;
            document.frm.post_code2.value = data.postcode2;
            document.frm.address1.value = data.address;
            document.frm.address2.focus();
        }
    }).open();
}

//e-mail 주소 선택
function domainsel() {
	if(document.frm.domain.value==""){
		document.frm.email_Domain.readOnly=false;
		document.frm.email_Domain.value="";
		document.frm.email_Domain.focus();
	}else{
		document.frm.email_Domain.value=document.frm.domain.value;
		document.frm.email_Domain.readOnly=true;
	}
}

//확인
function confirm() {
	if(document.frm.address2.value==""){
		alert("상세 주소를 입력해주세요");
		document.frm.address2.focus();
		return false;
	}
	
	document.frm.post_code.value=document.frm.post_code1.value+"-"+document.frm.post_code2.value;
	document.frm.address.value=document.frm.address1.value+"&&"+document.frm.address2.value;
	
	if(document.frm.telephone1.value=="" && document.frm.telephone2.value=="" && document.frm.telephone3.value==""
		&& document.frm.mobile1.value=="" && document.frm.mobile2.value=="" && document.frm.mobile3.value==""){
		alert("전화번호와 휴대전화번호 중\r\n한 개는 꼭 입력하셔야 합니다.");	
		return false;
	}
	
	if(document.frm.telephone1.value!="" || document.frm.telephone2.value!="" || document.frm.telephone3.value!=""){
		if(document.frm.telephone1.value=="" || document.frm.telephone2.value=="" || document.frm.telephone3.value==""){
			alert("전화번호를 정확히 입력하세요.");
			return false;
		}else{
			document.frm.telephone.value=document.frm.telephone1.value+"-"+document.frm.telephone2.value+"-"+document.frm.telephone3.value;
		}
	}
	
	if(document.frm.mobile2.value!="" || document.frm.mobile3.value!=""){
		if(document.frm.mobile2.value=="" || document.frm.mobile3.value==""){
			alert("휴대전화번호를 정확히 입력하세요.");
			return false;
		}else{
			document.frm.mobile.value=document.frm.mobile1.value+"-"+document.frm.mobile2.value+"-"+document.frm.mobile3.value;
		}
	}
	
	if(document.frm.email_id.value==""){
		alert("이메일 아이디를 입력해주세요.");
		document.frm.email_id.focus();
		return false;
	}
	
	if(document.frm.email_Domain.value==""){
		alert("이메일 아이디를 입력해주세요.");
		document.frm.email_Domain.focus();
		return false;
	}
	
	document.frm.email.value=document.frm.email_id.value+"@"+document.frm.email_Domain.value;
	
	if(document.frm.share_info1[0].checked==true){
		document.frm.share_info.value="Y";
	}else{
		document.frm.share_info.value="N";
	}
	
	document.frm.submit();
}
</script>
</head>
<%
MemberBean memberbean=(MemberBean)request.getAttribute("memberbean");
String[] birthday=memberbean.getBirthday().split("-");
String[] post_code=memberbean.getPost_code().split("-");
String[] address=memberbean.getAddress().split("&&");

String[] telephone=new String[3];
if(!memberbean.getTelephone().equals("")){
	telephone=memberbean.getTelephone().split("-");
}

String[] mobile=new String[3];
if(!memberbean.getMobile().equals("")){
	mobile=memberbean.getMobile().split("-");	
}

String[] email=memberbean.getEmail().split("@");
%>
<body>
<header>
	<jsp:include page="../asiana_inc/header.jsp" />
</header>
<form action="./ChangeMemberInformation.me" method="post" name="frm">
<input type="hidden" name="post_code">
<input type="hidden" name="address">
<input type="hidden" name="telephone">
<input type="hidden" name="mobile">
<input type="hidden" name="email">
<input type="hidden" name="share_info">

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
<h3 class="h3_type01">회원정보변경</h3>

<table class="myBoxType2">
<tr>
<td>회원아이디</td>
<td><%=memberbean.getMember_id() %></td>
</tr>

<tr>
<td class="line">회원번호</td>
<td class="line"><%=memberbean.getMember_num() %></td>
</tr>

<tr>
<td class="line">한글 이름</td>
<td class="line"><%=memberbean.getKrname() %></td>
</tr>

<tr>
<td class="line">영문 이름</td>
<td class="line"><%=memberbean.getLast_name()+"/"+memberbean.getFirst_name() %></td>
</tr>

<tr>
<td class="line">생년월일</td>
<td class="line"><%=birthday[0]+"년 "+birthday[1]+"월 "+birthday[2]+"일" %></td>
</tr>

<tr>
<td class="line">성별</td>
<td class="line"><%=memberbean.getGender() %></td>
</tr>

<tr>
<td class="line">주소</td>
<td class="line">
<ul class="ulfirst">
<li><input type="text" class="postNum" name="post_code1" readonly="readonly" value="<%=post_code[0] %>"> -</li>
<li>&nbsp;<input type="text" class="postNum" name="post_code2" readonly="readonly" value="<%=post_code[1] %>"></li>
<li>
<span class="postNumBtn">
<a onclick="openDaumPostcode()">우편번호 검색</a>
</span>
</li>
</ul>

<ul class="nextUl">
<li><input type="text" class="wAress0" name="address1" readonly="readonly" value="<%=address[0] %>"></li>
<li><input type="text" class="wAress0" name="address2" value="<%=address[1] %>"></li>
</ul>

</td>
</tr>

<tr>
<td class="line">전화번호</td>
<td class="line">
<p class="noticeInTd">
* 연락 가능한 번호는 전화번호와 휴대전화번호 중 한 개는 꼭 입력하셔야 합니다. 
</p>

<label>전화번호</label>
<%if(!memberbean.getTelephone().equals("")){
	%>
	<input type="text" class="selTelNum" maxlength="3" name="telephone1" onkeyup="this.value=number_filter(this.value)" value="<%=telephone[0] %>"> -
	<input type="text" class="selTelNum" maxlength="4" name="telephone2" onkeyup="this.value=number_filter(this.value)" value="<%=telephone[1] %>"> -
	<input type="text" class="selTelNum" maxlength="4" name="telephone3" onkeyup="this.value=number_filter(this.value)" value="<%=telephone[2] %>"><br>
	<%
}else{
	%>
	<input type="text" class="selTelNum" maxlength="3" name="telephone1" onkeyup="this.value=number_filter(this.value)"> -
 	<input type="text" class="selTelNum" maxlength="4" name="telephone2" onkeyup="this.value=number_filter(this.value)"> -
 	<input type="text" class="selTelNum" maxlength="4" name="telephone3" onkeyup="this.value=number_filter(this.value)"><br>
	<%
}
%>

<label>휴대전화번호</label>
<%if(!memberbean.getMobile().equals("")){
	%>
	<select id="selTelNum" class="selTelNum" name="mobile1">
	<option value="010" <%if(mobile[0].equals("010")){%>selected<%} %>>010</option>
	<option value="011" <%if(mobile[0].equals("011")){%>selected<%} %>>011</option>
	<option value="016" <%if(mobile[0].equals("016")){%>selected<%} %>>016</option>
	<option value="017" <%if(mobile[0].equals("017")){%>selected<%} %>>017</option>
	<option value="019" <%if(mobile[0].equals("019")){%>selected<%} %>>019</option>
	</select> - 
 	<input type="text" class="selTelNum" maxlength="4" name="mobile2" onkeyup="this.value=number_filter(this.value)" value="<%=mobile[1] %>"> -
 	<input type="text" class="selTelNum" maxlength="4" name="mobile3" onkeyup="this.value=number_filter(this.value)" value="<%=mobile[2] %>">
	<%
}else{
	%>
	<select id="selTelNum" class="selTelNum" name="mobile1">
	<option value="010">010</option>
	<option value="011">011</option>
	<option value="016">016</option>
	<option value="017">017</option>
	<option value="019">019</option>
	</select> - 
 	<input type="text" class="selTelNum" maxlength="4" name="mobile2" onkeyup="this.value=number_filter(this.value)"> -
 	<input type="text" class="selTelNum" maxlength="4" name="mobile3" onkeyup="this.value=number_filter(this.value)">
	<%
}
%>

</td>
</tr>

<tr>
<td class="line">이메일 주소</td>
<td class="line">
<input type="text" class="email_id" name="email_id" style="ime-mode:disabled" value="<%=email[0] %>"> 
<span>@</span> 
<input type="text" class="email_Domain" name="email_Domain" value="<%=email[1]%>">
<select class="domain" name="domain" onchange="domainsel()">
<option value="">직접입력</option>
<option value="naver.com" <%if(email[1].equals("naver.com")){%>selected<%} %>>naver.com</option>
<option value="nate.com" <%if(email[1].equals("nate.com")){%>selected<%} %>>nate.com</option>
<option value="hanmail.net" <%if(email[1].equals("hanmail.com")){%>selected<%} %>>hanmail.net</option>
<option value="hotmail.com" <%if(email[1].equals("hotmail.com")){%>selected<%} %>>hotmail.com</option>
<option value="paran.com" <%if(email[1].equals("paran.com")){%>selected<%} %>>paran.com</option>
<option value="dreamwiz.com">dreamwiz.com</option>
</select>
</td>
</tr>

<tr>
<td class="line">개인정보 제3자 제공</td>
<td class="line">
<label class="ShareInfo"><input type="radio" name="share_info1" <%if(memberbean.getShare_info().equals("Y")){ %>checked<%} %>> 동의 </label>
<label class="ShareInfo"><input type="radio" name="share_info1" <%if(memberbean.getShare_info().equals("N")){ %>checked<%} %>> 거부</label>
<span class="btn_CpopupLayer">
<a>내용보기</a>
</span>

<div class="Boxclose">
<div class="popInner">
<div class="aTitle">
<p>
<strong>개인정보 제3자 제공 동의</strong>
</p>
</div>

<div class="contArea">
<div class="specialNotice">
<p>
<font size="2" face="arial">
<span>
<p style="line-height: 23px;">
1. 아시아나항공은 별도의 회원동의 없이 개인정보를 제 3자에게 제공하지 않습니다.(법률에 특별한 규정이 있는 경우 제외) 다만, 회원께서 아래의 제휴서비스 이용 시 다음의 최소한의 개인정보가 제공될 수 있습니다.
</p>
<p>&nbsp;</p>
<p style="line-height: 23px;">
2. 전항의 경우를 제외하고, 회원으로부터 제공받은 개인정보를 수집 목적 이외의 용도로 이용하거나 동의없이 제3자에게 제공함으로 인해 발생하는 피해에 대하여는 아시아나항공에게 책임이 있습니다. 다만, 회원이 고의나 과실로 자신의 개인정보를 유출하거나 허위의 정보를 제공한 경우 또는 개인정보에 변경이 발생하였음에도 이를 알리지 않아 불일치가 발생한 경우에는 그러하지 아니합니다.
</p>
</span>
</font>
</p> 
</div>

<p class="alertMSG">
<strong>*</strong>
&nbsp;제휴사 정보 제공 동의를 하지 않으시면 신용카드사를 통한 잔여 마일리지 확인 등 일부 서비스가 제한됩니다.
</p>
</div>
</div>
<img class="btn_close" src="asiana_member/images/btn_close.gif">
</div>
</td>
</tr>
</table>

<div class="btn">
<input type="image" class="close" onclick="location.href='./MyAsiana.me'; return false">
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