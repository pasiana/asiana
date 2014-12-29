<%@page import="com.cafe24.itwill3.news.db.NewsBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ATeam PJ</title>

<script src="./asia_main/js/jquery-1.11.1.js"></script>
<script src="./asia_main/js/jquery.innerfade.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#top_inner_fade").innerfade({
			animationtype:'fade', 
			speed:750,
			timeout:3200,
			type:'sequence',
			containerheight:'auto'
			
		});//상단 이벤트 슬라이드
				
	});
</script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#top_inner_fade2").innerfade({
			animationtype:'fade', 
			speed:750,
			timeout:2000,
			type:'sequence',
			containerheight:'auto'
			
		});//중단 이벤트 슬라이드
				
	});
</script>
<style type="text/css">
*{margin:0; padding: 0;
font-family:"맑은 고딕";}
body,table,input,textarea,select,button{font-size:12px;}
header,section,article,footer,nav,aside{display:block;}
body,input,textarea,select,table,button{font:12px,helvetica,sans-serif;}
caption, legend, #accessibility, .hidden{font-size: 0;line-height: 0;text-indent: -5000px;}
img, fieldset, iframe{border:0 none;vertical-align:top;}
fieldset{font-size:0;}
ul,ol{list-style:none;}
a{color:#000;text-decoration:none;cursor:pointer;}
table{border-collapse:collapse;}
hr{display:none;}
.vertical-align{vertical-align:middle;}
#main {
	width: 100%;
	height: 100%;
	overflow: hidden;
	position: relative;
	
}
#main_top{width:100%; overflow: hidden; height:353px;}
#main_top li{width:100%; height:353px;}
#main_top li .banner{width:100%; height:353px; z-index: 2;
position: absolute;
}
#main_top .banner_1 {
	background-image: url("./asia_main/images/banner_1.jpg");
	background-position: center;
	background-repeat: no-repeat;
}

#main_top .banner_2 {
	background-image: url("./asia_main/images/banner_2.jpg");
	background-position: center;
	background-repeat: no-repeat;
}

#main_top .banner_3 {
	background-image: url("./asia_main/images/banner_3.jpg");
	background-position: center;
	background-repeat: no-repeat;
}

#main_top .banner_4 {
	background-image: url("./asia_main/images/banner_4.jpg");
	background-position: center;
	background-repeat: no-repeat;
}

#main_top .banner_5 {
	background-image: url("./asia_main/images/banner_5.jpg");
	background-position: center;
	background-repeat: no-repeat;
}



.top_div{width:422px; height:312px; margin-left:234px; margin-top:20px;
z-index:20;position: absolute; background-color: white;
}
.top_div_in{width:80px; height:312px; float: left;
}
/* .top_div_onc1:ACTIVE{} */
.top_div_right{width:334px; height:312px; margin-left: 80px;

}
.top_in_form{width:321px; height:291px;}



.in_grey span{background-image: url("./asia_main/images/Sbtn_TTypeL02_2.gif");}
.in_red span{width:124px; height:25px;display:block;
background-image: url("./asia_main/images/Sbtn_TTypeL02_2.gif");}
.in_red span a{width:116px; height:25px; padding: 0 15px;
line-height: 25px; color:white; font-weight: bold;
}
#main_middle{width:976px; height:360px;
margin: 0 auto;
}
.middel_top_div{width:976px; height:80px; margin: 10px auto;
background-image: url("./asia_main/images/middle_top.png"); background-repeat: no-repeat;
background-position: center;
}
.middel_top_a{display:block; height:80px;width:100px;
margin-left: 840px; padding-top: 25px;}

.left_table{display: inline-block; margin-left:10px; margin-top:15px;
width:270px; height:210px;}
.table_sail .tr_1{padding-bottom: 10px;}
.table_sail .tr_1 img:FIRST-CHILD{padding-right: 10px;}
.table_sail .tr_2{padding-bottom: 10px;}
.table_sail td{font-weight: bold; font-size:14px; height: 23px;}
.table_sail td:nth-child(1){width:110px;}
.table_sail td:nth-child(2){width:50px;}
.table_sail td:nth-child(3){color:red; width:40px;}
.table_sail td:nth-child(4){color:red;font-size:16px;width:100px;font-weight:lighter;;}
.table_sail td:nth-child(4) span{color:black; font-size: 11px;}
.main_middle_ul{display: inline-block; margin-left:40px; 
width:650px; height:195px;}
.banner1{display: inline-block;}
.banner2{display: inline-block;}
.event_more{width:90px; height:16px; border:1px solid #8C8C8C; 
border-radius:3px;
text-align: center; float:right; margin-right:8px; 
padding: 3px;}
#middle_line{height:1px;
background-image:url("./asia_main/images/bg_middleInner.jpg");
background-position: bottom; 
}
#main_bottom{width:976px; height:100%; overflow: hidden;
margin: 30px auto; }
.bottom_left{width:270px; height:195px; display: inline-block;
margin-left:10px; 
}
.bottom_left img{margin-left:10px }
.right_li {display: block;  height:25px;}
.right_li:FIRST-CHILD{margin-top: 10px;}
.right_li a{margin: 5px;}
.bottom_right{width:650px; height:195px; display: inline-block;
vertical-align:top; margin-left: 40px;
}
</style>
</head>
<body>
<%
List<NewsBean> newslist=(List)request.getAttribute("newslist");



