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
    
   <title>나의 예약list 확인</title>

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
    
    @media (min-width: 1200px){
	.container{
    width: 90%;
    margin-right:100px;
	}
	}
	
@media (min-width: 992px){
.container {
    width: 800px;
    margin-left: 30px;
}
}



   .list-item {
     width: 250px;
   }
   .demo-card-square.mdl-card {
     width: 250px;
     height: 400px;
     margin-top:110px;
     margin-left:50px;
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
   <!-- product imformation -->
    <div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect">
	  <div class="mdl-tabs__tab-bar">
	    <a href="#about-panel" class="mdl-tabs__tab is-active">나의플래너</a>
	    <a href="#members-panel" class="mdl-tabs__tab">구매관리</a>
	    <a href="#albums-panel" class="mdl-tabs__tab">찜 리스트</a>
	    <a href="#board-panel" class="mdl-tabs__tab">나의글</a>
	  </div>
	  <div class="mdl-tabs__panel is-active" id="about-panel" style="margin-top:10px"> 
	     
	     <!-- Page Content -->
         <div class="container" style="margin-top:10px; width=90%" >
      		
	         	<div class="row" style="margin-top:50px; margin-bottom:10px">
	              <div class="col-xs-6 col-sm-4"><img width="99%"  src="http://placehold.it/350x300" alt=""></div>
	              <div class="col-xs-6 col-sm-4" style="margin-bottom:10px"><img width="99%"  src="http://placehold.it/350x300" alt=""></div>
	              <div class="col-xs-6 col-sm-4"><img width="99%" src="http://placehold.it/350x300" alt=""></div>
	         	</div>
         
	         	 <div class="row" style="margin-bottom:10px">
	             <div class="col-xs-6 col-sm-4" style="margin-bottom:10px"><img width="99%" src="http://placehold.it/350x300" alt=""></div>
	             <div class="col-xs-6 col-sm-4" style="margin-bottom:10px"><img width="99%" src="http://placehold.it/350x300" alt=""></div>
	             <div class="col-xs-6 col-sm-4"><img width="99%" src="http://placehold.it/350x300" alt=""></div>
         		</div>
         </div>
           
           
      </div>
	  
	  <div class="mdl-tabs__panel" id="members-panel" style="margin-top:10px">
	  <div class="content container" style="margin-top:50px;"> 
    	<table class="mdl-data-table mdl-js-data-table mdl-data-table--selectable mdl-shadow--2dp" align="center">
		  <thead>
		    <tr>
		      <th class="mdl-data-table__cell--non-numeric">상품명</th>
		      <th>예약 인원</th>
		      <th>예약 날짜</th>
		      <th>결제날짜</th>
		      <th>가격</th>
		      <th class="mdl-data-table__cell--non-numeric">예약상태</th>	
		    </tr>
		  </thead>
			<c:if test="${buyCount==0}">
		         <tr>
		    	 	<td colspan="6" class="mdl-data-table__cell--non-numeric">투어상품 구매내역이 존재하지 않습니다.</td>
		    	 </tr>
		    </c:if>	
		  <tbody>
		    <c:forEach var="vo" items="${list }">
		         <tr>
			       <%-- <td class="tdcenter">${vo.buyno }</td>
			       <td class="tdcenter">${vo.pno }</td> --%>
			       <td class="mdl-data-table__cell--non-numeric"><a href="detail.do?pno=${vo.pno }">${vo.pname}</a></td>
			       <td >${vo.amount }</td>
			       <td >${vo.rdate }</td>
			       <td ><fmt:formatDate value="${vo.orderdate }" pattern="yyyy-M-d"/></td>
			       <td >${vo.price }</td>
			       <td class="mdl-data-table__cell--non-numeric">${vo.status==0?"예약대기":"예약완료" }</td>
			     </tr>
		     	 </c:forEach>
		  </tbody>
		</table>
  </div>
  </div>
	  
	<div class="mdl-tabs__panel" id="albums-panel" style="margin-top:10px">
	<div class="content container" style="margin-top:50px;" >  	
		<table class="mdl-data-table mdl-js-data-table mdl-data-table--selectable mdl-shadow--2dp" align="center">
		  <thead>
		    <tr>
		      <!-- <th class="mdl-data-table__cell--non-numeric">Material</th> -->
		      <th class="mdl-data-table__cell--non-numeric">상품명</th>
		      <th class="mdl-data-table__cell--non-numeric">여행 나라명</th>
		    </tr>
		  </thead>
			<c:if test="${myCount==0}">
		         <tr>
		    	 	<td colspan="2" class="mdl-data-table__cell--non-numeric">투어상품 찜 내역이 존재하지 않습니다.</td>
		    	 </tr>
		    </c:if>		  
		  <tbody>
		    <c:forEach var="vo" items="${list2 }">
		    <tr>
		      <!-- <td class="mdl-data-table__cell--non-numeric">Acrylic (Transparent)</td> -->
		      <td class="mdl-data-table__cell--non-numeric"><a href="detail.do?pno=${vo.pno }">${vo.apname}</a></td>
		      <td class="mdl-data-table__cell--non-numeric">${vo.category }</td>
		    </tr>
		    </c:forEach>
			</tbody>
	</table>
	</div>	
	</div>
	
	 <div class="mdl-tabs__panel" id="board-panel" style="margin-top:10px">

		나의글
	  </div>
	 </div> 

	</div>
	</div>
    <!-- jQuery -->
    <script src="user/main/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="user/main/js/bootstrap.min.js"></script>
</body>
</html>