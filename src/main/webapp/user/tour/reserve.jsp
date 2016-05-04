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
    
	<title>Insert title here</title>
	
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
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript" src="ajax.js"></script>
<script type="text/javascript">
$(function(){
	sendMessage("POST","tour_date.do", null, tourCallback); 
});
function tourCallback()
{
	if(httpRequest.readyState==4)
	{
		if(httpRequest.status==200)
		{
			//alert(httpRequest.responseText);
			$('#date').html(httpRequest.responseText);
		}
	}
}
</script>
<body>
	<!-- Page Content -->
    <div class="container" style="margin-top:50px">
    	
    	<div class="row" style="margin-top:15px">
    		<div class="col-md-12">
    			  <h3><img src="user/tour/img/reserve.png" border=0></h3>
    			<hr>
    		</div>
    	
    	
    	<div class="row" style="margin-top:15px">
    		<!-- <form method="post" action="tour_date.do" id="frm1"> -->
    		<div class="col-md-5">
    			<table>
    			 <tr>
    			  <td id="pn" colspan="2">${vo.pname}</td>
    			 </tr>
    			 <tr>
    			  <td id="date" height=250 colspan="2">예약날짜</td>
    			 </tr>
    			 <tr>
    			  <td colspan="2">예약금(1인당)</td>
    			 </tr>
    			 <tr>
    			  <td id=price>${vo.price }</td>
    			  <td id="inwon"> </td>
    			 </tr>
    			</table>
    		</div>
    		<div class="col-md-3">
    			<table>
    			 <tr>
    			  <td id="pn">상품명:${vo.pname}</td>
    			 </tr>
    			 <tr>
    			  <td id="span_date">예약날짜:</td>
    			 </tr>
    			 <tr>
    			  <td id="span_inwon">예약인원:</td>
    			 </tr>
    			 <tr>
    			  <td id="span_price"> </td> <!-- ${vo.price} -->
    			 </tr>
    			</table>
    			<form method="post" action="reserve_ok.do" id="res_frm">
					<input type="hidden" name="pno" id="pno" value="${vo.pno}">
					<input type="hidden" name="category" id="category" value="${vo.category}">
					<input type="hidden" name="pname" id="pname" value="${vo.pname}">
					<input type="hidden" name="date" id="date_jsp">
					<input type="hidden" name="inwon" id="inwon_jsp">
					<input type="hidden" name="price" id="price_jsp">
					<!-- <button class="mdl-button mdl-js-button mdl-button--raised" id="btn1">예약하기</button> -->
					<img src="user/tour/img/res_d.png" border=0 id="resImg">
				</form>
    		</div>
    	</div>
    	
    	</div>
    </div>
		
</body>
</html>