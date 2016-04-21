<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
	<head>	
    <meta charset="EUC-KR" />
	<meta http-equiv="X-UA-Compatible" content="IE=Edge" />	
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>플라밍고</title>
	<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
	
	<link rel="stylesheet" href="basicstyle.css" />
	<script type="text/javascript" src="js/prefixfree.min.js"></script>
	<!--mdlfont -->
	<link rel="stylesheet"
		  href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<!-- mdl js-->
	<script defer src="https://code.getmdl.io/1.1.3/material.min.js"></script>
	<script type="text/javascript" src="js/prefixfree.min.js"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
	<!--mdl css-->
	<link rel="stylesheet"
		  href="https://code.getmdl.io/1.1.3/material.indigo-pink.min.css">
    
    
    
    <script type="text/javascript">
    
    
    
    
         $(function(){
        	 $('#logBtn').click(function(){
        		 var id=$('#id').val();
        		 if(id.trim()=="")
        		 {
        			 $('#id').focus();
        			 return;
        		 }
        		 var pwd=$('#pwd').val();
        		 if(pwd.trim()=="")
        		 {
        		     $('#pwd').focus();
        		     return;
        		 }
        		 $('#logForm').submit();
        	 });
        	 $('#logoutBtn').click(function(){
        		$('#logoutForm').submit(); 
        	 });
         });
        </script>
    </head>
    <body>
    
    
    	<header>
			<a href="#"><h1>logo</h1></a>
			<ul id="gnb">
				<div>
				<li><a href="plannerMain.do">Planner</a></li>
				<li><a href="recomm.do">플라밍Go's<br>recomm</a></li>
				<li><a href="tour.do">Tour</a></li>
				<li><a href="squrePage.do">Open space</a></li>
				<c:if test="${sessionScope.admin==1 }">
					<li><a href="contact.html">Reserve</a></li>
				</c:if>
			</ul>

			<div class="snsSet">
				<a href="#"><img src="user/main/img/sns1.png" alt="about" /></a>
				<a href="#"><img src="user/main/img/sns2.png" alt="contact" /></a>
				<a href="#"><img src="user/main/img/sns3.png" alt="facebook" /></a>
				<a href="#"><img src="user/main/img/sns4.png" alt="twitter" /></a>
				<a href="#"><img src="user/main/img/sns5.png" alt="etc" /></a>
			</div>
		</header>
	
	<nav>
		<div id="navi">
				 <c:if test="${sessionScope.id==null }">
				  <form method="post" action="login.do" id="logForm">
				   ID:<input type=text name=id size=12 id="id">
                   &nbsp;
                   Password:<input type=password name=pwd size=10 id="pwd">
                   <input type=button value="로그인" id="logBtn">
                   <input type=button value="회원가입" id="joinBtn">
                  </form>
                 </c:if>	
                 <c:if test="${sessionScope.id!=null }">
                  <form method="post" action="logout.do" id="logoutForm">
          
				   ${sessionScope.id }(${sessionScope.admin==0?"일반":"관리자" })님 환영합니다!!&nbsp;
                   <input type=button value="로그아웃" id="logoutBtn">
                  </form>
                 </c:if>			 
				</div>
	</nav>
	<section>
		<jsp:include page="${jsp }"></jsp:include>
		<!-- <article>			
			<div class="bg bg1">		
				<span>Maldives</span>
			</div>			
		</article>
		
		<article>		
			<div class="txt">
				<i class="fa fa-arrow-right"></i>
				<p>
					<strong>A Whole New World</strong><br />
					<em>I can show you the world. Shining Shimmering Splended.<br />
					Tell me when you decide let me be in your heart.</em>
				</p>
			</div>	
		</article>
		
		<article>			
			<div class="txt">	
				<i class="fa fa-spin fa-refresh"></i>
				<p><strong>Reservation</strong></p>
			</div>	
		</article>
		
		<article>
			<div class="bg bg2">
				<span>Suite</span>
			</div>	
		</article>
		
		<article>
			<div class="bg bg3">
				<span>Surf</span>
			</div>	
		</article>
		
		<article>	
			<div class="txt">	
				<i class="fa fa-arrow-right"></i>
				<p>
					<strong>A Dazzling Place</strong><br />
					<em>I can show you the world. Shining Shimmering Splended.<br />
					Tell me when you decide .</em>
				</p>
			</div>	
		</article>
		
		<article>
			<div class="bg bg4">
				<span>Sauna</span>
			</div>
		</article>
		
		<article>	
			<div class="txt">	
				<i class="fa fa-arrow-right"></i>
				<strong>Hot spot</strong><br />
				<em>a best place to have a vacation <br />
				Tell me when you</em>
			</div>	
		</article>
		
		<article>		
			<div class="bg bg5">
				<span>Diner</span>
			</div>
		</article>
		
		<article>	
			<div class="bg bg6">
				<span>Spa</span>
			</div>	
		</article>
		
		<article>
			<div class="txt">	
				<i class="fa fa-arrow-right"></i>
				<p>
					<strong>Open Space</strong><br />
					<em>I Can show you the world</em>
				</p>
			</div>	
		</article>
		
		<article>	
			<div class="bg bg7">
				<span>Tour</span>
			</div>		
		</article> -->
		
	</section>
			

    </body>
</html>
