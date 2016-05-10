<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    
   <title>투어상품 상세보기</title>

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
    
	<style>
	.list-item {
	  width: 250px;
	}
	.demo-card-square.mdl-card {
	  width: 250px;
	  height: 400px;
	}
	.demo-card-square > .mdl-card__title {
	  color: #fff;
	  background:
	    bottom right 15% no-repeat #46B6AC;
	}
	.demo-card-square > .mdl-card__img {
	}
	</style>
</head>
<body>
	<div class="container" style="margin-top:10px; margin-left:100px" >
	<div class="row">
	<div class="col-md-3">
		          <!-- Square card -->
		          <div class="demo-card-square mdl-card mdl-shadow--2dp">
		            <div class="mdl-card__img mdl-card--expand">
		               <img src=user/my/img/profile.jpg width=250 height="220">
		            </div>
		            <div class="mdl-card__supporting-text">
		                &nbsp;&nbsp;&nbsp;ID : ${id}<br>
		                            이름 : ${name}<br>
				                  성별 : ${sex}<br>
				                  나이 : ${birth}세<br>
		            </div>
		            <div class="mdl-card__actions mdl-card--border">
		              <a href="myinfo_update.do?id=${id }&page=${page}" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
		                  	 내정보 수정하기
		              </a>
		            </div>
		          </div>
	</div>
	<div class="col-md-9">
		 <div class="panel panel-default">
		  <!-- Default panel contents -->
		  <div class="panel-heading">투어상품 회원 예약 리스트</div>
		 </div>
		 <table class="mdl-data-table mdl-js-data-table mdl-data-table--selectable mdl-shadow--2dp" align="center">
		  <thead>
		    <tr>
		     <th class="mdl-data-table__cell--non-numeric">구매자ID</th>
	         <th class="mdl-data-table__cell--non-numeric">상품명</th>
	         <th>예약인원</th>
	         <th>예약날짜</th>
	         <th>결제날짜</th>
	         <th>가격</th>
	         <th class="mdl-data-table__cell--non-numeric">예약상태</th>
		    </tr>
		  </thead>
			
		  <tbody>
		    <c:forEach var="vo" items="${list }">
	         <tr>
		       <td class="mdl-data-table__cell--non-numeric">${vo.id }</td>
		       <td class="mdl-data-table__cell--non-numeric">${vo.pname }</td>
		       <td class="tdcenter">${vo.amount }</td>
		       <td class="tdcenter"><fmt:formatDate value="${vo.orderdate }" pattern="yyyy-M-d"/></td>
		       <td class="tdcenter"><fmt:formatDate value="${vo.orderdate }" pattern="yyyy-M-d"/></td>
		       <td class="tdcenter" >${vo.price }</td>
		       <td class="mdl-data-table__cell--non-numeric"><a href="admin_ok.do?buyno=${vo.buyno }">${vo.status==0?"예약대기":"예약 승인완료" }</a></td>
		     </tr>
	     	</c:forEach>
		  </tbody>
		</table>
	 </div>
	 </div>
	</div>
	<!-- jQuery -->
    <script src="user/main/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="user/main/js/bootstrap.min.js"></script>
</body>
</html>