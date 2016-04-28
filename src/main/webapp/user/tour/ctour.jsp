<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    
	<title>나라별 투어상품</title>

	<link href="user/main/css/bootstrap.css" rel="stylesheet">
	<!-- Bootstrap Core CSS -->
    <link href="user/main/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="user/main/css/thumbnail-gallery.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="https://code.getmdl.io/1.1.3/material.min.js"></script>
    <link rel="stylesheet" href="https://code.getmdl.io/1.1.3/material.indigo-pink.min.css">
    <!-- Material Design icon font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
</head>
<body>
	<!-- Page Content -->
    <div class="container" style="margin-top:50px">
    
		<div class="row">
		  	<div class="col-md-12">
			    <img src="user/tour/img/11101_B.PNG" alt="">
			    	<hr/>
				    <div class="row">
				      <div class="col-md-12">
				      <c:forEach var="vo" items="${list }">
				      <c:if test="${vo.pno<3 }">
					    <div class="col-xs-6 col-sm-4"><img src="${vo.pic}" alt=""></div>
					  	<!-- <div class="col-xs-6 col-md-4"><img src="http://placehold.it/350x300" alt=""></div>
					  	<div class="col-xs-6 col-md-4"><img src="http://placehold.it/350x300" alt=""></div> -->
					  	</c:if>
					  </c:forEach>
					  </div>
				    </div>
		  	</div>
		</div>
	</div>
	<!-- /.container -->
	
	<!-- jQuery -->
    <script src="user/main/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="user/main/js/bootstrap.min.js"></script>
</body>
</html>