%>
	<header>
		<jsp:include page="../asiana_inc/header.jsp" />
	</header>
	<section id="main"> 
	<!-- 상단슬라이드+div(form) S --> 
	<section id="main_top">
	<div class="main_top_ul">
		<ul id="top_inner_fade">
			<li class="banner_1"><a href="#">
					<div class="banner">
						<span class="hidden">첫번째</span>
					</div>
			</a></li>
			<li class="banner_2"><a href="#">
					<div class="banner">
						<span class="hidden">두번째</span>
					</div>
			</a></li>
			<li class="banner_3"><a href="#">
					<div class="banner">
						<span class="hidden">세번째</span>
					</div>
			</a></li>
			<li class="banner_4"><a href="#">
					<div class="banner">
						<span class="hidden">네번째</span>
					</div>
			</a></li>
			<li class="banner_5"><a href="#">
					<div class="banner">
						<span class="hidden">다섯번째</span>
					</div>
			</a></li>
		</ul>
	</div>
	<div class="top_div">
		<div class="top_div_in">
			<div class="top_div_onc1">
			<a href="#in_form_1"><img src="./asia_main/images/btn_simpleNav01_off.png"></a>
			</div>
			<div class="top_div_onc2">
			<a href="#in_form_2"><img src="./asia_main/images/btn_simpleNav02_off.png"></a>
			</div> 
			<div class="top_div_onc3">
			<a href="#in_form_3"><img src="./asia_main/images/btn_simpleNav03_off.png"></a>
			</div>
			<div class="top_div_onc4">
			<a href="#"><img src="./asia_main/images/btn_simpleNav04_off.png"></a>
			</div>
		</div>
		<div class="top_div_right">
			<div class="top_in_form" id="in_form_1">
				<h4>왕복</h4>
					<div class="in_formset">
					
					</div>
				<h4>편도</h4>
					<div class="in_formset">
					
					</div>
				<div>
				<a href="#">기타<img class="vertical-align" src="./asia_main/images/bl_arrowGray.gif"></a>
				</div>
				<span class="in_grey"><a href="#">마일리지항공권</a></span>
				<div class="in_red">
				<span><a href="#">항공권 조회하기</a></span>
				</div>
			</div>
				<!-- <div class="top_in_form" id="in_form_2">
				<h4>왕복</h4>
					<div class="in_formset">
					
					</div>
				<h4>편도</h4>
					<div class="in_formset">
					
					</div>
				<div>
				<a href="#">기타<img class="vertical-align" src="images/bl_arrowGray.gif"></a>
				</div>
				<span class="in_grey"><a href="#">마일리지항공권</a></span>
				<div class="in_red">
				<span><a href="#">항공권 조회하기</a></span>
				</div>
			</div>
				<div class="top_in_form" id="in_form_3">
				<h4>왕복</h4>
					<div class="in_formset">
					
					</div>
				<h4>편도</h4>
					<div class="in_formset">
					
					</div>
				<div>
				<a href="#">기타<img class="vertical-align" src="images/bl_arrowGray.gif"></a>
				</div>
				<span class="in_grey"><a href="#">마일리지항공권</a></span>
				<div class="in_red">
				<span><a href="#">항공권 조회하기</a></span>
				</div>
			</div> -->
		</div>
		
	</div>
	</section>
	 <!-- 상단슬라이드+div(form) E --> 
	 
	 <!--  middle top line S -->
	 <div id="middle_line"></div>
	 <!--  middle top line E -->
	 
	 <!-- 중간ul+이벤트슬라이드 S --> 
	<section id="main_middle"> 
		
		<!-- 중간 div 창 S -->
		<div class="middel_top_div">
		<a  class="middel_top_a" href="#"><img src="./asia_main/images/middle_top_a.png"></a>		
		</div>
		
		<!-- 중간 div 창 E -->
		
		
		<!-- left 특가항공권 S-->
		<div class="left_table">
			<table class="table_sail">
			<tr>
			<td class="tr_1" colspan="4">
			<img src="./asia_main/images/text_worldPrice.jpg"><a href="#"><img src="./asia_main/images/btn_addView.gif"></a>
			</td>
			</tr>
			<tr>
			<td><a href="#">칭다오[靑鳥]</a></td>
			<td><img src="./asia_main/images/dot.gif"></td>
			<td>\</td>
			<td>252,100<span>부터</span></td>
			</tr>
			<tr>
			<td><a href="#">후쿠오카</a></td>
			<td><img src="./asia_main/images/dot.gif"></td>
			<td>\</td>
			<td>284,400<span>부터</span></td>
			</tr>
			<tr>
			<td><a href="#">오사카/간사이</a></td>
			<td><img src="./asia_main/images/dot.gif"></td>
			<td>\</td>
			<td>334,800<span>부터</span></td>
			</tr>
			<tr>
			<td><a href="#">호찌민</a></td>
			<td><img src="./asia_main/images/dot.gif"></td>
			<td>\</td>
			<td>252,100<span>부터</span></td>
			</tr>
			<tr>
			<td class="tr_2"><a href="#">시애틀</a></td>
			<td class="tr_2"><img src="./asia_main/images/dot.gif"></td>
			<td class="tr_2">\</td>
			<td class="tr_2">989,100<span>부터</span></td>
			</tr>
			<tr>
			<td colspan="4">
			<img src="./asia_main/images/middle_text.jpg">
			</td>
			</tr>
			</table>

		</div>
		<!-- left 특가항공권 E-->
		<!-- right event banner S -->
		<div class="main_middle_ul">
		<ul id="top_inner_fade2">
			<li class="banner_1">
					<div class="banner1">
						<span class="hidden">첫번째1</span>
						<a href="#"><img src="./asia_main/images/mid_ba_1_1.jpg"></a>
					</div>
					<div class="banner2">
						<span class="hidden">첫번째2</span>
						<a href="#"><img src="./asia_main/images/mid_ba_1_2.jpg"></a>
					</div>
			</li>
			<li class="banner_2">
					<div class="banner1">
						<span class="hidden">첫번째1</span>
						<a href="#"><img src="./asia_main/images/mid_ba_2_1.jpg"></a>
					</div>
					<div class="banner2">
						<span class="hidden">첫번째2</span>
						<a href="#"><img src="./asia_main/images/mid_ba_2_2.jpg"></a>
					</div>
			</li>
			<li class="banner_3">
					<div class="banner1">
						<span class="hidden">첫번째1</span>
						<a href="#"><img src="./asia_main/images/mid_ba_3_1.jpg"></a>
					</div>
					<div class="banner2">
						<span class="hidden">첫번째2</span>
						<a href="#"><img src="./asia_main/images/mid_ba_3_2.jpg"></a>
					</div>
			</li>
			<li class="banner_4">
					<div class="banner1">
						<span class="hidden">첫번째1</span>
						<a href="#"><img src="./asia_main/images/mid_ba_4_1.jpg"></a>
					</div>
					<div class="banner2">
						<span class="hidden">첫번째2</span>
						<a href="#"><img src="./asia_main/images/mid_ba_4_2.jpg"></a>
					</div>
			</li>
			<li class="banner_5">
					<div class="banner1">
						<span class="hidden">첫번째1</span>
						<a href="#"><img src="./asia_main/images/mid_ba_5_1.jpg"></a>
					</div>
					<div class="banner2">
						<span class="hidden">첫번째2</span>
						<a href="#"><img src="./asia_main/images/mid_ba_5_2.jpg"></a>
					</div>
			</li>
		</ul>
	</div>
	<!-- right event banner E -->
	<div class="event_more">
	<a href="#">이벤트 더보기</a>
	</div>
	</section>
	 <!-- 중간ul+이벤트슬라이드 E --> 
	 
	 
	 
	 
	<!--  middle bottom line S -->
	 <div id="middle_line"></div>
	<!--  middle bottom line S --> 
	 
	 <!-- 하단뉴스ul+ 바로가기배너 S -->
	<section id="main_bottom">
		<div class="bottom_left">
			<h2><img src="./asia_main/images/text_news.jpg"><a href="ItanaNews.ne"><img src="./asia_main/images/btn_addView.gif"></a></h2>
			<ul >
			<li class="right_li"><img src="./asia_main/images/btnJ_rolinum-num_on.png" style="width:0.4em;vertical-align:middle;"><a href="#">2014년 12월 국제선 유류할증료</a></li>
			<li class="right_li"><img src="./asia_main/images/btnJ_rolinum-num_on.png" style="width:0.4em;vertical-align:middle;"><a href="#">2014년 12월 국내선 유류할증료</a></li>
			<li class="right_li"><img src="./asia_main/images/btnJ_rolinum-num_on.png" style="width:0.4em;vertical-align:middle;"><a href="#">동계 기간 국제선 스케줄 변경 안내</a></li>
			<li class="right_li"><img src="./asia_main/images/btnJ_rolinum-num_on.png" style="width:0.4em;vertical-align:middle;"><a href="#">안전한 여행을 위한 기내 불법행위 금지 안내</a></li>
			<li class="right_li"><img src="./asia_main/images/btnJ_rolinum-num_on.png" style="width:0.4em;vertical-align:middle;"><a href="#">홈페이지 개인정보취급방침 변경 안내</a></li>
			</ul>
		</div>
		<div class="bottom_right">
		<img src="./asia_main/images/main_bottom_right.png">
		
		</div>
	
	
	
	 </section>
	 <!-- 하단뉴스ul+ 바로가기배너 E --> 



</section>
	<footer>
		<jsp:include page="../asiana_inc/footer.jsp" />
	</footer>




</body>
</html>