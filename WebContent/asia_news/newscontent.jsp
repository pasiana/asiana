<%@page import="com.mysql.jdbc.Blob"%>
<%@page import="java.util.List"%>
<%@page import="itana.news.db.NewsBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>News</title>
<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		//메뉴 클릭 시 서브메뉴 오픈
		$('.menu').click(function() {
			$('.menu').removeClass("menuchange");
			$('.menu').parent().children('ul').css('display', 'none');
			$(this).addClass("menuchange");
			$(this).parent().children('ul').css('display', 'block');
		});

		//서브메뉴 클릭 시 글자 굵기
		$('.subMenu1').click(function() {
			$('.subMenu1').css('font-weight', 'normal');
			$(this).css('font-weight', 'bold');
		});
	});
</script>
<script type="text/javascript">
	$(document).ready(function() {
		$('.top2').addClass("menuchange");
		$('.top2').parent().children('ul').css('display', 'block');
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

#news{
width:100%;
/* height:100%; overflow: hidden; */
height:1014px;
position: relative; 
margin: 0 auto;
}

.location {
	margin: 0 auto;
	width: 976px;
	height: 30px;
}
.lo_li{padding-top: 5px;}
.lo_li li{
	float:left;
	margin-left: 5px;
}
.lo_li li span{margin-left: 5px;}
.lo_li li:last-child{
	color:grey;
}
#lo_line{
/* width:2000px;  */
height:1px; 
background-image:url("./asia_news/images/bg_location.jpg");
background-position: bottom; }
.new_content{
	margin: 0 auto;
	width: 976px;
	height:100%;overflow: hidden;
}
.content{width:80%;
height: 100%; overflow: hidden;}
.left_menu{width: 20%; float: left;}
.co_title {
	width:99%;
	float:right;
	margin-top:10px;
	border: 1px solid #EAEAEA;
	padding-top: 30px;
}
.co_title p{
color:red;
font-size:3em;
margin: 0 0 30px 30px;
}

.right_con{
float:right;
width:760px;
padding-top: 7px;
}
.news_table{width:750px;
}



.menu {
	padding: 7px 0 7px 19px;
	line-height: 20px;
	display: block;
	font-size: 12px;
	border-top: 1px solid #e8e8e8;
	color: #000;
}

.menuchange {
	padding: 7px 0 7px 19px;
	line-height: 20px;
	display: block;
	color: #fff;
	font-size: 12px;
	font-weight: bold;
	background: #73706c;
}

.subMenu1 {
	padding: 0 0 0 15px;
	color: #333;
	font-size: 11px;
	font-family: 돋움;
	line-height: 20px;
	display: block;
	width: 145px;
	background: url('https://flyasiana.com/CW/images/bg/bg_asideOn.gif') 0
		9px no-repeat;
}

.subMenu1:hover {
	font-weight: bold;
}

#comm_lnb{
	width: 190px;
	
}

/* .news_fir_tr td{display: none;} */
</style>
</head>
<body>
<%
NewsBean newsbean=(NewsBean)request.getAttribute("newsbean");

String pageNum=(String)request.getAttribute("pageNum");

%>
 
	<header>
		<jsp:include page="/asiana_inc/header.jsp" />
	</header>
	
	<section id="news">	
	
	<div class="news_in">
	
	<div class="location">
			<ul class="lo_li">
				<li><a href="ItanaMain.ma">HOME</a><span>&gt;</span></li>
				<li><a href="#">IT아시아나</a><span>&gt;</span></li>
				<li><a href="ItanaNews.ne">IT아시아나 뉴스</a><span>&gt;</span></li>
				<li>뉴스</li>
			</ul>
		
	</div>
	<!-- 메뉴바하단 밑줄 -->
	<div id="lo_line"></div>
	<!-- 메뉴바하단 밑줄 end -->
	
	
	<div class="new_content">
		<div class="left_menu">
		<div id="comm_lnb" >
		<aside
			style="margin: 10px 0 0 0; padding-bottom: 10px; background: #fff;">
			<h2
				style="background: url('http://flyasiana.com/CW/images/bg/bg_h2.png') no-repeat 0 0; width: 171px; height: 60px; padding: 21px 0 0 19px;">
				<a href="Admin1.jsp"> <img src="http://flyasiana.com/CW/images/nav/nav03_h2.png">
				</a>
			</h2>

			<ul
				style="background: url('https://flyasiana.com/CW/images/bg/bg_lnbBottom.png') no-repeat 0 bottom; padding: 0 1px 4px 1px; width: 188px;">
				<li><a class="menu top1" href="ItanaInfo.ne"> IT아시아나클럽 소개 </a></li>

				<li><a class="menu top2" href="ItanaNews.ne"> 뉴스/이벤트 </a>
					<ul class="submenu sub2"
						style="padding: 15px 0 15px 19px; display: none;">
						<li><a class="subMenu1 index1 TicketInformation" href="ItanaNews.ne"> 뉴스 </a></li>
						<li><a class="subMenu1 index2 BookOnLine" href="ItanaEvent.ev"> 이벤트 </a></li>
					</ul>
				</li>
			</ul>
		</aside>
	</div>
	
	</div>
	
	
	
	
	
	<div class="content">
	<div class="co_title">
	<p>아시아나 뉴스</p>
	</div>
	
	<div class="right_con">	
		
	 
    	
		
		<%=newsbean.getNews_content()%>
		
			
			
	

	
	
		</div>
	
	
	
	
	</div>
	
	
	
	
	
	
	
	</div>
	
	
	
	</section>
	

	<footer>
		<jsp:include page="/asiana_inc/footer.jsp" />
	</footer>
</div>
</body>
</html>