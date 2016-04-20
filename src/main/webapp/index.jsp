<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Creative - Start Bootstrap Theme</title>

<!-- Bootstrap Core CSS -->
<link rel="stylesheet" href="user/main/css/bootstrap.min.css" type="text/css">

<!--mdl css-->
<link rel="stylesheet"
	href="https://code.getmdl.io/1.1.3/material.indigo-pink.min.css">

<!-- Custom Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="user/main/font-awesome/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700"
	type="text/css">

<!--mdlfont -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">

<!-- Plugin CSS -->
<link rel="stylesheet" href="user/main/css/animate.min.css" type="text/css">

<!-- Custom CSS -->
<link rel="stylesheet" href="user/main/css/creative.css" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>

    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="page-top">

<nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">

        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        <div class="logo">
        <a class="navbar-brand page-scroll" href="#page-top"><img src="img/logo1.png" alt="" class="img-responsive" width=50% height=50%></a></div>
        </div>

        <!-- 목록 nav -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a class="page-scroll" href="#page-top">Home</a>
                </li>
                <li>
                    <a class="page-scroll" href="#services">서비스</a>
                </li>
                <li>
                    <a class="page-scroll" href="#recomm">플라밍GO의 추천</a>
                </li>
                <li>
                    <a class="page-scroll" href="#tour">투어</a>
                </li>
                <li>
                    <a class="page-scroll" href="#board">광장</a>
                </li>
                <li>
                    <a class="page-scroll" href="#team">Team소개</a>
                </li>
                <li>
                <!--로그인/회원가입처리-->
                <div class="login">
                <button id="show-dialog" type="button" class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored ">
                <i class="fa fa-chevron-circle-right"></i> 로그인
                </button>
				</div>
				</li>
				</ul>
				</div>
			
                

           
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>

<!--main index 페이지-->
<header>
    <div class="header-content">

        <div class="header-content-inner">
            <h1 class="wow slideInUp">플라밍GO와 함께<br> 세계여행을 떠나보세요</h1>
            
            <br><p>플라밍GO 가 추천하는 숙소, 맛집 예약까지 한번에 해결하세요<br>
                We've got what you need! </p>
        </div>
            <a href="plannerMain.do" class="btn btn-info btn-xl page-scroll">나만의 여행 플래너 만들기<br>
            </a>
        
    </div>
