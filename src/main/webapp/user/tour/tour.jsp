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
	<!-- <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR"> -->
	
	<title>투어 상품 - 플라밍고</title>

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
<script type="text/javascript">
$(function(){
	$('#btn1').click(function(){
		$('#frm1').submit();
	});
});
$(function(){
	$('#btn2').click(function(){
		$('#frm2').submit();
	});
});
$(function(){
	$('#btn3').click(function(){
		$('#frm3').submit();
	});
});
$(function(){
	$('#btn4').click(function(){
		$('#frm4').submit();
	});
});
$(function(){
	$('#btn5').click(function(){
		$('#frm5').submit();
	});
});
$(function(){
	$('#btn6').click(function(){
		$('#frm6').submit();
	});
});
</script>  
</head>
<body>
	<!-- Page Content -->
    <div class="container" style="margin-top:50px">
    
	<form method="post" action="ctour.do" id="frm1">
	<img src="user/tour/img/france.gif"> 프랑스 
	<input type="hidden" name="category" id="category" value="프랑스">
	<button class="mdl-button mdl-js-button mdl-button--raised" id="btn1">더보기</button>
	</form>
	
       <div class="row" style="margin-top:15px">
	       <c:forEach var="vo" items="${list }">
		       <c:if test="${(vo.pno>0 && vo.pno<5)}">
		       	<div class="col-sm-3 col-xs-6" style="margin-bottom:10px">
		       	 <a href="detail.do?pno=${vo.pno }"><img width="95%" src="${vo.pic }"></a>
		       	</div>
		       </c:if>
	       </c:forEach>
	   </div>
	<hr/>
	
	<form method="post" action="ctour.do" id="frm2">
	<img src="user/tour/img/czech.gif"> 체코
	<input type="hidden" name="category" id="category" value="체코">
	<button class="mdl-button mdl-js-button mdl-button--raised" id="btn2">더보기</button>
	</form>
	
       <div class="row" style="margin-top:15px">
	       <c:forEach var="vo" items="${list }">
		       <c:if test="${(vo.pno>10 && vo.pno<15)}">
		       	<div class="col-sm-3 col-xs-6" style="margin-bottom:10px">
		       	 <a href="detail.do?pno=${vo.pno }"><img width="95%" src="${vo.pic }"></a>
		       	</div>
		       </c:if>
	       </c:forEach>
	</div>
	<hr/>
	
	
	<form method="post" action="ctour.do" id="frm3">
	<img src="user/tour/img/spain.gif"> 스페인
	<input type="hidden" name="category" id="category" value="스페인">
	<button class="mdl-button mdl-js-button mdl-button--raised" id="btn3">더보기</button>
	</form>
	
       <div class="row" style="margin-top:15px">
	       <c:forEach var="vo" items="${list }">
		       <c:if test="${(vo.pno>20 && vo.pno<25)}">
		       	<div class="col-sm-3 col-xs-6" style="margin-bottom:10px">
		       	 <a href="detail.do?pno=${vo.pno }"><img width="95%" src="${vo.pic }"></a>
		       	</div>
		       </c:if>
	       </c:forEach>
	</div>
	<hr/>
	
	<form method="post" action="ctour.do" id="frm4">
	<img src="user/tour/img/sw.gif"> 스위스
	<input type="hidden" name="category" id="category" value="스위스">
	<button class="mdl-button mdl-js-button mdl-button--raised" id="btn4">더보기</button>
	</form>
	
       <div class="row" style="margin-top:15px">
	       <c:forEach var="vo" items="${list }">
		       <c:if test="${(vo.pno>30 && vo.pno<35)}">
		       	<div class="col-sm-3 col-xs-6" style="margin-bottom:10px">
		       	 <a href="detail.do?pno=${vo.pno }"><img width="95%" src="${vo.pic }"></a>
		       	</div>
		       </c:if>
	       </c:forEach>
	</div>
	<hr/>

	<form method="post" action="ctour.do" id="frm5">
	<img src="user/tour/img/italy.gif"> 이탈리아
	<input type="hidden" name="category" id="category" value="이탈리아">
	<button class="mdl-button mdl-js-button mdl-button--raised" id="btn5">더보기</button>
	</form>
	
       <div class="row" style="margin-top:15px">
	       <c:forEach var="vo" items="${list }">
		       <c:if test="${(vo.pno>40 && vo.pno<45)}">
		       	<div class="col-sm-3 col-xs-6" style="margin-bottom:10px">
		       	 <a href="detail.do?pno=${vo.pno }"><img width="95%" src="${vo.pic }"></a>
		       	</div>
		       </c:if>
	       </c:forEach>
	</div>
	<hr/>

	<form method="post" action="ctour.do" id="frm6">
	<img src="user/tour/img/uk.gif"> 영국
	<input type="hidden" name="category" id="category" value="영국">
	<button class="mdl-button mdl-js-button mdl-button--raised" id="btn6">더보기</button>
	</form>
	
       <div class="row" style="margin-top:15px">
	       <c:forEach var="vo" items="${list }">
		       <c:if test="${(vo.pno>50 && vo.pno<55)}">
		       	<div class="col-sm-3 col-xs-6" style="margin-bottom:10px">
		       	 <a href="detail.do?pno=${vo.pno }"><img width="95%" src="${vo.pic }"></a>
		       	</div>
		       </c:if>
	       </c:forEach>
	</div>
	<hr/>
	
    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="user/main/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="user/main/js/bootstrap.min.js"></script>
    
</body>
</html>