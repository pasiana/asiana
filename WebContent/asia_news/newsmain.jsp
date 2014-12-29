<%@page import="java.util.List"%>
<%@page import="com.cafe24.itwill3.news.db.NewsBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>



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
.lo_li{padding-top: 5px; margin-left: 40px;}
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
.co_title {
	width:974px;
	border: 1px solid #EAEAEA;
	border-top: none;
	padding-top: 40px;
}
.co_title p{
color:red;
font-size:3em;
margin: 0 0 30px 40px;
}
</style>
</head>
<body>
<%
List<NewsBean> newslist=(List)request.getAttribute("newslist");

%>
<%-- 
	<header>
		<jsp:include page="/asiana_inc/header.jsp" />
	</header> --%>
	
	<section id="news">	
	
	<div class="news_in">
	
	<div class="location">
			<ul class="lo_li">
				<li><a href="#">HOME</a><span>&gt;</span></li>
				<li><a href="#">이벤트/혜택</a><span>&gt;</span></li>
				<li>뉴스</li>
			</ul>
		
	</div>
	<!-- 메뉴바하단 밑줄 -->
	<div id="lo_line"></div>
	<!-- 메뉴바하단 밑줄 end -->
	
	
	<div class="new_content">
	
	<div class="co_title">
	<p>아시아나 뉴스</p>
	</div>
	
	<div class="content">
		<table>
		<%-- <%
   		for(int i=0;i<newslist.size();i++){

    	NewsBean newsbean=newslist.get(i);
   		}
    	%>
 --%>    	<tr>
    	<td>content</td>
		<td><!-- 날짜 --></td>
		</tr>
		<tr>
		<%-- <td><%= %> <!-- 제목 --></td>
		<td><%= %><!-- 날짜 --></td> --%>
		</tr>
	
		
		
		</table>	
	
	
	
	
	
	
	
	
	</div>
	
	
	
	
	
	
	
	</div>
	
	
	
	</section>
	

	<%-- <footer>
		<jsp:include page="/asiana_inc/footer.jsp" />
	</footer> --%>
</div>
</body>
</html>