</header>


	<!-- 서비스소개 섹션-->
	<section id="services">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading" style="color: #3f51b5">
						<b> At Your Service
					</h2>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6 text-center">
					<div class="service-box">
						<i class="fa fa-4x fa-diamond wow bounceIn text-primary"
							style="color: #fdd835"></i>
						<div class="service-button">
							<button
								class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored">
								Let's Planning your trip</button>
						</div>
						<p class="text-muted">
							최적의 여행 플래너를 <br>만들 수 있는 환경을 지원합니다
						</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 text-center">

					<div class="service-box">
						<i class="fa fa-4x fa-cart-arrow-down wow bounceIn text-primary "
							style="color: #ff9800" data-wow-delay=".1s"></i>
						<div class="service-button">
							<button
								class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored">
								We'll be your tourguide</button>
						</div>
						<p class="text-muted">
							플라밍GO의 투어상품으로<br> 여행의 질을 올리세요
						</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 text-center">
					<div class="service-box">
						<i class="fa fa-4x fa-newspaper-o wow bounceIn text-primary"
							style="color: rgba(156, 39, 176, 0.7)" data-wow-delay=".2s"></i>
						<div class="service-button">
							<button
								class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored">
								Get brilliant idea</button>
						</div>
						<p class="text-muted">
							회원간 소통창구를 열어드립니다<br> 다양한 정보를 얻으세요
						</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 text-center">
					<div class="service-box">
						<i class="fa fa-4x fa-heart wow bounceIn text-primary"
							style="color: #f06292" data-wow-delay=".3s"></i>
						<div class="service-button">
							<button
								class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored">
								Made with Love</button>
						</div>
						<p class="text-muted">
							플라밍GO의 애정이 듬뿍 담긴<br>추천서비스 지금 즐겨보세요
						</p>

					</div>
				</div>

			</div>
		</div>
	</section>

	<!-- 추천 섹션-->
	<section id="recomm">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading" style="color: #3f51b5">
						<b>플라밍GO의 추천
					</h2>
				</div>
			</div>
		</div>
	</section>

	<!-- 투어 섹션-->
	<section class="no-padding" id="tour">

		<div class="container-fluid">
			<div class="row no-gutter">
				<div class="col-lg-4 col-sm-6">
					<a href="#" class="tour-box"> <img src="img/tour/1.jpg"
						class="img-responsive" alt="">
						<div class="tour-box-caption">
							<div class="tour-box-caption-content">
								<div class="project-category text-faded">Category</div>
								<div class="project-name">Project Name</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a href="#" class="tour-box"> <img src="img/tour/2.jpg"
						class="img-responsive" alt="">
						<div class="tour-box-caption">
							<div class="tour-box-caption-content">
								<div class="project-category text-faded">Category</div>
								<div class="project-name">Project Name</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a href="#" class="tour-box"> <img src="img/tour/3.jpg"
						class="img-responsive" alt="">
						<div class="tour-box-caption">
							<div class="tour-box-caption-content">
								<div class="project-category text-faded">Category</div>
								<div class="project-name">Project Name</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a href="#" class="tour-box"> <img src="img/tour/4.jpg"
						class="img-responsive" alt="">
						<div class="tour-box-caption">
							<div class="tour-box-caption-content">
								<div class="project-category text-faded">Category</div>
								<div class="project-name">Project Name</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a href="#" class="tour-box"> <img src="img/tour/5.jpg"
						class="img-responsive" alt="">
						<div class="tour-box-caption">
							<div class="tour-box-caption-content">
								<div class="project-category text-faded">Category</div>
								<div class="project-name">Project Name</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a href="#" class="tour-box"> <img src="img/tour/6.jpg"
						class="img-responsive" alt="">
						<div class="tour-box-caption">
							<div class="tour-box-caption-content">
								<div class="project-category text-faded">Category</div>
								<div class="project-name">Project Name</div>
							</div>
						</div>
					</a>
				</div>
			</div>
		</div>
	</section>

	<aside class="bg-dark">
		<div class="container text-center">
			<div class="call-to-action ">
				<h2>
					<b>플라밍GO의 <br>여행상품 구경하러 가기
				</h2>

				<a href="tour.do"><button
						class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent wow tada">
						CLICK ME!</button></a>
			</div>
		</div>
	</aside>

	<!-- 광장 섹션-->
	<section id="board">
		<div class="container">
			<div class="row">

				<div class="col-lg-8 col-lg-offset-2 text-center">
					<h2 class="section-heading" style="color: #3f51b5">
						<b>광장
					</h2>
					<hr class="primary">
					<p>Ready to start your next project with us? That's great! Give
						us a call or send us an email and we will get back to you as soon
						as possible!</p>
				</div>
				<div class="col-lg-4 col-lg-offset-2 text-center">
					<i class="fa fa-phone fa-3x wow bounceIn"></i>
					<p>123-456-6789</p>
				</div>
				<div class="col-lg-4 text-center">
					<i class="fa fa-envelope-o fa-3x wow bounceIn" data-wow-delay=".1s"></i>
					<p>
						<a href="mailto:your-email@your-domain.com">feedback@startbootstrap.com</a>
					</p>
				</div>
			</div>
		</div>
	</section>

	<!-- 팀소개 섹션-->
	<section id="team" class="bg-light-gray">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading" style="color: #3f51b5">
						<b>Our Amazing Team
					</h2>
				</div>
			</div>
			<!--첫째줄-->
			<div class="row">
				<div class="col-sm-4">
					<div class="team-member">
						<img src="팀사진.jpg" class="img-responsive img-circle" alt="">
						<h4>차승호</h4>
						<p class="text-muted">맡은역할</p>
						<ul class="list-inline social-buttons">
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
						</ul>
					</div>
				</div>

				<div class="col-sm-4">
					<div class="team-member">
						<img src="팀사진.jpg" class="img-responsive img-circle" alt="">
						<h4>손민지</h4>
						<p class="text-muted">맡은역할</p>
						<ul class="list-inline social-buttons">
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="team-member">
						<img src="팀사진.jpg" class="img-responsive img-circle" alt="">
						<h4>강은진</h4>
						<p class="text-muted">맡은역할</p>
						<ul class="list-inline social-buttons">
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
						</ul>
					</div>
				</div>
			</div>

			<!--둘째줄-->
			<div class="row">
				<div class="col-sm-4">
					<div class="team-member">
						<img src="" class="img-responsive img-circle" alt="">
						<h4>우성호</h4>
						<p class="text-muted">맡은역할</p>
						<ul class="list-inline social-buttons">
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
						</ul>
					</div>
				</div>

				<div class="col-sm-4">
					<div class="team-member">
						<img src="팀사진.jpg" class="img-responsive img-circle" alt="">
						<h4>김동호</h4>
						<p class="text-muted">맡은역할</p>
						<ul class="list-inline social-buttons">
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="team-member">
						<img src="팀사진.jpg" class="img-responsive img-circle" alt="">
						<h4>황희라</h4>
						<p class="text-muted">맡은역할</p>
						<ul class="list-inline social-buttons">
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>

	<a href="#" id="top">
		<button
			class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored">
			<i class="material-icons">airplanemode_active</i>
		</button>
	</a>

	<!-- jQuery -->
	<script src="user/main/js/jquery.js"></script>
	<script src="user/main/js/custom.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="user/main/js/bootstrap.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="user/main/js/jquery.easing.min.js"></script>
	<script src="user/main/js/jquery.fittext.js"></script>
	<script src="user/main/js/wow.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="user/main/js/creative.js"></script>
	<!-- mdl js-->
	<script defer src="https://code.getmdl.io/1.1.3/material.min.js"></script>



</body>

</html>
