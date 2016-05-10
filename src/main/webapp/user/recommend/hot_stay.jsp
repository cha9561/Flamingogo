<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>추천 숙소 , 플라밍GO</title>
<meta http-equiv="Content-Language" content="ko">
<meta charset="UTF-8">

<!-- Web Fonts -->
<link rel='stylesheet' type='text/css'
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

<!-- CSS Global Compulsory -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/shop.style.css">
<link rel="stylesheet" type="text/css"
	href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css">

</head>

<body class="header-fixed" >
	<div class="row" id="wrapper1">
	<div class="col-md-6">
	<h3>플라밍GO회원에게 추천하는 숙소들</h3>
		<div class="col-sm-12 col-md-8">
		  <c:forEach var="vo" items="${hlist }">
			<div class="row" style="margin-bottom: 10px;">
				<div class="col-sm-12 col-md-4">
					<img
						src="${vo.img }"
						class="img-responsive">
				</div>
				<div class="col-sm-12 col-md-8">
					
					<h3>${vo.title }</h3>
					<%-- <h5>소개: ${vo.msg }</h5> --%>
					<h5>review: ${vo.review }</h5>
					<p align="right" style="padding-top: 15px">
						<!-- Accent-colored raised button with ripple -->
					<a href="${vo.url }">
					<button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent">상세보기</button>
						<!-- <a href="http://www.booking.com/searchresults.html?aid=308767&label=_slppick111011003&ss=Villa+Saint+Exupery+Beach&si=ho&checkin_monthday=11&checkin_year_month=2016-5&checkout_monthday=12&checkout_year_month=2016-5&city=-1454990" target="_blank" class="btn-u btn-u-green">위시리스트 추가</a> -->
					</a>
					</p>
					<hr>
				</div>
			</div>
		 </c:forEach>
		</div>
		</div>
		<div class="col-md-6">
		<h3>플라밍GO회원에게 추천하는 맛집들</h3>
		<div class="row" id="wrapper">
      <div class="col-sm-12 col-md-8">
        <c:forEach var="s" items="${rlist }">
         <div class="row" style="margin-bottom: 10px;">
            <div class="col-sm-12 col-md-4">
               <img
                  src="${s.image }"
                  class="img-responsive">
            </div>
            <div class="col-sm-12 col-md-8">
               <h3>${s.title }</h3>
               <h5>${s.brief }</h5>
               <%-- <h5>${s.sector }</h5> --%>
               <p align="right" style="padding-top: 15px">
               <a href="${s.url }">
               <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent">상세보기</button>
               </a>
               </p>
               <hr>
            </div>
         </div>
       </c:forEach>
       </div>
		</div>
	</div>
</body>
</html> 