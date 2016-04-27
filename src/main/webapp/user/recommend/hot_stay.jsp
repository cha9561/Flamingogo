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

	

<h4>플라밍GO회원에게 추천하는 숙소들</h4>

	<div class="row" id="wrapper">
		<div class="col-sm-12 col-md-8">
		  <c:forEach var="vo" items="${list }">
			<div class="row" style="margin-bottom: 10px;">
				<div class="col-sm-12 col-md-4">
					<img
						src="${vo.img }"
						class="img-responsive">
				</div>
				<div class="col-sm-12 col-md-8">
					
					<h2>${vo.title }</h2>
					<h4>소개: ${vo.msg }</h4>
					<h4>review: ${vo.review }</h4>
					<p align="right" style="padding-top: 15px">
						<!-- Accent-colored raised button with ripple -->
					<button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent">상세보기</button>
						<!-- <a href="http://www.booking.com/searchresults.html?aid=308767&label=_slppick111011003&ss=Villa+Saint+Exupery+Beach&si=ho&checkin_monthday=11&checkin_year_month=2016-5&checkout_monthday=12&checkout_year_month=2016-5&city=-1454990" target="_blank" class="btn-u btn-u-green">위시리스트 추가</a> -->
					</p>
					<hr>
				</div>
				
			</div>
		 </c:forEach>
 			
 	<!-- 		
 			<div class="row" style="margin-bottom: 10px;">

				<div class="col-sm-12 col-md-4">
					<img
						src="http://d3b39vpyptsv01.cloudfront.net/photo/1/2/44649568810120a22eafb76dd21bdcff_m.jpg"
						class="img-responsive">
				</div>
				<div class="col-sm-12 col-md-8">

					<h2>B.Antares Hostel</h2>
					<h5>가격대비 좋은 호스텔이며 역이 바로 앞에 있어 위치는 최적. 와이파이가 방에서는 연결이 안되며 매일밤
						파티가 있다.</h5>


					<p align="right" style="padding-top: 15px">
						<span class="label label-default">+</span></a>
						<button
							class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored">
							<i class="material-icons">위시리스트 추가</i>
						</button>
						<a href="http://www.booking.com/searchresults.html?aid=308767&label=_slppick&ss=Antares+Hostel&si=ho&checkin_monthday=11&checkin_year_month=2016-5&checkout_monthday=12&checkout_year_month=2016-5&city=-1454990" target="_blank" class="btn-u btn-u-green">위시리스트 추가</a>
					</p>
					<hr>

				</div>
			</div>

			<div class="row" style="margin-bottom: 10px;">

				<div class="col-sm-12 col-md-4">
					<img
						src="http://d3b39vpyptsv01.cloudfront.net/photo/1/2/8a375829ba49f6a04ed891743c2d4232_m.jpg"
						class="img-responsive">
				</div>
				<div class="col-sm-12 col-md-8">

					<h2>C.Hostel Baccarat</h2>
					<h5>기차역이 매우 가까워 교통이 편리하지만 시설은 그저 그렇다. 직원들이 친절하다. 해변도 도보로 15분이면
						갈 수 있다.</h5>



					<p align="right" style="padding-top: 15px">
						<span class="label label-default">+</span></a>
						<button
							class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored">
							<i class="material-icons">위시리스트 추가</i>
						</button>
						<a href="http://www.booking.com/searchresults.html?aid=308767&label=_slppick111011003&ss=Hostel+Baccarat&si=ho&checkin_monthday=11&checkin_year_month=2016-5&checkout_monthday=12&checkout_year_month=2016-5&city=-1454990" target="_blank" class="btn-u btn-u-green">위시리스트 추가</a>
					</p>
					<hr>

				</div>
			</div>

			<div class="row" style="margin-bottom: 10px;">

				<div class="col-sm-12 col-md-4">
					<img
						src="http://d3b39vpyptsv01.cloudfront.net/photo/1/2/cb552d8dd93ec619d1e9b67da27d3397_m.jpg"
						class="img-responsive">
				</div>
				<div class="col-sm-12 col-md-8">

					<h2>D.Hostel Pastoral</h2>
					<h5>분위기가 좋고 직원들이 아주 친절하다. 시설은 부족함이 없으며 조식도 포함되어 있다.</h5>

					<p align="right" style="padding-top: 15px">
						<span class="label label-default">+</span></a>
						<button
							class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored">
							<i class="material-icons">위시리스트 추가</i>
						</button>
						<a href="http://www.booking.com/searchresults.html?aid=308767&label=_slppick111011003&ss=Hostel+Pastoral&si=ho&checkin_monthday=11&checkin_year_month=2016-5&checkout_monthday=12&checkout_year_month=2016-5&city=-1454990" target="_blank" class="btn-u btn-u-green">위시리스트 추가</a>

					</p>
					<hr>
				</div>
			</div>

			<div class="row" style="margin-bottom: 10px;">

				<div class="col-sm-12 col-md-4">
					<img
						src="http://d3b39vpyptsv01.cloudfront.net/photo/1/2/eb2a2d3b6bef067963ee90be69dbbc21_m.jpeg"
						class="img-responsive">
				</div>
				<div class="col-sm-12 col-md-8">

					<h2>E.Hostel Meyerbeer Beach</h2>
					<h5>바다와 매우 가까워 바다를 즐기고 싶은 여행자들에게 추천. 기자역과는 다소 거리가 있다.</h5>

					<p align="right" style="padding-top: 15px">
						<span class="label label-default">+</span></a>
						<button
							class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored">
							<i class="material-icons">위시리스트 추가</i>
						</button>
						<a href="/review/write.asp?region=111011003&spotname=Hostel Meyerbeer Beach&category=slp&spotserial=11101100320015" class="btn-u btn-u-default">리뷰쓰기 <span class="label label-default">+50마일</span></a>
		<a href="http://www.booking.com/searchresults.html?aid=308767&label=_slppick&ss=Hostel+Meyerbeer+Beach&si=ho&checkin_monthday=11&checkin_year_month=2016-5&checkout_monthday=12&checkout_year_month=2016-5&city=-1454990" target="_blank" class="btn-u btn-u-green">실시간 가격확인/예약</a>

					</p>
					<hr>
				</div>
			</div>

			<div class="row" style="margin-bottom: 10px;">

				<div class="col-sm-12 col-md-4">
					<img
						src="http://d3b39vpyptsv01.cloudfront.net/photo/1/2/8b614e785c53bbf05156ce241be34b2f_m.png"
						class="img-responsive">
				</div>
				<div class="col-sm-12 col-md-8">

					<h2>F.Nice Riviera Sweet Home</h2>
					<h5>분위기가 좋은 호스텔이며 깔끔하고 가격대비 좋다. 위치도 나쁘지 않다.</h5>

					<p align="right" style="padding-top: 15px">
						<span class="label label-default">+</span></a>
						<button
							class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored">
							<i class="material-icons">위시리스트 추가</i>
						</button>
						<a href="/review/write.asp?region=111011003&spotname=Nice Riviera Sweet Home&category=slp&spotserial=11101100320018" class="btn-u btn-u-default">리뷰쓰기 <span class="label label-default">+50마일</span></a>
		<a href="http://www.nicehomesweethome.com/" target="_blank" class="btn-u btn-u-green">홈페이지</a>
					</p>
					<hr>
				</div>
			</div>

			<div class="row" style="margin-bottom: 10px;">

				<div class="col-sm-12 col-md-4">
					<img
						src="http://d3b39vpyptsv01.cloudfront.net/photo/1/2/849fa143993b54000402af83d0980171_m.jpg"
						class="img-responsive">
				</div>
				<div class="col-sm-12 col-md-8">

					<h2>G.Nice Camelias</h2>
					<h5>직원들이 친절하고 기차역도 멀지 않게 위치해 있다. 해변에서는 꽤 거리가 멀다.</h5>

					<p align="right" style="padding-top: 15px">
						<span class="label label-default">+</span></a>
						<button
							class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored">
							<i class="material-icons">위시리스트 추가</i>
						</button>
						<a href="/review/write.asp?region=111011003&spotname=Nice Camelias&category=slp&spotserial=11101100320004" class="btn-u btn-u-default">리뷰쓰기 <span class="label label-default">+50마일</span></a>
		<a href="http://www.booking.com/searchresults.html?aid=308767&label=_slppick111011003&ss=Nice+Camelias&si=ho&checkin_monthday=11&checkin_year_month=2016-5&checkout_monthday=12&checkout_year_month=2016-5&city=-1454990" target="_blank" class="btn-u btn-u-green">실시간 가격확인/예약</a>
					</p>
					<hr>
				</div>
			</div>

			<div class="row" style="margin-bottom: 10px;">

				<div class="col-sm-12 col-md-4">
					<img
						src="http://d3b39vpyptsv01.cloudfront.net/photo/1/2/0db70fbd56833bdaeef1a56618ec08e0_m.jpg"
						class="img-responsive">
				</div>
				<div class="col-sm-12 col-md-8">

					<h2>H.Saint Gothard</h2>
					<h5>바다와는 조금 떨어져있지만 니스 중심부에 위치하고 있어 기차역과 가깝다</h5>

					<p align="right" style="padding-top: 15px">
						<span class="label label-default">+</span></a>
						<button
							class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored">
							<i class="material-icons">위시리스트 추가</i>
						</button>
						<a href="/review/write.asp?region=111011003&spotname=Saint Gothard&category=slp&spotserial=11101100320009" class="btn-u btn-u-default">리뷰쓰기 <span class="label label-default">+50마일</span></a>
		<a href="http://www.booking.com/searchresults.html?aid=308767&label=_slppick111011003&ss=Saint+Gothard&si=ho&checkin_monthday=11&checkin_year_month=2016-5&checkout_monthday=12&checkout_year_month=2016-5&city=-1454990" target="_blank" class="btn-u btn-u-green">실시간 가격확인/예약</a>
					</p>
					<hr>
				</div>
			</div>

			<div class="row" style="margin-bottom: 10px;">

				<div class="col-sm-12 col-md-4">
					<img
						src="http://d3b39vpyptsv01.cloudfront.net/photo/1/2/11edb069f30c14144f9e36d3a99a4ce6_m.jpg"
						class="img-responsive">
				</div>
				<div class="col-sm-12 col-md-8">

					<h2>I.Premiere Classe Nice-Promenade des Anglais</h2>
					<h5>가격대비 좋은 호텔이며 바다가 뷰로 보인다.</h5>


					<p align="right" style="padding-top: 15px">
						<span class="label label-default">+</span></a>
						<button
							class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored">
							<i class="material-icons">위시리스트 추가</i>
						</button>
						<a href="/review/write.asp?region=111011003&spotname=Premiere Classe Nice-Promenade des Anglais&category=slp&spotserial=11101100320007" class="btn-u btn-u-default">리뷰쓰기 <span class="label label-default">+50마일</span></a>
		<a href="http://www.booking.com/searchresults.html?aid=308767&label=_slppick111011003&ss=Premiere+Classe+Nice%2DPromenade+des+Anglais&si=ho&checkin_monthday=11&checkin_year_month=2016-5&checkout_monthday=12&checkout_year_month=2016-5&city=-1454990" target="_blank" class="btn-u btn-u-green">실시간 가격확인/예약</a>
					</p>
					<hr>
				</div>
			</div>

			<div class="row" style="margin-bottom: 10px;">

				<div class="col-sm-12 col-md-4">
					<img
						src="http://d3b39vpyptsv01.cloudfront.net/photo/1/2/4641c59ebf66f71565e9de4b1ddbd78c_m.jpg"
						class="img-responsive">
				</div>
				<div class="col-sm-12 col-md-8">
					<h2>J.HOSTEL SMITH</h2>
					<h5>서비스가 친절하고 해변에서 가까운 거리에 위치해 있다. 시설은 가격대비 나쁘지 않다.</h5>


					<p align="right" style="padding-top: 15px">
						<span class="label label-default">+</span></a>
						<button
							class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored">
							<i class="material-icons">위시리스트 추가</i>
						</button>
							<a href="/review/write.asp?region=111011003&spotname=HOSTEL SMITH&category=slp&spotserial=11101100320017" class="btn-u btn-u-default">리뷰쓰기 <span class="label label-default">+50마일</span></a>
		<a href="http://www.booking.com/searchresults.html?aid=308767&label=_slppick&ss=HOSTEL+SMITH&si=ho&checkin_monthday=11&checkin_year_month=2016-5&checkout_monthday=12&checkout_year_month=2016-5&city=-1454990" target="_blank" class="btn-u btn-u-green">실시간 가격확인/예약</a>

					</p>
					<hr>
				</div>
			</div> 
		</div>
	</div>
	 -->

</body>
</html> 